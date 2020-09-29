<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/form.css">
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script type="text/javascript">

$(function () {
	
	
	$('.changeA').click(function () {
		
		var brand="${brand}";
		//램
		if(brand.indexOf('삼성')!=-1 || brand.indexOf('GelL')!=-1 || brand.indexOf('G.SKILL')!=-1 || brand.indexOf('대원cts')!=-1 || brand.indexOf('아스크텍')!=-1){
			$(function() {
				$(".changeA").attr("href","ramView.do?id=${product_id}");
				return true;
			});
		//cpu
		}else if(brand.indexOf('인텔')!=-1 || brand.indexOf('amd')!=-1 || brand.indexOf('기타')!=-1){
			$(function(){
				$(".changeA").attr("href","cpuView.do?id=${product_id}");
				return true;
			});
		//mainboard
		}else if(brand.indexOf('MSI')!=-1|| brand.indexOf('ASUS')!=-1 || brand.indexOf('애즈락')!=-1 ||
				 brand.indexOf('기가바이트')!=-1 || brand.indexOf('바이오스타')!=-1){
			$(function(){
				$(".changeA").attr("href","mainboardView.do?id=${product_id}");
				return true;
			});
		//GPU	
		}else if(brand.indexOf('이엠텍')!=-1|| brand.indexOf('갤럭시')!=-1 || brand.indexOf('조탁')!=-1 ||
				 brand.indexOf('MSI_GPU')!=-1 || brand.indexOf('GIGABYTE')!=-1 || brand.indexOf('엠텍코리아')!=-1 ||brand.indexOf('ASUS_GPU')!=-1 ){
			$(function(){
				$(".changeA").attr("href","gpuView.do?id=${product_id}");
				return true;
			});
		//컴케이스
		}else if(brand.indexOf('앱코')!=-1|| brand.indexOf('아이군주')!=-1 || brand.indexOf('마이크로닉스')!=-1 ||
				 brand.indexOf('COX')!=-1 || brand.indexOf('잘만')!=-1 ){
			$(function(){
				$(".changeA").attr("href","com_caseView.do?id=${product_id}");
				return true;
			});
		
		}else{
			alert('잘못된 정보');
			history.back();
			return false;
		}
		
		
	});
	

	
});



</script>
<title>컴퓨터리스트</title>
</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>

<section>

<article>
<form action="addList.jsp" method="post">
<table>
	
<c:choose>
	<c:when test="${name ne null }">
		<tr>
			<td><h2>인기 상품</h2>제품명: ${name }</td>
		</tr>
		<tr>
			<td><a href="#" class="changeA" ><img src="images/${image }" style="width:150px;" height="150px;"></a></td>
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
</article>

</section>

</body>
</html>