<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>
<body style="margin: 0;">
	<form action="signUpDB.jsp" method="post">
		<div
			style="background-color: #F8F6F6; width: 100%; height: 1000px; text-align: center;">
			<div
				style="display: inline-block; background-color: #FFFFFF; height: 1000px;">
				<div style="padding-top: 100px; padding-bottom: 100px;">
					<img alt="회원가입 로고입니다." src="image/signlogo.png">
				</div>
				<h2>기본정보입력</h2>
				<div
					style="margin-top: 12px; padding: 16px; font-weight: 400; font-size: 14px; line-height: 20px; color: #52595f; margin-bottom: 32px; word-break: keep-all;">
					회원가입을 위해 아래 정보들을 전부 입력해주세요.</div>

				<div style="margin-top: 30px;">
					<input type="text" placeholder="아이디를 입력해주세요" name="id"
						style="font-size: 16px; line-height: 19px; width: 95%; border: none; border-bottom: 1px solid #908F8F;">
				</div>

				<div style="margin-top: 30px">
					<input type="text" placeholder="비밀번호를 입력해주세요" name="password"
						style="font-size: 16px; line-height: 19px; width: 95%; border: none; border-bottom: 1px solid #908F8F;">
				</div>

				<div style="margin-top: 30px">
					<input type="text" placeholder="닉네임을 입력해주세요" name="nickname"
						style="font-size: 16px; line-height: 19px; width: 95%; border: none; border-bottom: 1px solid #908F8F;">
				</div>

				<div style="margin-top: 30px">
					<input type="submit" value="회원가입">
				</div>
			</div>
		</div>
	</form>
</body>
</html>