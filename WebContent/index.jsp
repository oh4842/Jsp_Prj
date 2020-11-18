<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/default.css" rel="stylesheet" type="text/css"
	media="all" />
<title>메인화면</title>
</head>
<body style="margin: 0">
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
					<li
						style="float: left; list-style: none; padding: 10px 0px 0px 50px;"><a
						href="#" style="color: #FFFFFF; text-decoration: none;"><font size="4px">Home</font></a>
					<li
						style="float: left; list-style: none; padding: 10px 0px 0px 50px;"><a
						href="FreeBorderForm.jsp" style="color: #FFFFFF; text-decoration: none;"><font size="4px">커뮤니티</font></a>
					<li
						style="float: left; list-style: none; padding: 10px 0px 0px 50px;"><a
						href="#" style="color: #FFFFFF; text-decoration: none;"><font size="4px">사용방법</font></a>
				</ul>
			</div>

			<!-- 전적검색 -->
			<form action="serch.jsp" method="get">
				<div style="padding-top: 350px; width: auto; height: auto;'">
					<p>
						<img alt="전적검색로고입니다." src="image/serchlogo.png">
					<p>
						<input type="text"
							style="border-radius: 5px; width: 500px; height: 20px"
							name="serch"> <input type="submit" value="검색"
							style="margin-left: 50px">
				</div>
			</form>
		</div>

		<div
			style="width: 100%; height: auto; display: inline-block; margin-top: 20px; text-align: center;">
			<div style="float: left; width: 25%;">
				<h2>게시판</h2>
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
					src="https://www.youtube.com/embed/4Sr2E3Jymnc" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>

			<form action="./loginSession" method="post">
				<%
				if(session.getAttribute("id") == null){
					%>
					<div
					style="float: right; width: 14%; text-align: left; border-radius: 10px; border: 1px solid black;">
					<div style="margin-left: 20px; margin-top: 10px">아이디</div>
					<div style="margin-left: 20px; margin-top: 20px">
						<input type="text" style="width: 170px;" name="loginid">
					</div>
					<div style="margin-left: 20px; margin-top: 20px">비밀번호</div>
					<div style="margin-left: 20px; margin-top: 20px">
						<input type="password" style="width: 170px;" name="loginpassword">
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
				}else{
					%>
					<div
					style="float: right; width: 14%; text-align: left; border-radius: 10px; border: 1px solid black;">
					<div><%=session.getAttribute("nickname")%>님 반갑습니다.</div>
					</div>
					
					<%
				}
				%>
				
			</form>
		</div>

		<div
			style="background-color: #C6EBED; height: 150px; margin-top: 100px; text-align: center;">
			<font style="line-height: 150px">Copyright ⓒ2020. 배승수. All
				rights reserved.</font>
		</div>
	</div>
</body>
</html>