package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBUtill {
	// dao : �����ͺ��̽� ���� ��ü�� ���ڷμ�
	// ���������� db���� ȸ������ �ҷ����ų� db�� ȸ������ ������
	// mysql�� ������ �ִ� �κ�
	public static Connection DBDAO() { // ������ ����ɶ����� �ڵ����� db������ �̷�� �� �� �ֵ�����
		Connection conn = null;
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
		return conn;
	}
	public static void close(Connection conn) {
		try {
			if(conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void close(Statement stmt) {
		try {
			if(stmt != null) {
				stmt.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void close(PreparedStatement pstmt) {
		try {
			if(pstmt != null) {
				pstmt.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void close(ResultSet rs) {
		try {
			if(rs != null) {
				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
