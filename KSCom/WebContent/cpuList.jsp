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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">


</script>
<title>cpu 리스트</title>

</head>
<body>

<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>


<section>

<c:if test="${cpuList != null}">
<h2>CPU List</h2>	


<table>
	<tr>
		<c:forEach var = "cpu" items="${cpuList }" varStatus="status">
		<td>
			<a href="cpuView.do?id=${cpu.id}">
			<img src="images/${cpu.image}" id="productImage" name="productImage"/>
			</a><br>
			상품명:${cpu.name}<br>
			가격:${cpu.price}<br>
			조회수:${cpu.readcount }<br>
			<input type="hidden" name="popCnt">
			<input type="hidden" name="popName">
		</td>
		<c:if test="${((status.index+1) mod 4)==0 }"> <!-- 4개마다 줄바꿈 -->
	</tr>
	<tr>
		</c:if>
		</c:forEach>
	</tr>
</table>

	<div class="center_text"></div>
</c:if>
<c:if test="${cpuList==null }">
	<div class="div_empty">
	<h3>cpu리스트가 존재하지 않습니다.</h3>
	</div>
</c:if>
	<div class="center_text">[1]</div>
</section>




</body>
</html>