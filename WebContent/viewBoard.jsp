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
			<div style="display: inline-block;">
				<div style="background-color: #FFFFFF">
					<div>
						<div style="float: left;">
							작성자 : <%=writer %>
						</div>
						<div style="float: left;">
							작성일 : <%=datestr %>
						</div>
						<div style="float: left;">
							조회수 : <%=hit %>
						</div>
					</div>
					
					<div>
						제목 : <%=title %>
					</div>
					
					<div>
						내용 : <%=comment %>
					</div>
				</div>
			</div>
		</div>
		
		<!-- footer -->
		<div
			style="background-color: #C6EBED; height: 150px; margin-top: 100px; text-align: center;">
			<font style="line-height: 150px">Copyright ⓒ2020. 배승수. All
				rights reserved.</font>
		</div>
		
	</div>
</body>
</html>