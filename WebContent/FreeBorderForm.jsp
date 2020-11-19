<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유 게시판</title>
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

		<!-- body -->
		<div style="text-align: center; margin-top: 30px; padding-bottom: 30px;">
			<div style="display: inline-block;">
				<!-- 로그인정보 -->
				<div style= "float: left; height: 500px; width: 250px; border-radius: 5px; border: 1px solid black; background-color: #FFFFFF;">
					<div>
						<p style="text-align: left; margin-left: 20px;"> 아이디
						<p style="text-align: left; margin-left: 20px;"> <input type="text" placeholder="아이디를 입력하세요." style="width: 200px;">
						<p style="text-align: left; margin-left: 20px;"> 비밀번호
						<p style="text-align: left; margin-left: 20px;"> <input type="password" placeholder="비밀번호를 입력하세요." style="width: 200px;"> 
					</div>
				</div>
				
				<!-- 게시판 -->
				<div style="float: right; margin-left: 20px; border: 1px solid black; border-radius: 5px; background-color: #FFFFFF;">
					<table>
						<tr>
							<td colspan="5" style="border-bottom: thick double gray;">게시판
						<tr>
							<td style="width: 100px;">번호
							<td style="width: 500px;">제목
							<td style="width: 200px;">작성자
							<td style="width: 200px;">작성일
							<td style="width: 100px;">조회수
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