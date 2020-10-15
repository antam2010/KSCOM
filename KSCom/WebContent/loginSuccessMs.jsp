<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/form.css">
<style type="text/css">
table{
	border: 1px solid pink;
	text-align: center;
}
img{
	position: absolute;
	width: 100px;
	height: 100px;
}
</style>
</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
	
		<div class="ad_h3 center_text">
			회원 가입을 축하합니다 ^^
		</div>
		
	<table>
		
		<tr>
			<td align="left"><img src="images/login_1.jpg"></td>
			
		</tr>
		<tr>
			<td align="center">아이디: ${idMs }</td>
		</tr>
		<tr>
			<td><span class="ad_h2">${nameMs }</span>님의 가입을 진심으로 축하합니다 ^^</td>
		</tr>
		<tr>
			<td>각 부품별로 장바구니에 담아 가격을 견적하는 사이트 입니다<br>
			시작하기를 눌러 다양한 상품을 골라 보세요</td>
		</tr>
		<tr>
			<td>
			<a href="loginForm.jsp">로그인 하러가기</a>
			</td>
		</tr>
			
		
	</table>
	
	
	
</section>
</body>
</html>