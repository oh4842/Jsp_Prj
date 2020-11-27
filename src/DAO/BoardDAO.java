package DAO;

import java.awt.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DTO.BoardDTO;
import javafx.scene.layout.Border;

public class BoardDAO {
	private static BoardDTO boardDTO = new BoardDTO();
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Connection conn;
	
	public  BoardDAO(){
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
	
	//글쓰기
	public void write(BoardDTO boardDTO) {
		String sql = "insert into border (title, comment, writer) values (?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, boardDTO.getTitle());
			pstmt.setString(2, boardDTO.getComment());
			pstmt.setString(3, boardDTO.getWriter());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	/* 게시글 전체 다 보여주기 */
	public ArrayList<BoardDTO> viewAllBoard(){
		String sql  = "select idx, title, writer, date, hit from border";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<BoardDTO> borderList = new ArrayList<BoardDTO>();
			
			while(rs.next()) {
				BoardDTO borderDTO = new BoardDTO();
				borderDTO.setIdx(rs.getString(1));
				borderDTO.setTitle(rs.getString(2));
				borderDTO.setWriter(rs.getString(3));
				borderDTO.setDate(rs.getString(4));
				borderDTO.setHit(rs.getString(5));
				borderList.add(borderDTO);
			}
			return borderList;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	/* 게시글 클릭시 내용 보여주기 */
	public BoardDTO viewSelectBoard(String idx) {
		String sql = "select title, comment, writer, date, hit from border where idx = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, idx);
			rs = pstmt.executeQuery();
			rs.next();
			
			BoardDTO boardDTO = new BoardDTO(); 
			
			boardDTO.setTitle(rs.getString(1));
			boardDTO.setComment(rs.getString(2));
			boardDTO.setWriter(rs.getString(3));
			boardDTO.setDate(rs.getString(4));
			boardDTO.setHit(rs.getString(5));
			
			return boardDTO;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	// 조회수 증가
	public void hitUpdate(String idx) {
		String sql = "update border set hit = hit + 1 where idx = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, idx);
			pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	//메인화면에 게시판 보여주는데~ 리미트어캐쓰누~~
	public ArrayList<BoardDTO> viewAllMain(){
		String sql = "select * from border";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<BoardDTO> borderList = new ArrayList<BoardDTO>();
			
			while(rs.next()) {
				BoardDTO borderDTO = new BoardDTO();
				borderDTO.setIdx(rs.getString(1));
				borderDTO.setTitle(rs.getString(2));
				borderDTO.setWriter(rs.getString(3));
				borderDTO.setDate(rs.getString(4));
				borderDTO.setHit(rs.getString(5));
				borderList.add(borderDTO);
			}
			return borderList;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
}
