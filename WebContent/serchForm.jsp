<%@page import="user.crawling"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전적검색</title>
</head>
<body style="margin: 0">
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
		
		<%
		String tierrank, points, wins, losses, winratio, name, ranking, profileIcon;
		
		tierrank = (String)request.getAttribute("tierrank"); // 티어
		points = (String)request.getAttribute("points"); // 티어 포인트
		wins = (String)request.getAttribute("wins"); // 승리 수
		losses = (String)request.getAttribute("losses"); // 패배 수
		winratio = (String)request.getAttribute("winratio"); // 승률
		name = (String)request.getAttribute("name"); // 소환사명
		ranking = (String)request.getAttribute("ranking"); // 래더 랭킹
		profileIcon = (String)request.getAttribute("profileIcon"); // 렙
		%>
		
		<!-- body -->
		<div style="margin-top: 30px; margin-left: 200px; margin-right: 200px;">
			<!-- 티어 및 정보표시 -->
			<div style="border: 1px solid black; border: 1px solid black; height: 200px;">
				<!-- 소환사아이콘 -->
				<div style="float: left; width: 100px; height: 100px; text-align: center;">
					<p>
					<img alt="전적정보 소환사 아이콘" src="image/signlogo.png">
					<p>
					<%=profileIcon %>
				</div>
			
				<div style="float: left; margin-left: 60px; text-align: left;">
					<div>
						<font size = "4px"><%=name %> </font>
					</div>
					<div>
						<font size = "4px">래더 랭킹 <%=ranking %>위</font>
					</div>
					<div>
						<font size = "4px">티어 <%=tierrank %> | <%=points %></font>
					</div>
					<div>
						<font size = "4px">승리 <%=wins %> / 패배 <%=losses %> / 승률 <%=winratio %></font>
					</div>
				</div>
			</div>
			
			<div style="text-align: center; border: 1px solid black; height: auto; width: 100%; margin-top: 30px;">
				<table style="width: 100%">
						<tr>
							<td colspan="3" style="border-bottom: thick double gray;">유저평가
						<tr>
							<td style="width: 10%;">번호
							<td style="width: 70%;">제목
							<td style="width: 20%;">작성자
					</table>
			</div>
		</div>
	</div>
</body>
</html>