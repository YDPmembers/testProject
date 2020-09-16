<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    

<jsp:include page="./include/header.jsp" />

	
	<!--  about-->
<section class="content-section bg-light" id="about">
    <div class="container text-center">
      <div class="row">
        <div class="col-lg-10 mx-auto">
        
          <h1>회원 목록 입니당!</h1>
          <p class="lead mb-5">GS멤버스 신규 
            <a href="register">회원 가입</a>!</p>
          <a class="btn btn-dark btn-xl js-scroll-trigger" href="#services">GS회원 목록 바로 가기</a>
        </div>
      </div>
    </div>
  </section>

<!-- Services -->
<section class="content-section bg-primary text-white text-center" id="services">
    <div class="container">
      <div class="content-section-heading">
        <h2 class="text-secondary mb-0">Employ List</h2>
        
      </div><br><br>
      <div class="row">
      	<div class="table-responsive" id="newnew">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="color: white; font-size: 20px;" >
                  <thead>
                    <tr>
                      <th>#번호</th>
                      <th>이름</th>
                      <th>패스워드</th>
                      <th>이메일</th>
                      <th>작성일</th>
                      <th>수정일</th>
                      <th>수정</th>
                      <th>삭제</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${members}" var="member">
                    <tr>
                      <td><c:out value="${member.mno }" /></td>
                      <td><c:out value="${member.mname }" /></td>
                      <td><c:out value="${member.pwd }" /></td>
                      <td><c:out value="${member.email }" /></td>
                      <td><fmt:formatDate pattern="yyyy-MM-dd" value="${member.cre_date }" /></td>
                      <td><fmt:formatDate pattern="yyyy-MM-dd" value="${member.mod_date }" /></td>
                       <td><a href='update?mno=<c:out value="${member.mno }" />' ><input type='submit' value='수정'></a></td>
                       <td><a href='delete?mno=<c:out value="${member.mno }" />' ><input type='submit' value='삭제'></a></td>
                    </tr>
                    </c:forEach>
                  </tbody>
                </table>
              </div>
      </div>
    </div>
  </section>

<jsp:include page="./include/footer.jsp" />