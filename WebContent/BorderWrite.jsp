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
<body class="bodyZero">
	<div style="width: 100%; height: auto; background-color: #F8F6F6;">
		<!-- header -->
		<jsp:include page="subheader.jsp"/>

		<div style="text-align: center; margin-top: 30px;">
			<div style="display: inline-block; border: 1px solid black; border-radius: 10px;">
				<form action="./borderWrite" method="post">
					<table style="border-collapse: collapse; width: 700px; ">
						<tr>
							<td class="viewTd" colspan="2" style="text-align: center;">게시글 작성
						<tr>
							<td class="viewTd" style="text-align: center; width: 10%;">제목
							<td class="viewTd" style="text-align: center; width: 90%;"><input type="text" style="width: 90%;" name = "title">
						<tr>
							<td class="viewTd" style="padding-right: 30px;" colspan="2"><textarea rows="20" cols="90" name = "comment"></textarea>
						<tr>
							<td colspan="2" style="text-align: right; padding-top: 10px; padding-bottom: 10px;">
							<input class="btn" type="submit" value="글쓰기" style="margin-right: 30px;">
							<a href="index.jsp"><input class="btn" type="button" value="홈으로" style="margin-right: 30px;"></a>						
					</table>
				</form>
			</div>
		</div>

		<!-- footer -->
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>