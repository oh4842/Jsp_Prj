<%@page import="DTO.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="DAO.BoardDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<title>자유 게시판</title>
</head>
<body style="margin: 0">
<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
	
	BoardDAO boardDAO = new BoardDAO();
	ArrayList<BoardDTO> boardList = boardDAO.viewAllBoard();
%>
	<!-- 전체 -->
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

		<!-- body -->
		<div
			style="text-align: center; margin-top: 30px; padding-bottom: 30px;">
			<div style="display: inline-block;">
				<!-- 로그인정보 -->
				<div
					style="float: left; height: 500px; width: 250px; border-radius: 5px; border: 1px solid black; background-color: #FFFFFF; text-align: left;">

					<form action="./loginSession" method="post">
						<%
							if (session.getAttribute("id") == null) {
						%>
						<div style="border: 1px solid black;">
							<div style="margin-left: 20px; float: left;">아이디</div>
							<div style="margin-left: 20px; margin-top: 20px; float: left;">
								<input type="text" style="width: 180px;" name="loginid">
							</div>
							<div style="margin-left: 20px; margin-top: 20px; float: left;">비밀번호</div>
							<div style="margin-left: 20px; margin-top: 20px;">
								<input type="password" style="width: 180px;"
									name="loginpassword">
								<div
									style="float: left; width: 30%; margin: 0 auto; margin-top: 20px; margin-bottom: 10px;">
									<input type="submit" value="로그인">
								</div>
								<div
									style="float: left; width: 30%; margin: 0 auto; margin-top: 20px; margin-bottom: 10px;'">
									<a href="signUpForm.jsp"><input type="button" value="회원가입"
										style="margin-left: 50px"></a>
								</div>
							</div>
						</div>
						<%
							} else {
						%>
						<div
							style="border-radius: 10px; border: 1px solid black; text-align: center;">
							<div>
								<p>
								<%=session.getAttribute("nickname")%>님 반갑습니다.
								<p>
								<a href="loginout.jsp"><input type="button" value="로그아웃"></a>
							</div>
						</div>
						<%
							}
						%>

					</form>

				</div>
				
				<!-- 게시판 -->
				<div
					style="float: right; margin-left: 20px; border: 1px solid black; border-radius: 5px; background-color: #FFFFFF;">
					<table>
						<tr>
							<td colspan="5" style="border-bottom: thick double gray;">게시판
						<tr>
							<td style="width: 100px;">번호
							<td style="width: 500px;">제목
							<td style="width: 200px;">작성자
							<td style="width: 200px;">작성일
							<td style="width: 100px;">조회수
						<%
							for(int i  = 0; i < boardList.size(); i++){
								String idx = boardList.get(i).getIdx();
								String title = boardList.get(i).getTitle();
								String writer = boardList.get(i).getWriter();
								String dateStr = boardList.get(i).getDate();
								String hit = boardList.get(i).getHit();
							%>
						<tr>
							<td><%= idx %>
							<td><a href="viewBoard.jsp?id=<%= idx%>"><%= title %></a>
							<td><%= writer %>
							<td><%= dateStr %>
							<td><%= hit %>
						<%
						}
						%>
						<tr>
							<td colspan="5" style="text-align: right;">
							<a href="BorderWrite.jsp"><input type="button" value="글쓰기"></a>
					</table>
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