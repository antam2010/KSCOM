<%@page import="vo.Ram"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ramView.jsp</title>
<link rel="stylesheet" href="css/form.css">
</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>

<section>
<h2>${ram.name}의 상세정보</h2>
		<article>
			<img src="images/${ram.image}" class="add_image"/>
		</article>	
		
			<b>브랜드: </b> ${ram.brand}<br>
			<b>이름 : </b> ${ram.name}<br>
			<b>클럭: </b>${ram.clock }<br>
			<b>용량 :</b>${ram.capacity }<br>
			<b>가격 : </b> ${ram.price}<br>
			<aside>
			<p id="desc">
			<b>제품 설명 : </b> ${ram.content}<br>
			</p>
			</aside>
		
		<div style="clear:both"></div>
		<div id = "commandList">
			<a href="ramList.do">쇼핑계속하기</a>&nbsp;&nbsp;&nbsp;
			<c:choose>
			<c:when test="${id eq null || empty id }">
			<a href="loginForm.jsp" class="loginPlz">장바구니에 담기</a>
			</c:when>
			<c:when test="${id eq 'admin' }">
			<a href="ad_AddList.do?image=${ram.image }&name=${ram.name}&brand=${ram.brand }&id=${ram.id}">광고 등록</a>
			</c:when>
			<c:otherwise>
			<a href="ramCartAdd.do?id=${ram.id}">장바구니에담기</a>
			</c:otherwise>
			</c:choose>
		</div>
	
</section>

</body>
</html>