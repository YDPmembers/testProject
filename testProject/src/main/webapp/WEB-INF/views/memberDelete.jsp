<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<jsp:include page="./include/header.jsp">

	<h1>회원 삭제</h1>
	
	<form action="delete" method="post">
		<input type="hidden" name="mno" value="${mno}">
		정말 삭제하시겠습니까?<br />
		<input type="submit" value="삭제하기">
	</form>
	
	<a href="list">회원 목록으로 돌아가기</a>

<jsp:include page="./include/footer.jsp">