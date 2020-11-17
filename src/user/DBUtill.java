package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import DTO.Member;

public class DBUtill {
	// dao : 데이터베이스 접근 객체의 약자로서
	// 실질적으로 db에서 회원정보 불러오거나 db에 회원정보 넣을때
	// mysql에 접속해 주는 부분
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Connection conn;

	public DBUtill() {
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

	public static Connection DBDAO() { // 생성자 실행될때마다 자동으로 db연결이 이루어 질 수 있도록함
		Connection conn = null;
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
		return conn;
	}

	public boolean login(String id, String pw) {
		String sql = "select password from member where id = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(pw))
					return true;
				else
					return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	// 유저 정보를 가져오는 함수
	public Member userdata(String id) {

		String sql = "select id, nickname from member where id = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();
			Member userinfo = new Member();

			userinfo.setId(id);
			userinfo.setNickname(rs.getString(2));

			return userinfo;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	/*---------------------------------------------------------------*/
	public static void close(Connection conn) {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void close(Statement stmt) {
		try {
			if (stmt != null) {
				stmt.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void close(PreparedStatement pstmt) {
		try {
			if (pstmt != null) {
				pstmt.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void close(ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
