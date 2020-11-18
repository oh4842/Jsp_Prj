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
	<div style="width: 100%; height: auto;">
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
		<div style="text-align: center;">
			<div style="display: inline-block;">
				<!-- 로그인정보 -->
				<div style= "float: left;">
					<div style="border: 1px solid black;">
						<p> 아이디
						<p> <input type="text" placeholder="아이디를 입력하세요.">
						<p> 비밀번호
						<p> <input type="password"> 
					</div>
				</div>
				<div style="float: right;"></div>
			</div>
		</div>

	</div>

</body>
</html>