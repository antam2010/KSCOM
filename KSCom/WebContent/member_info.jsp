<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 시스템 관리자모드(회원 정보 보기)</title>
<link rel="stylesheet" href="css/form.css">
</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<nav></nav>
<section>
<table>
	<tr>
		<td>아이디 : </td>
		<td>${member.id }</td>
	</tr>
	<tr>
		<td>비밀번호 : </td>
		<td>${member.passwd}</td>
	</tr>
	<tr>
		<td>이름 : </td>
		<td>${member.name}</td>
	</tr>
	<tr>
		<td>나이 : </td>
		<td>${member.age}</td>
	</tr>
	<tr>
		<td>성별 : </td>
		<td>${member.gender}</td>
	</tr>
	<tr>
		<td>주소:</td>
		<td>${member.addr }</td>
	<tr>
		<td>이메일 주소 : </td>
		<td>${member.email}</td>
	</tr>
	<tr>
		<td colspan=2>
			<a href="memberListAction.me">리스트로 돌아가기</a>
		</td>
	</tr>
</table>
</section>
</body>
</html>