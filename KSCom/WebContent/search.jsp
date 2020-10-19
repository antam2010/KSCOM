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
<jsp:include page="AdminPage.jsp"></jsp:include>
<section>
<form action="search.me" method="post">
	<table>
	<tr>
		<td><h1>회원 목록</h1></td>
		<td><input type="text" id="userSearch" name="userSearch" placeholder="아이디 검색">&nbsp;&nbsp;&nbsp;
		<input type="submit" value="검색"></td>
	</tr>
	
	<c:if test="${empty searchList}">
	<tr>
		<td colspan="2" class="div_empty">입력하신 유저를 찾지 못했습니다.</td>
	</tr>
	</c:if>
	<c:forEach var="member" items="${searchList }">
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
	<tr>
		<td><input type="button" class="buttonCss" onclick="history.back()" value="뒤로가기"></td>
	</tr>
	</table>
</form>
</section>
</body>
</html>