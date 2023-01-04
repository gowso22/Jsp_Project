package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DBConnection;
import java.util.ArrayList;

import dto.BoardDTO;

public class BoardDAO {
	
	
	private static BoardDAO instance;
	
	
	public static BoardDAO getInstance() {
		if (instance == null)
			instance = new BoardDAO();
		return instance;
	}	

	public int getNext() {
		String sql = "select bid from board order by bid desc";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // 첫번재 게시물인 경우
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //db오류
	}
	

}
