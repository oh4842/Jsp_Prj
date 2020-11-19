package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.xdevapi.Result;

import DTO.FreeBoardDTO;

public class FreeBoardDAO {
	private static FreeBoardDTO freeBorderDTO = new FreeBoardDTO();
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Connection conn;
	
	public  FreeBoardDAO(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String dbURL = "jdbc:mysql://localhost:3306/jspprj?serverTimezone=UTC"; // localhost:3306 포트는 컴퓨터설치된 mysql주소
			/* useUnicode=true&characterEncoding=UTF-8 */
			String dbID = "root";
			String dbPassword = "1234";
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public boolean write(String id) {
		String sql = "insert into board (title, comment, id, hit) values (?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, freeBorderDTO.getTitle());
			pstmt.setString(2, freeBorderDTO.getComment());
			pstmt.setString(3, freeBorderDTO.getId());
			pstmt.setInt(4, freeBorderDTO.getHit());
			
			result = pstmt.executeUpdate();
			
			return true;
		} catch (Exception e) {
			// TODO: handle exception
		}	
		return false;
	}
	
}
