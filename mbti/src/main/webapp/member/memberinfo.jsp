<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<head>
  <title>관리자 모드 (회원정보 보기)</title>
  <jsp:include page="../board/header.jsp" />
  
  <style>
  tr>td:nth-child(odd){font-weight: bold;}
  td{text-align: center;}
  .container{width: 50%
  </style>
</head>
<body>

<div class="container">
	<table class="table table-striped">
		<tr>
			<td>아이디</td>
			<td>${memberInfo.id}</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>${memberInfo.password}</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${memberInfo.name}</td>
		</tr>
		<tr>
			<td>나이</td>
			<td>${memberInfo.age}</td>
		</tr>
		<tr>
			<td>성별</td>
			<td>${memberInfo.gender}</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td>${memberInfo.email}</td>
		</tr>
	
	<tr>
	<td colspan="2">
	<a href="memberList.net">리스트로 돌아가기</a>
	
	</table>
  </div>

</body>
</html>