<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>글 번호</td>
			<td>아이디 </td>
			<td>제 목</td>
			<td>날 짜</td>
			<td>조회수</td>
		</tr>
		<c:forEach var="list" items="${articleList }">
		<tr>
			<td>글 번호</td>
			<td><input type="number" value="${list.num }" readonly="readonly"></td>
		</tr>
		<tr>
			<td>아이디</td>
		</tr>			
		
		</c:forEach>
	</table>
</body>
</html>