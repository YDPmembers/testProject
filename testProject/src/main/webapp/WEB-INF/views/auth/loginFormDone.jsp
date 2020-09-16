<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../include/header.jsp" />
<title>로그인 성공</title>
</head>
<body>
로그인이 완료되었습니다. 5초 후 리스트로 이동됩니다. <br>
<a href='/member/list'>리스트로 가기</a>
<script>
   setTimeout( function() { window.location='/member/list'; } ,5000);
</script>
<jsp:include page="../include/footer.jsp" />