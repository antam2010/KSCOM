<%@page import="vo.Member"%>	
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 시스템 관리자모드(회원 목록 보기)</title>
<link rel="stylesheet" href="css/form.css">
</head>
<body>
<jsp:include page="template.jsp"></jsp:include>

<section>
<table>
	<tr>
		<td colspan=2><h1>회원 목록</h1></td>
	</tr>
	<c:forEach var = "member" items = "${memberList}">
	<tr>
		<td>
			<a href="memberViewAction.me?id=${member.id}">
				${member.id}
			</a>
		</td>
		<td>
		<a href="memberDeleteAction.me?id=${member.id}">삭제</a>
		</td>
	</tr>
	</c:forEach>
	<tr>
		<td><a href="AdminPage.jsp">뒤로가기</a></td>
</table>
</section>

</body>
</html>