<%@page import="java.util.HashMap"%>
<%@page import="vo.Cpu"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/form.css">
<title>Insert title here</title>
<style type="text/css">
	#listForm{
		width:700px;
		height:500px;
		border:1px solid red;
		margin:auto;
	}
	h2{
		text-align:center;
	}
	
	table{
		margin:auto;
		width:550px;
	}

	.div_empty{
		background-color:red;
		width: 100%;
		height: 100%;
		text-align: center;
	}

	#todayImageList{
		text-align: center;
	}
	#productImage{
		width: 150px;
		height: 150px;
		border: none;
	}
	#todayImage{
		width: 100px;
		height: 100px;
		border: none;
	}
</style>
</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<nav>
<section id = "listForm">
<c:if test="${cpuList != null}">
<h2>CPU 목록  <a href="cpuRegistForm.do">CPU등록</a></h2>
<table>
	<tr>
		<c:forEach var = "cpu" items="${cpuList }" varStatus="status">
		<td>
			<a href="cpuView.do?id=${cpu.id}">
			<img src="images/${cpu.image}" id="productImage"/>
			</a>
			상품명:${cpu.id}<br>
			가격:${cpu.price}<br>
		</td>
		<c:if test="${((status.index+1) mod 4)==0 }">
			</tr>
			<tr>
		</c:if>
		</c:forEach>
	</tr>
</table>
</c:if>
<c:if test="${cpuList==null }">
	<div class="div_empty">
	개상품이 없습니다. 분양불가
	</div>
</c:if>
<c:if test="${todayImageList !=null }">
<div id ="todayImageList">
	<h2>오늘 본 개 상품 목록</h2>
<table>
	<tr>
		<c:forEach var="todayImage" items="${todayImageList}" varStatus="status">
		<td>
			<img src="images/${todayImage}" id="todayImage"/>
		</td>
			<c:if test="${((status.index+1) mod 4)==0 }">
			</tr>
			<tr>
		</c:if>
		</c:forEach>
	</tr>
</table>
</div>
</c:if>
</section>
</nav>
</body>
</html>