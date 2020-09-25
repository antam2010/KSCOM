<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/form.css">
</head>
<body>


<aside>
<c:if test="${todayImageList !=null }">

	<h2>오늘 본 상품 목록</h2>
<table >
	<tr>
		<c:forEach var="todayImage" items="${todayImageList}" varStatus="status" end="3">
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

</c:if>
</aside>
</body>
</html>