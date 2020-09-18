<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>템플릿</title>
<link rel="stylesheet" href="css/form.css">

</head>
<body>

<header>

	<ul>
		
		<c:choose>
		<c:when test="${id eq 'admin' && id ne null }">
		
		<li><a href="memberListAction.me">관리자 페이지 가기</a></li>
		<li><a href="comList.jsp">제품보러가기</a></li>
		<li><a href ="memberLogoutAction.me">로그아웃</a></li>
		<li><div class="white_h4" >${id }님 환영합니다</div></li>
		</c:when>
		
		<c:when test="${id eq null || empty id }">
		<li><a href ="loginForm.jsp">로그인</a></li>
		<li><a href="cpuCartList.do">장바구니</a></li>
		<li><a href="comList.jsp">제품보러가기</a></li>
		</c:when>
		
		<c:otherwise>
		<li><a href ="memberLogoutAction.me">로그아웃</a></li>
		<li><a href="cpuCartList.do">장바구니</a></li>
		<li><a href="comList.jsp">제품보러가기</a></li>
		<li><div class="white_h4">${ id }님 환영합니다</div></li>
		</c:otherwise>
		</c:choose>
		
	</ul>
<a href="comList.jsp"><img src="images/logo.png" style="width:130px; height:130px; float: left;"></a>


</header>

</body>
</html>