<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/form.css">
<title>컴퓨터리스트</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>

<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>

<section>

<c:choose>
<c:when test="${adList eq null }">
<article style="border: 0px;">
<div class="center_text"><h3>광고 준비중입니다.<br>빠른 시일 내로 준비하겠습니다</h3></div>
</article>
</c:when>
<c:otherwise>

<%-- <c:forEach var="ad" items="${adList }" varStatus="status"> --%>
<!-- <article> -->
<!-- <table> -->

<!-- 	<tr> -->
<%-- 		<td>상품 번호:    ${ad.product_id } --%>
<%-- 		<input type="hidden" name="test3" class="test3" value="${ad.product_id }"></td> --%>
<!-- 	</tr> -->
<!-- 	<tr>	 -->
<%-- 		<td> ${ad.name }<br> --%>
<%-- 			인덱스번호: <div class="test4">${status.index}</div> --%>
<!-- 		</td> -->
			
<!-- 	</tr> -->
	
<!-- 	<tr> -->
<%-- 		<td>${ad.brand } --%>
<%-- 		<input type="hidden"  value="${ad.brand }" class="test2" name="test2"></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<%-- 		<td><a href= "#" id="changeA" class="changeA" ><img src="images/${ad.image }" style="width: 100px; height: 100px;"></a></td>	 --%>
<!-- 	</tr> -->
	
<!-- </table> -->
<!-- </article> -->
<%-- </c:forEach> --%>

<article style="border: 0px;">
	
		
	<c:choose>
		<c:when test="${id eq 'admin' }">
		<div class="ad_h4"> 등록 방법: 제품 클릭 -> 하단 '광고 등록' 버튼</div>
		</c:when>
		<c:otherwise>
			<div class="ad_h3">인기 제품</div>
		</c:otherwise>
	</c:choose>
	
<jsp:include page="adList.jsp"></jsp:include>

	
</article>

</c:otherwise>
</c:choose>

<!-- 두번째 아티클 -->
<article>
<img src="images/board.jpg" class="img100" >
<form action="">
<table>
	<c:forEach begin="0" end="3">
	<tr>
		<td>아아</td>
	</tr>
	</c:forEach>
</table>
</form>
</article>
</section>

</body>
</html>