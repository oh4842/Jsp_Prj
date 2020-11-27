<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/default.css" rel="stylesheet" type="text/css"
	media="all" />
<title>Insert title here</title>
</head>
<body style="margin: 0;">
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
				<form action="./borderWrite" method="post">
					<table>
						<tr>
							<td colspan="2">게시글 작성
						<tr>
							<td>제목
							<td><input type="text" style="width: 100%;" name = "title">
						<tr>
							<td colspan="2"><textarea rows="20" cols="100%" name = "comment"></textarea>
						<tr>
							<td><input type="submit" value="글쓰기">
						<tr>
							<td><a href="index.jsp"><input type="button" value="홈으로"></a>
					</table>
				</form>
			</div>
		</div>

		<!-- footer -->
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>