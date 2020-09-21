

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="rst" value="dao.idCheck(id)"/>
<c:set var="id" value="${param.id }"/>
<c:choose>
<c:when test="${id eq 1 }">
${id }는 사용 불가
</c:when>
<c:otherwise>
${id }는 사용 가능<br>
${rst }
</c:otherwise>
</c:choose>
</body>
</html>