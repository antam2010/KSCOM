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
<nav></nav>
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
		<td><a href="comList.jsp">홈으로가기</a></td>
</table>
</section>
<c:if test="${id eq 'admin' }">
<section>
	<ul>	
		<li><a href="cpuRegistForm.do" class="adPage">CPU등록</a></li>
		<li><a href="ramRegistForm.do" class="adPage">램 등록</a></li>
 		<li><a href="mainboardRegistForm.do" class="adPage">메인보드 등록</a></li>
 		<li><a href="gpuRegistForm.do" class="adPage">그래픽카드 등록</a></li>
 		<li><a href="com_caseRegistForm.do" class="adPage">컴퓨터 케이스 등록</a></li>
 	</ul>
 	
</section> 
</c:if>
</body>
</html>