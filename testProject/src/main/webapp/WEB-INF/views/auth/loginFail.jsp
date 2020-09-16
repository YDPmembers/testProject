<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../include/header.jsp" />
<meta charset="UTF-8">

<b>Login이 실패했습니다.</b>
<a href="/auth/login"> 로그인 화면</a>으로 5초 후 이동합니다.
${name} 
<script>
   setTimeout( function() { window.location='/auth/login'; } ,5000);
</script>
<jsp:include page="../include/footer.jsp" />