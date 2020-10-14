
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="cpuList.do">
	<input type="hidden" name="readcount" value="100">
	<c:forEach var="cpu" items="${cpuList }">
	${cpu.name }
	</c:forEach>
	<input type="submit">
</form>
</body>
</html>