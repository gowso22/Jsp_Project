package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import util.DBConnection;
import java.util.ArrayList;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.apache.tomcat.util.descriptor.web.ContextTransaction;

import dto.NoticeDTO;

public class NoticeDAO {

	private static NoticeDAO instance;

	public static NoticeDAO getInstance() {
		if (instance == null)
			instance = new NoticeDAO();
		return instance;
	}

	// 공지사항 글 생성시 nid 생성
	public int getNext() {
		String sql = "select nid from notice order by nid desc";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // 첫번재 게시물인 경우
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
		return -1; // db오류
	}

	// 공지사항 글 생성
	public void write(String title, String userid, String content) {
		String sql = "insert into notice values (?,?,?,?,?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy/MM/dd(HH:mm:ss)");
		String regDate = formatter.format(new java.util.Date());

		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, getNext());
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			pstmt.setString(4, userid);
			pstmt.setString(5, regDate);

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

	// 공지사항 글 수정
	public void n_update(String nid, String title, String content) {
		String sql = "update notice set title = ?, content = ?, regDate = ? where nid = ?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy/MM/dd(HH:mm:ss)");
		String regDate = formatter.format(new java.util.Date());

		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, regDate);
			pstmt.setString(4, nid);

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

	// 공지사항 글 삭제
	public void n_delete(String nid) {
		String sql = "delete from notice where nid = ?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, nid);

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
