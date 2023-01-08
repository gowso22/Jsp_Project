package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import dto.MemberDTO;
import util.DBConnection;

public class MemberDAO {
	
	private static MemberDAO instance;
	
	
	public static MemberDAO getInstance() {
		if (instance == null)
			instance = new MemberDAO();
		return instance;
	}	
	

	
	// 회원 중복 확인 메서드
	public int idChecked(String id) {

		String sql = "select pwd from member where id = ?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				return 0; // 아이디가 이미 존재합니다.
			}
			return 1; // 사용가능한 아이디입니다.
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 자원 해제 반납
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return -1; // db 오류
	}

	
	

	// 로그인 메서드
	public int login(String id, String pwd) {

			String sql = "select pwd from member where id = ?";

			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				conn = DBConnection.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);

				rs = pstmt.executeQuery();

				if (rs.next()) {
					if (rs.getString(1).equals(pwd)) { // 비밀번호가 일치하면
						return 1; // 로그인 성공
					} else {
						return 0; // 비밀번호 불일치
					}
				}
				return -1; // 아이디 없음
			} catch (Exception e) {
				e.printStackTrace();
			} finally { // 자원 해제 반납
				if (rs != null)
					try {
						rs.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				if (pstmt != null)
					try {
						pstmt.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				if (conn != null)
					try {
						conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
			}
			return -2; // db 오류
		}

		// 회원가입 메서드
		public void join(MemberDTO member) {

			Connection conn = null;
			PreparedStatement pstmt = null;
		

			try {
			
				String sql = "insert into member values(?, ?, ?, ?, ?, ?, ?);";
				
				conn = DBConnection.getConnection();
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, member.getId());
				pstmt.setString(2, member.getPwd());
				pstmt.setString(3, member.getName());
				pstmt.setString(4, member.getGender());
				
				pstmt.setString(5, member.getEmail1());
				pstmt.setString(6, member.getEmail2());
				
				pstmt.setString(7, member.getPhone());

				pstmt.executeUpdate(); 

			} catch (Exception e) {
				e.printStackTrace();
			} finally { // 자원 해제 반납
				
				if (pstmt != null)
					try {
						pstmt.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				if (conn != null)
					try {
						conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
			}
		}

		
		// 회원정보 수정 메서드
				public void update(MemberDTO member) {

					Connection conn = null;
					PreparedStatement pstmt = null;
				

					try {
					
						String sql = "update member set pwd = ? , name = ? , gender = ? , email1 = ? , email2 = ? , phone = ? where id = ? ";
						
						conn = DBConnection.getConnection();
						pstmt = conn.prepareStatement(sql);
						
						
						pstmt.setString(1, member.getPwd());
						pstmt.setString(2, member.getName());
						pstmt.setString(3, member.getGender());
						pstmt.setString(4, member.getEmail1());
						pstmt.setString(5, member.getEmail2());
						pstmt.setString(6, member.getPhone());
						pstmt.setString(7, member.getId());

						pstmt.executeUpdate(); 

					} catch (Exception e) {
						e.printStackTrace();
					} finally { // 자원 해제 반납
						
						if (pstmt != null)
							try {
								pstmt.close();
							} catch (SQLException e) {
								e.printStackTrace();
							}
						if (conn != null)
							try {
								conn.close();
							} catch (SQLException e) {
								e.printStackTrace();
							}
					}
				}



				public void deleteMember(MemberDTO member) {
					
					String sql = "delete from member where id = ?";

					Connection conn = null;
					PreparedStatement pstmt = null;
					

					try {
						conn = DBConnection.getConnection();
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, member.getId());
						

						pstmt.executeUpdate();
						
						
						
					} catch (Exception e) {
						e.printStackTrace();
					} finally { // 자원 해제 반납
						
						if (pstmt != null)
							try {
								pstmt.close();
							} catch (SQLException e) {
								e.printStackTrace();
							}
						if (conn != null)
							try {
								conn.close();
							} catch (SQLException e) {
								e.printStackTrace();
							}
					}
					
				}
		
	
	
}
