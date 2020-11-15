<%@page import="java.sql.ResultSet"%>
<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.DBUtill" %> <!-- userdao의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int flagid = 0; // 이름 중복여부
	int flagname = 0; // 닉네임 중복여부

	PreparedStatement pstmt = null;	
	ResultSet rs = null;
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String nickname = request.getParameter("nickname");
	
	Connection conn = DBUtill.DBDAO(); //DB연결
	
	pstmt = conn.prepareStatement("select * from member");
	
	rs = pstmt.executeQuery();
	
	while(rs.next()){
		if(id.equals(rs.getString("id"))){
			flagid = 1; // flag가 1로되면 가입불가
			%>
			<script>
			alert("아이디가 중복되었습니다.");
			location.href = 'signUpForm.jsp';
			</script>
			<%
			break;
		}
		if(nickname.equals(rs.getString("nickname"))){
			flagname = 1; // 닉네임 중복
			%>
			<script>
			alert("닉네임이 중복되었습니다.");
			location.href = 'signUpForm.jsp';
			</script>
			<%
			break;
		}
	}
	
	if(flagid == 0 && flagname == 0){
		String sql = "insert into member(id, password, nickname) values(?, ?, ?)";
		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, id);
		pstmt.setString(2, password);
		pstmt.setString(3, nickname);
		pstmt.executeUpdate();
		
		DBUtill.close(pstmt);
		DBUtill.close(conn);
		%>
		<script>
		alert("회원가입에 성공하셨습니다.");
		location.href = 'index.jsp';
		</script>
		<%
	}
%>
</body>
</html>