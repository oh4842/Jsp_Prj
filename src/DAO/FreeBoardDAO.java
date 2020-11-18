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
	private int result = 0;
	
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
	
	public int write(String id) {
		String sql = "insert into board (idx, title, comment, id, hit, date) values (?, ?, ?, ?, 0, sysdate)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, freeBorderDTO.getIdx());
			pstmt.setString(2, freeBorderDTO.getTitle());
			pstmt.setString(3, freeBorderDTO.getComment());
			pstmt.setString(4, freeBorderDTO.getId());
			pstmt.setInt(5, freeBorderDTO.getHit());
			
			result = pstmt.executeUpdate();
			
			return result;
		} catch (Exception e) {
			// TODO: handle exception
		}	
		return result;
	}
	
}
