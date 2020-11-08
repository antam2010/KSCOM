<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="vo.Boardbean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
	<table border="1">
		<tr>
			<td>글 번호</td>
			<td>아이디 </td>
			<td>제 목</td>
			<td>날 짜</td>
			<td>조회수</td>
		</tr>
		
		<c:forEach var="list" items="${articleList }">
		<tr>
			<td>${list.num }</td>
			<td>${list.name }</td>
			<td>${list.subject }</td>
			<td>${list.date }</td>
			<td>${list.readcount }</td>
		</tr>
		</c:forEach>
		
	</table>
	
	</section>
</body>
</html>