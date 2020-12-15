<%@page import="DTO.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="DAO.BoardDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/defult.css" rel="stylesheet" type="text/css" media="all" />
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
		<jsp:include page="subheader.jsp" />

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
						<div>
							<div style="margin-left: 20px; float: left;">아이디</div>
							<div style="margin-left: 20px; margin-top: 20px; float: left;">
								<input type="text" style="width: 200px;" name="loginid">
							</div>
							<div style="margin-left: 20px; margin-top: 20px; float: left;">비밀번호</div>
							<div style="margin-left: 20px; margin-top: 20px;">
								<input type="password" style="width: 200px;" name="loginpassword">
								<div
									style="float: left; width: 30%; margin: 0 auto; margin-top: 20px; margin-bottom: 10px;">
									<input type="submit" class="btn" value="로그인">
								</div>
								<div
									style="float: left; width: 30%; margin: 0 auto; margin-top: 20px; margin-bottom: 10px;'">
									<a href="signUpForm.jsp"><input type="button" class="btn" value="회원가입"
										style="margin-left: 50px"></a>
								</div>
							</div>
						</div>
						<%
							} else {
						%>
						<div style="text-align: center;">
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
					<table style="border-collapse: collapse;">
						<tr>
							<td colspan="5"
								style="border-bottom: thick double gray; padding-top: 5px; padding-bottom: 5px;">게시판
						<tr>
							<td class="freeTd" style="width: 100px;">번호
							<td class="freeTd" style="width: 500px;">제목
							<td class="freeTd" style="width: 200px;">작성자
							<td class="freeTd" style="width: 200px;">작성일
							<td class="freeTd" style="width: 100px;">조회수
							<%
								for (int i = 0; i < boardList.size(); i++) {
								String idx = boardList.get(i).getIdx();
								String title = boardList.get(i).getTitle();
								String writer = boardList.get(i).getWriter();
								String dateStr = boardList.get(i).getDate();
								String hit = boardList.get(i).getHit();
							%>
						<tr>
							<td class="freeTd"><%=idx%>
							<th class="freeTd"><a style="text-decoration: none; color: #000000" href="viewBoard.jsp?id=<%=idx%>"><%=title%></a>
							<td class="freeTd"><%=writer%>
							<td class="freeTd"><%=dateStr%>
							<td class="freeTd"><%=hit%> <%
 	}
 %>
						<tr>
							<td class="paddingTB10" colspan="5" style="text-align: right;"><a
								href="BorderWrite.jsp"><input type="button" class="btn" value="글쓰기" style="margin-right: 10px;"></a>
					</table>
				</div>
			</div>
		</div>

		<!-- footer -->
		<jsp:include page="footer.jsp" />

	</div>

</body>
</html>