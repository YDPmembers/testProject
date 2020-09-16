<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
	<h1>회원 목록</h1>
	
	<a href="register">회원 가입</a><br />
	
	<c:forEach items="${members}" var="member">
		${member.mno}, 
		${member.mname}, 
		${member.email}, 
		<fmt:formatDate pattern="yyyy-MM-dd" value="${ member.cre_date }" />, 
		<fmt:formatDate pattern="yyyy-MM-dd" value="${member.mod_date}" />,  
		<a href="update?mno=${member.mno}">수정</a> / 
		<a href="delete?mno=${member.mno}">삭제</a>
		<br />
	</c:forEach>
</body>
</html>