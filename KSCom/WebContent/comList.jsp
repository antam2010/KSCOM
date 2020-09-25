<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/form.css">

<title>컴퓨터리스트</title>
</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>

<section>

<c:choose>

<c:when test="${addList eq null && id eq 'admin' }">
<article>
<form action="ad_AddList.do" method="post">
<input type="submit" value="광고 등록하기">
</form>
</article>
</c:when>

<c:when test="${addList eq null && id ne 'admin' }">
<div style="text-align: center;"><h2>빠른 시일내로 준비하겠습니다.</h2></div>
</c:when>

<c:otherwise>

</c:otherwise>
</c:choose>



</section>

</body>
</html>