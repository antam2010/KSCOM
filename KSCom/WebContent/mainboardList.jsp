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
<title>mainboard 리스트</title>

</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>

<section>
<c:if test="${mainboardList != null}">
<h2>Mainboard List</h2>	
 
<table>
	<tr>
		<c:forEach var = "mainboard" items="${mainboardList }" varStatus="status">
		<td>
			<a href="mainboardView.do?id=${mainboard.id}">
			<img src="images/${mainboard.image}" id="productImage"/>
			</a><br>
			상품명:${mainboard.name}<br>
			가격:${mainboard.price}<br>
			조회수:${mainboard.readcount }<br>
		</td>
		<c:if test="${((status.index+1) mod 4)==0 }">
			</tr>
			<tr>
		</c:if>
		</c:forEach>
	</tr>
</table>
</c:if>
<c:if test="${mainboardList==null }">
	<div class="div_empty">
	<h3>메인보드리스트가 존재하지 않습니다.</h3>
	</div>
</c:if>
</section>


</body>
</html>