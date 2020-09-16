<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import="com.hk.member.vo.MemberVO" %>

<!DOCTYPE html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>YDP Member</title>

  <!-- Bootstrap Core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom Fonts -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
  <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

  <!-- Custom CSS -->
  <link href="css/stylish-portfolio.min.css" rel="stylesheet">
  

  
<div>
 <%
 MemberVO loginMember = (MemberVO) session.getAttribute("loginMember");
 if (loginMember != null) {%>
   <span style="float: right;"> 
   ${loginMember.mname } 
   <a style="color: black;" href="/auth/logout">로그아웃</a>
   </span>
   <% } else {%>
   <span style="float: right;"> <a style="color: balck;"
      href="/auth/login">로그인</a>
   </span>
   <% } %>
</div>
</head>
<body id='page-top'>
