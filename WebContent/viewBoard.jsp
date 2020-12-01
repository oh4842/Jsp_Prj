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
		<jsp:include page="subheader.jsp" />

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
						<td style="padding-left: 30px; padding-top:30px; height: 300px; border-bottom: 1px double black;" colspan="3" valign="top"><%=comment%>
					<tr>
						<td style="text-align: right;" colspan="3">
						<input style="margin-right: 20px;" type="button" class="btn" value="수정">
							<form action="./deleteMyWrite" method="post">
								<input type="hidden" name="idx" value="<%=idx%>">
								<input type="hidden" name="writer" value="<%=writer%>">
								<input style="margin-right: 20px;" type="submit" class="btn" value="삭제">
							</form>
						<a href="FreeBorderForm.jsp"><input style="margin-right: 20px;" type="button" class="btn" value="뒤로가기"></a>
				</table>
			</div>
		</div>

		<!-- footer -->
		<jsp:include page="footer.jsp"/>
		
	</div>
</body>
</html>