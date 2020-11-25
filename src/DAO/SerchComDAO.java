package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DTO.BoardDTO;
import DTO.SerchComDTO;

public class SerchComDAO {
	
	private static SerchComDTO serchcomDTO = new SerchComDTO();
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Connection conn;
	
	public  SerchComDAO(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String dbURL = "jdbc:mysql://localhost:3306/jspprj?serverTimezone=UTC"; // localhost:3306 ��Ʈ�� ��ǻ�ͼ�ġ�� mysql�ּ�
			/* useUnicode=true&characterEncoding=UTF-8 */
			String dbID = "root";
			String dbPassword = "1234";
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public void insertserchcom(SerchComDTO serchcomDTO) {
		String sql = "insert into c_serch(user, comment) values (?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, serchcomDTO.getUser());
			pstmt.setString(2, serchcomDTO.getComment());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public ArrayList<SerchComDTO> viewserchForm(String user){
		String sql  = "select idx, comment, writer, date from c_serch where user = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user);
			rs = pstmt.executeQuery();
			rs.next();
			
			ArrayList<SerchComDTO> serchcomList = new ArrayList<SerchComDTO>();
			
			while(rs.next()) {
				SerchComDTO serchComDTO = new SerchComDTO();
				serchComDTO.setIdx(rs.getString(1));
				serchComDTO.setComment(rs.getString(2));
				serchComDTO.setWriter(rs.getString(3));
				serchComDTO.setDate(rs.getString(4));
				serchcomList.add(serchComDTO);
			}
			return serchcomList;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
}
