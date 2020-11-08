<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="vo.Boardbean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>콩순이 게시판 리스트</title>
</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
	<c:choose>
	<c:when test="${empty articleList || articleList eq null }">
	<div class="div_empty"><h2>등록된 게시글이 없습니다.</h2></div>
	</c:when>
	<c:otherwise>
	<table border="1">
		<tr>
			<td>글 번호</td>
			<td>아이디 </td>
			<td>제 목</td>
			<td>날 짜</td>
			<td>조회수</td>
		</tr>
		<c:set var="page" value="${pageInfo }"></c:set>
		<c:forEach var="list" items="${articleList }">
		<tr>
			<td><a href="boardDetail.do?num=${list.num}&page=${page.page}">${list.num }</a></td>
			<td>${list.name }</td>
			<td>${list.subject }</td>
			<td>${list.date }</td>
			<td>${list.readcount }</td>
		</tr>
		</c:forEach>
	</table>
		<div class="center">
		<c:choose>	
		<c:when test="${page.page<=1 }">
		이전
		</c:when>
		<c:otherwise>
		<a href="boardList.do?page=${page.page-1 }">이전</a>
		</c:otherwise>
		</c:choose>
		
		
		<c:forEach var="p" begin="${page.startPage }"  end="${page.endPage }" varStatus="status">
		<c:choose>
		<c:when test="${p == page.page }">
		${p }
		</c:when>
		<c:otherwise>
		<a href="boardList.do?page=${p}">${p }</a>
		</c:otherwise>
		</c:choose>
		</c:forEach>
		
		<c:choose>
		<c:when test="${page.maxPage>page.page }">
		<a href="boardList.do?page=${page.page+1 }">다음</a>
		</c:when>
		<c:otherwise>
		다음
		</c:otherwise>
		</c:choose>
		</div>
		</c:otherwise>
		</c:choose>
	</section>
</body>
</html>