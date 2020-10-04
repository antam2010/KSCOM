<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>


<form action="addList.jsp" method="post">
<table>
	
<c:choose>
	<c:when test="${name ne null }">
		<tr>
			<td><div style="text-align: left; "><h3>인기 상품</h3></div>제품명: ${name }</td>
		</tr>
		<tr>
			<td><a href="#" class="changeA" ><img src="images/${image }" style="width:200px;" height="200px;"></a></td>
		</tr>
		
	</c:when>
	<c:otherwise>
		<div style="text-align: center;"><h2>빠른 시일내로 준비하겠습니다.</h2></div>
		<c:if test="${id eq 'admin' }">
		<tr>	
			<td>"<a href="AdminPage.jsp" style="text-decoration: none;">관리자 페이지</a>>부품리스트 >제품 클릭 > 광고 등록" 으로 등록해 주십시오.</td>
		</tr>
	</c:if>
		
	</c:otherwise>
</c:choose>
	
</table>
</form>