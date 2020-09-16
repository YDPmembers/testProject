<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../include/header.jsp" />
<meta charset="UTF-8">

<b>Login이 실패했습니다.</b>
<a href="/"> 리스트로 이동하시려면 클릭을 아니면 5초후 자동이동합니다.</a>
${name} 
<script>
   setTimeout( function() { window.location='/'; } ,5000);
</script>
<jsp:include page="../include/footer.jsp" />