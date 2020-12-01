<%@page import="DTO.SerchComDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.SerchComDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="user.crawling"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/defult.css" rel="stylesheet" type="text/css" media="all" />
<meta charset="UTF-8">
<title>전적검색</title>
</head>
<body class="bodyZero">
	<!-- 전체 -->
	<div style="width: 100%; height: auto; background-color: #F8F6F6;">
		<!-- header -->
		<jsp:include page="subheader.jsp"/>

		<%
		String tierrank, points, wins, losses, winratio, name, ranking, profileIcon;

		tierrank = (String) request.getAttribute("tierrank"); // 티어
		points = (String) request.getAttribute("points"); // 티어 포인트
		wins = (String) request.getAttribute("wins"); // 승리 수
		losses = (String) request.getAttribute("losses"); // 패배 수
		winratio = (String) request.getAttribute("winratio"); // 승률
		name = (String) request.getAttribute("name"); // 소환사명
		ranking = (String) request.getAttribute("ranking"); // 래더 랭킹
		profileIcon = (String) request.getAttribute("profileIcon"); // 렙
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
		
		SerchComDAO serchDAO = new SerchComDAO();
		ArrayList<SerchComDTO> serchList = serchDAO.viewserchForm(name);
		%>

		<!-- body -->
		<div
			style="margin-top: 30px; margin-left: 200px; margin-right: 200px;">
			<!-- 티어 및 정보표시 -->
			<div
				style="border: 2px solid black; border-radius: 10px; height: 200px; background-color: #E0F8F7;">
				<!-- 소환사아이콘 -->
				<div
					style="float: left; width: 100px; height: 100px; text-align: center;">
					<p>
						<img alt="전적정보 소환사 아이콘" src="image/UserLogo.png" width="150px" height="130px">
					<p>
						<font style="margin-left: 40px" size="4px" face="맑은고딕"><strong><%=profileIcon%></strong></font>
				</div>

				<div style="float: left; margin-left: 70px; text-align: left;">
					<div class="paddingTB10">
						<font size="4px" face="맑은고딕"><strong><%=name%></strong></font>
					</div>
					<div class="paddingTB10">
						<font size="4px" face="맑은고딕"><strong>래더 랭킹 <%=ranking%>위</strong></font>
					</div>
					<div class="paddingTB10">
						<font size="4px" face="맑은고딕"><strong>티어 <%=tierrank%> | <%=points%></strong></font>
					</div>
					<div class="paddingTB10">
						<font size="4px" face="맑은고딕"><strong>승리 <%=wins%> / 패배 <%=losses%> / 승률 <%=winratio%></strong></font>
					</div>
				</div>
			</div>

			<div
				style="text-align: center; border: 1px solid black; height: auto; width: 100%; margin-top: 30px; background-color: #FFFFFF;">
				<form action="./serchComWrite" method="post">
					
					<table style="width: 100%; border-collapse: collapse;">
						<tr>
							<td colspan="4" style="border-bottom: thick double gray; padding-top: 10px; padding-bottom: 10px;">유저평가	
						<tr>
							<td class="freeTd" style="width: 10%;">
							<td class="freeTd" style="width: 60%;">내용
							<td class="freeTd" style="width: 10%;">작성자
							<td class="freeTd" style="width: 20%;">작성일
							<%
								for (int i = 0; i < serchList.size(); i++) {
								String idx = serchList.get(i).getIdx();
								String comment = serchList.get(i).getComment();
								String writer = serchList.get(i).getWriter();
								String datestr = serchList.get(i).getDate();
							%>
						<tr>
							<td class="freeTd"><font size="5px">└</font>
							<td class="freeTd"><%=comment %>
							<td class="freeTd"><%=writer %>
							<td class="freeTd"><%=datestr %>
							<%
								}
							%>
							<input type="hidden" name="username" value="<%=name%>">
							<input type="hidden" name = "tierrank" value="<%=tierrank%>">
							<input type="hidden" name = "name" value="<%=name%>">
							<input type="hidden" name = "points" value="<%=points%>">
							<input type="hidden" name = "wins" value="<%=wins%>">
							<input type="hidden" name = "losses" value="<%=losses%>">
							<input type="hidden" name = "winratio" value="<%=winratio%>">
							<input type="hidden" name = "profileIcon" value="<%=profileIcon%>">
						<tr>
							<td style="width: 80%; padding-top: 5px; padding-bottom: 5px;" colspan="3"><input type="text"
								style="width: 90%;" name="SerchComment">
							<td style="width: 20%; padding-top: 5px; padding-bottom: 5px;"><input type="submit" value="댓글 작성">
					</table>
				</form>
			</div>
		</div>

		<!-- footer -->
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>