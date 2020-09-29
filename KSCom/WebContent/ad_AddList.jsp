<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/form.css">


</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>

<table>
	<tr>
		<td>제품 명: ${name }</td>
	</tr>
	<tr>
		<td><img src="images/${image }" style="width: 100px; height: 100px;"></td>
	</tr>
	<tr>
		<td><a href="addList.do?name=${name }&image=${image}&product_id=${product_id}&brand=${brand}" >등록</a>&nbsp;&nbsp;&nbsp;
		<input type="button" value="뒤로가기" onclick="history.go(-2)"></td>
	</tr>
</table>

</section>
</body>
</html>