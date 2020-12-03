<%@page import="DTO.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/defult.css" rel="stylesheet" type="text/css" media="all" />
<title>메인화면</title>
</head>
<body class="bodyZero">
<%
BoardDAO bDAO = new BoardDAO();
ArrayList<BoardDTO> boardList = bDAO.viewAllMain();
%>
	<!-- 전체 -->
	<div class="mainall">
		<!-- header -->
		<div
			style="width: 100%; height: 600px; background-image: url('image/mainback.png'); background-size: 100% 800px; text-align: center;">
			<!-- mainlogo -->
			<div style="float: left; margin-left: 200px; margin-top: 50px">
				<a href="index.jsp"><img alt="메인화면 로고" src="image/mainlogo.png"
					style="width: 100px; height: 100px;"></a>
			</div>

			<!-- 메뉴바 -->
			<div
				style="float: right; width: auto; height: auto; margin-top: 70px; margin-right: 200px;">
				<ul style="margin: 0; padding: 0;">
					<li class="indexli"><a href="#"
						style="color: #FFFFFF; text-decoration: none;"><font
							size="4px">Home</font></a>
					<li class="indexli"><a href="FreeBorderForm.jsp"
						style="color: #FFFFFF; text-decoration: none;"><font
							size="4px">커뮤니티</font></a>
					<li class="indexli"><a href="#"
						style="color: #FFFFFF; text-decoration: none;"><font
							size="4px">사용방법</font></a>
				</ul>
			</div>

			<!-- 전적검색 -->
			<form action="./crwal" method="post">
				<div style="padding-top: 350px; width: auto; height: auto;'">
					<p>
						<img alt="전적검색로고입니다." src="image/serchlogo.png">
					<p>
						<input type="text"
							style="border-radius: 5px; width: 500px; height: 20px"
							name="serch"> <input type="submit" value="검색" class="btn"
							style="margin-left: 50px">
				</div>
			</form>
		</div>


		<div
			style="width: 100%; height: auto; display: inline-block; margin-top: 20px; text-align: center;">
			<div style="float: left; width: 25%;">
				<h2 style="margin-bottom: 30px;">게시판</h2>
				<table style="border-collapse: collapse; width: 90%; margin-left: 35px; border: 1px solid black;">
					<tr>
						<td class="freeTd" style="width: 20%; background-color: #F2F2F2;">번호
						<td class="freeTd" style="width: 80%; background-color: #F2F2F2;">제목
						<%
							for (int i = 0; i < boardList.size(); i++) {
							String idx = boardList.get(i).getIdx();
							String title = boardList.get(i).getTitle();
						%>
						<tr>
							<td class="freeTd"><%=idx%>
							<td class="freeTd"><a href="viewBoard.jsp?id=<%=idx%>"><%=title%></a>
						<%
 						}
 						%>
					
				</table>
			</div>
			<div style="float: left; width: 30%;">
				<h2 style="margin-bottom: 30px;">라인 관리법</h2>
				<iframe width="90%" height="315"
					src="https://www.youtube.com/embed/Zt7GfZBNFpk" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>

			<div style="float: left; width: 30%;">
				<h2 style="margin-bottom: 30px;">패치 정리</h2>
				<iframe width="90%" height="315"
					src="https://www.youtube.com/embed/inYqqPerIMw" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>

			<form action="./loginSession" method="post">
				<%
					if (session.getAttribute("id") == null) {
				%>
				<div
					style="float: right; width: 14%; text-align: left; border-radius: 10px; border: 1px solid black; height: 100%;">
					<div style="margin-left: 20px; margin-top: 10px">아이디</div>
					<div style="margin-left: 20px; margin-top: 20px">
						<input type="text" style="width: 200px;" name="loginid">
					</div>
					<div style="margin-left: 20px; margin-top: 20px">비밀번호</div>
					<div style="margin-left: 20px; margin-top: 20px">
						<input type="password" style="width: 200px;" name="loginpassword">
						<div
							style="float: left; width: 30%; margin: 0 auto; margin-top: 20px; margin-bottom: 10px;">
							<input type="submit" class="btn" value="로그인">
						</div>
						<div
							style="float: left; width: 30%; margin: 0 auto; margin-top: 20px; margin-bottom: 10px;'">
							<a href="signUpForm.jsp"><input type="button" value="회원가입" class="btn" style="margin-left: 50px"></a>
						</div>
					</div>
				</div>
				<%
					} else {
				%>
				<div
					style="float: right; width: 14%; text-align: center; border-radius: 10px; border: 1px solid black; height: 100%;">
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

		<!-- footer -->
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>