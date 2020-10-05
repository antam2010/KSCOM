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
		<li><a href="ad_AddListSuccess.do"><span style="color: yellow; font-size: 1.2em;">콩순이 컴퓨터 </span><br>
		 <span style="color: #964b00; font-size: 0.8em; font-weight: bold;">추석도 콩순이!<br>와함께 놀아요!</span></a></li>
		<li><a href="ad_AddListSuccess.do"><img src="images/logo.jpg" style="width: 80px; height: 80px;"></a></li>
		<c:choose>
		<c:when test="${id eq 'admin' && id ne null }">
		<div class="rightLi">
		<li><a href="comList.jsp">홈으로가보기 가기</a></li>
		<li><a href="AdminPage.jsp">관리자 페이지 가기</a></li>
		<li><a href="ad_AddListSuccess.do">제품보러가기</a></li>
		<li><a href ="memberLogoutAction.me">로그아웃</a></li>
		<li><div class="white_h4" >[${id }]님 환영합니다</div></li>
		</div>
		</c:when>
		
		<c:when test="${id eq null || empty id }">
		<div class="rightLi">
		<li><a href ="loginForm.jsp">로그인</a></li>
		<li><a href="cpuCartList.do">장바구니</a></li>
		<li><a href="ad_AddListSuccess.do">제품보러가기</a></li>
		</div>
		</c:when>
		
		<c:otherwise>
		<div class="rightLi">
		<li><a href ="memberLogoutAction.me">로그아웃</a></li>
		<li><a href="cpuCartList.do">장바구니</a></li>
		<li><a href="ad_AddListSuccess.do">제품보러가기</a></li>
		<li><div class="white_h4">[${ id }] 님환영합니다</div></li>
		</div>
		</c:otherwise>
		</c:choose>
		
	</ul>







</header>

</body>
</html>