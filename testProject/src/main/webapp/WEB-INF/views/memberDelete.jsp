<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 삭제</title>
</head>
<body>
	<h1>회원 삭제</h1>
	
	<form action="delete" method="post">
		<input type="hidden" name="mno" value="${mno}">
		정말 삭제하시겠습니까?<br />
		<input type="submit" value="삭제하기">
	</form>
	
	<a href="list">회원 목록으로 돌아가기</a>
</body>
</html>