<%@page import="vo.Member"%>	
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 시스템 관리자모드(회원 목록 보기)</title>
<link rel="stylesheet" href="css/form.css">
<script type="text/javascript">
$(function () {
	
	
	
});
</script>
</head>
<body>
<jsp:include page="AdminPage.jsp"></jsp:include>

<section>

<form action="search.me" method="post">
<table>
	<tr>
		<td><h1>회원 목록</h1></td>
		<td><input type="text" id="userSearch" name="userSearch" placeholder="아이디 검색">&nbsp;&nbsp;&nbsp;<input type="submit" value="검색"></td>
	</tr>

	<c:forEach var = "member" items = "${memberList}">
	<tr>
		<c:if test="${member.id ne 'admin' }">
		<td>
			<a href="memberViewAction.me?id=${member.id}">
				${member.id}
				
			</a>
		</td>
		<td>
			<a href="memberModifyFormAction.me?id=${member.id }">수정</a>
		<td>
		
		<a href="memberDeleteAction.me?id=${member.id}" id="memberDel">삭제</a>
		<input type="hidden" id="memberDel_val" value="${member.id }">
		</td>
		</c:if>
	</tr>
	</c:forEach>
	<tr><td></td></tr><tr><td></td></tr>
	
		
</table>
<div class="center_text">[1] [2] [3]</div>
</form>
</section>

</body>
</html>