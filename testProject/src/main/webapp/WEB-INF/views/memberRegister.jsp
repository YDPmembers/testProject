<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
	<h1>회원 가입</h1>
	
	<form action="register" method="post">
		이름 : <input type="text" name="mname"><br />
		이메일 : <input type="email" name="email"><br />
		암호 : <input type="password" name="pwd"><br />
		<input type="reset" value="초기화">
		<input type="submit" value="가입하기">
	</form>
	
	<a href="list">회원 목록으로 돌아가기</a>
</body>
</html>