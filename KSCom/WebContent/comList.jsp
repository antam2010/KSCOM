<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">

    
</style>
<link rel="stylesheet" href="css/form.css">

<script src="js/jquery.bxslider.min.js"></script>
<script src="js/jquery.js"></script>
<script type="text/javascript">



$(function () {
	
	$('.changeA').click(function () {
		var brand=$('.test2').val();
		var proId=$('.test3').val();
		
	
// 		램
		if(brand.indexOf('삼성')!=-1 || brand.indexOf('GelL')!=-1 || brand.indexOf('G.SKILL')!=-1 || brand.indexOf('대원cts')!=-1 || brand.indexOf('아스크텍')!=-1){
			$(function() {
				$(".changeA").attr("href","ramView.do?id="+proId);
				
			});
		//cpu
		}else if(brand.indexOf('인텔')!=-1 || brand.indexOf('amd')!=-1 || brand.indexOf('기타')!=-1){
			$(function(){
				$(".changeA").attr("href","cpuView.do?id="+proId);
				
			});
		//mainboard
		}else if(brand.indexOf('MSI')!=-1|| brand.indexOf('ASUS')!=-1 || brand.indexOf('애즈락')!=-1 ||
				 brand.indexOf('기가바이트')!=-1 || brand.indexOf('바이오스타')!=-1){
			$(function(){
				$(".changeA").attr("href","mainboardView.do?id="+proId);
				
			});
		//GPU	
		}else if(brand.indexOf('이엠텍')!=-1|| brand.indexOf('갤럭시')!=-1 || brand.indexOf('조탁')!=-1 ||
				 brand.indexOf('MSI_GPU')!=-1 || brand.indexOf('GIGABYTE')!=-1 || brand.indexOf('엠텍코리아')!=-1 ||brand.indexOf('ASUS_GPU')!=-1 ){
			$(function(){
				$(".changeA").attr("href","gpuView.do?id="+proId);
				
			});
		//컴케이스
		}else if(brand.indexOf('앱코')!=-1|| brand.indexOf('아이군주')!=-1 || brand.indexOf('마이크로닉스')!=-1 ||
				 brand.indexOf('COX')!=-1 || brand.indexOf('잘만')!=-1 ){
			$(function(){
				$(".changeA").attr("href","com_caseView.do?id="+proId);
				
			});
		
		}else{
			alert('잘못된 경로');
			location.href="ad_AddListSuccess.do";
			
			return false;
		}
		
		
 	});

	
	 
	
	 


});
//제이쿼리 끝



</script>
<title>컴퓨터리스트</title>

</head>
<body>

<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>

<section>

<c:choose>
<c:when test="${adList eq null }">
<article>
<div class="center_text"><h3>광고 준비중입니다.<br>빠른 시일 내로 준비하겠습니다</h3></div>
</article>
</c:when>
<c:otherwise>

<article>

<table>
	<c:set var="ad" value="${adList[0] }"/>
	<c:set var="ad2" value="${adList[1] }"/>
	<tr>
		<td>상품 번호:    ${ad.product_id }
		<input type="hidden" class="test3" value="${ad.product_id }"></td>
	</tr>
	<tr>	
		<td> ${ad.name }</td>
		
	</tr>
	<tr>
		<td>${ad.brand }
		<input type="hidden"  value="${ad.brand }" class="test2"></td>
	</tr>
	<tr>
		<td><a href= "#" class="changeA" ><img src="images/${ad.image }" style="width: 100px; height: 100px;"></a></td>	
	</tr>
</table>

</article>
<article>
<jsp:include page="NewFile.jsp"></jsp:include>
</article>

</c:otherwise>
</c:choose>
</section>

</body>
</html>