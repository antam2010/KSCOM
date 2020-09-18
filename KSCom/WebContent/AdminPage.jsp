<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="template.jsp"></jsp:include>
<nav>
<c:choose>
<c:when test="${id eq 'admin' }">
<div class="dropdown">
<button class="dropbtn">회원 관리</button>
	<div class="dropdown-content">
		<a href="memberListAction.me">회원 리스트</a>
	</div>
</div>
<div class="dropdown">
<button class="dropbtn">제품 등록</button>
	<div class="dropdown-content">
		<a href="cpuRegistForm.do" >CPU등록</a>
		<a href="ramRegistForm.do" >램 등록</a>
 		<a href="mainboardRegistForm.do" >메인보드 등록</a>
 		<a href="gpuRegistForm.do" >그래픽카드 등록</a>
 		<a href="com_caseRegistForm.do" >컴퓨터 케이스 등록</a>
	</div>
</div>
</c:when>
<c:otherwise>
<script>
alert("잘못된 접근입니다.");
history.back();
</script>

</c:otherwise>
</c:choose>
</nav>

</body>
</html>