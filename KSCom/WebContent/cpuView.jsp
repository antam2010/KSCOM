<%@page import="vo.Cpu"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cpuView</title>
<link rel="stylesheet" href="css/form.css">

<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#disabledBtn").click(function(){
		$("#add_image").attr('src','image/hdd_1.jpg');
		
		
	});
	
});

</script>
</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>

<section>
<h2>${cpu.name}의 상세정보</h2>
	<article>	
		<img src="images/${cpu.image}" class="add_image" id="add_image"/>
	</article>
			<b>이름 : </b> ${cpu.name}<br>
			<b>코어 : </b> ${cpu.core}<br>
			<b>브랜드: </b> ${cpu.cpu_package}<br>
			<b>가격 : </b> ${cpu.price}<br>
 		<aside>
			<p id="desc">
			<b>제품 설명 : </b><br> ${cpu.content}<br>
			</p>
		</aside>
		<div style="clear:both"></div>
		<div id = "commandList">
			 <a href="cpuList.do">쇼핑계속하기</a>
			<c:choose>
			<c:when test="${id eq null || empty id }">
			<a href="loginForm.jsp" class="loginPlz">장바구니에 담기</a>
			</c:when>
			<c:when test="${id eq 'admin' }">
			<a href="ad_AddList.do?id=${cpu.id }">광고로 쓰기위해 가져오기</a>
			</c:when>
			<c:otherwise>
			<a href="cpuCartAdd.do?id=${cpu.id}">장바구니에담기</a>
			</c:otherwise>
			</c:choose>
		</div>
	
</section>
<aside>
<c:if test="${id eq 'admin' }">
<input type="button" value="비활성화" id="disabledBtn"/>

</c:if>
</aside>
</body>
</html>