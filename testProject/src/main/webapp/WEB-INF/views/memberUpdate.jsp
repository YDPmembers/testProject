<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
</head>
<body>
	<h1>회원 정보 수정</h1>
	
	<form action="update" method="post">
		번호 : <input type="text" name="mno" value="${member.mno}" readonly>
		이름 : <input type="text" name="mname" value="${member.mname}">
		이메일 : <input type="email" name="email" value="${member.email}">
		암호 : <input type="password" name="pwd" value="${member.mno}">
		가입일 : <fmt:formatDate pattern="yyyy-MM-dd" value="${member.cre_date}" />
		최종 수정일 : <fmt:formatDate pattern="yyyy-MM-dd" value="${member.mod_date}" />
		<input type="reset" value="초기화"> 
		<input type="submit" value="수정 완료">
	</form>
	
	<a href="list">회원 목록으로 돌아가기</a><br />
	<a href="delete?mno=${member.mno}">회원 삭제하기</a>
</body>
</html>