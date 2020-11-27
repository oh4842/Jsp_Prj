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
<link href="css/defult.css" rel="stylesheet" type="text/css"
	media="all" />
<title>Insert title here</title>
</head>
<body style="margin: 0">
<%
Date date;
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd HH:mm");
BoardDAO boardDAO = new BoardDAO();
BoardDTO boardDTO = new BoardDTO();
String idx, title, comment, writer, datestr, hit;

idx = request.getParameter("id");
boardDAO.hitUpdate(idx);
boardDTO = boardDAO.viewSelectBoard(idx);

title = boardDTO.getTitle();
comment = boardDTO.getComment();
writer = boardDTO.getWriter();
datestr = boardDTO.getDate();
hit = boardDTO.getHit();

String sessionId = (String)request.getAttribute("nickname"); // 현재 로그인 되어있는 아이디
%>
	<div style="width: 100%; height: auto; background-color: #F8F6F6;">
		<!-- header -->
		<div
			style="height: 300px; background-image: url('image/boardlogo.png'); background-size: cover;">
			<div style="width: 100%; height: auto;">
				<div style="float: left; margin-left: 200px; margin-top: 30px;">
					<img alt="게시판 로고" src="image/mainlogo.png"
						style="width: 100px; height: 100px;">
				</div>

				<div style="float: right; margin-right: 200px; margin-top: 50px;">
					<ul style="margin: 0; padding: 0;">
						<li
							style="float: left; list-style: none; padding: 10px 0px 0px 50px;">
							<a href="index.jsp"
							style="color: #FFFFFF; text-decoration: none;"><font
								size="4px">Home</font></a>
					</ul>
				</div>
			</div>
		</div>

		<div style="text-align: center; margin-top: 30px;">
			<div style="width: auto; height: auto; display: inline-block; background-color: #FFFFFF; border: 1px solid black; border-radius: 10px;">
				<table style="width: 600px; height: 100%; text-align: left; border-collapse: collapse;">
					<tr>
						<td class="viewTd"><font size="4px">작성자 : <%=writer%></font>
						<td class="viewTd"><font size="4px">조회수 : <%=hit%></font>
						<td class="viewTd"><font size="4px">작성일 : <%=datestr%></font>
					<tr bgcolor="#000000">
						<td class="viewTd" colspan="3"><font size = "4px" color="#FFFFFF">제목 | <%=title%></font>
					<tr>
						<td class="viewTd" colspan="3"><font size = "4px">내용</font>
					<tr>
						<td style="padding-left: 30px; padding-top:30px; height: 300px;" colspan="3" valign="top"><%=comment%>
				</table>
			</div>
		</div>

		<!-- footer -->
		<jsp:include page="footer.jsp"/>
		
	</div>
</body>
</html>