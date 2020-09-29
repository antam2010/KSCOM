<%@page import="vo.Com_case"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>com_caseView</title>
<link rel="stylesheet" href="css/form.css">
</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>

<section>
<h2>${com_case.name}의 상세정보</h2>
	<article>	
		<img src="images/${com_case.image}" class="add_image"/>
	</article>
			<b>브랜드: </b> ${com_case.brand}<br>
			<b>이름 : </b> ${com_case.name}<br>
			<b>사이즈 : </b> ${com_case.size}<br>
			<b>파워규격 : </b> ${com_case.power_standard}<br>
			<b>쿨링팬 : </b> ${com_case.board_standard}<br>
			<b>가격 : </b> ${com_case.price}<br>
		<aside>
			<p id="desc">
			<b>제품 설명 : </b><br> ${com_case.content}<br>
			</p>
		</aside>
		<div style="clear:both"></div>
		<div id = "commandList">
			 <a href="com_caseList.do">쇼핑계속하기</a>
			<c:choose>
			<c:when test="${id eq null || empty id }">
			<a href="loginForm.jsp" class="loginPlz">장바구니에 담기</a>
			</c:when>
			<c:when test="${id eq 'admin' }">
			<a href="ad_AddList.do?image=${com_case.image }&name=${com_case.name}&brand=${com_case.brand }&id=${com_case.id}">광고 등록</a>
			</c:when>
			<c:otherwise>
			<a href="com_caseCartAdd.do?id=${com_case.id}">장바구니에담기</a>
			</c:otherwise>
			</c:choose>
		</div>
	
</section>

</body>
</html>