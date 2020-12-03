<%@page import="DTO.BoardDTO"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="DAO.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/defult.css" rel="stylesheet" type="text/css" media="all" />
<title>Insert title here</title>
</head>
<body class="bodyZero">
<%
Date date;
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd HH:mm");
BoardDAO boardDAO = new BoardDAO();
BoardDTO boardDTO = new BoardDTO();
String idx, title, comment, writer, datestr, hit;

idx = request.getParameter("idx");
//boardDAO.hitUpdate(idx);
//boardDTO = boardDAO.viewSelectBoard(idx);

title = request.getParameter("title");
comment = request.getParameter("comment");
writer = request.getParameter("writer");
datestr = request.getParameter("datestr");
hit = request.getParameter("hit");

String sessionId = (String)request.getAttribute("nickname"); // 현재 로그인 되어있는 아이디
%>
	<div style="width: 100%; height: auto; background-color: #F8F6F6;">
		<!-- header -->
		<jsp:include page="subheader.jsp" />

		<div style="text-align: center; margin-top: 30px;">
			<div style="width: auto; height: auto; display: inline-block; background-color: #FFFFFF; border: 1px solid black; border-radius: 10px;">
				<form action="./borderUpdate" method="post">
				<table style="width: 600px; height: 100%; text-align: left; border-collapse: collapse;">
					<tr>
						<td class="viewTd"><font size="4px">작성자 : <%=writer%></font>
						<td class="viewTd"><font size="4px">조회수 : <%=hit%></font>
						<td class="viewTd"><font size="4px">작성일 : <%=datestr%></font>
					<tr bgcolor="#000000">
						<td class="viewTd" colspan="3"><font size = "4px" color="#FFFFFF">제목 | <input type="text" name = "title" style="width: 80%"></font>
					<tr>
						<td class="viewTd" colspan="3"><font size = "4px">내용</font>
					<tr>
						<td style="padding: 30px 30px 30px 30px; height: 300px; border-bottom: 1px double black;" colspan="3" valign="top">
						<textarea rows="20" cols="80" name = "comment"></textarea>
					<tr>
						<td style="text-align: right;" colspan="3">
						
							<input type="hidden" name="idx" value="<%=idx%>">
							<input style="margin-right: 20px;" type="submit" class="btn" value="수정">
						
						<a href="FreeBorderForm.jsp"><input style="margin-right: 20px;" type="button" class="btn" value="뒤로가기"></a>
				</table>
				</form>
			</div>
		</div>

		<!-- footer -->
		<jsp:include page="footer.jsp"/>
		
	</div>
</body>
</html>