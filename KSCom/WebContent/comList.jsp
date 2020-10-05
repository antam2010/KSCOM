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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript">


$(function () {
	
	
	$('.changeA').click(function () {
		
	
		
		
	
		//램
		if(brand.indexOf('삼성')!=-1 || brand.indexOf('GelL')!=-1 || brand.indexOf('G.SKILL')!=-1 || brand.indexOf('대원cts')!=-1 || brand.indexOf('아스크텍')!=-1){
			$(function() {
				$(".changeA").attr("href","ramView.do?id=${ad.product_id}");
				
			});
		//cpu
		}else if(brand.indexOf('인텔')!=-1 || brand.indexOf('amd')!=-1 || brand.indexOf('기타')!=-1){
			$(function(){
				$(".changeA").attr("href","cpuView.do?id=${ad.product_id}");
				
			});
		//mainboard
		}else if(brand.indexOf('MSI')!=-1|| brand.indexOf('ASUS')!=-1 || brand.indexOf('애즈락')!=-1 ||
				 brand.indexOf('기가바이트')!=-1 || brand.indexOf('바이오스타')!=-1){
			$(function(){
				$(".changeA").attr("href","mainboardView.do?id=${ad.product_id}");
				
			});
		//GPU	
		}else if(brand.indexOf('이엠텍')!=-1|| brand.indexOf('갤럭시')!=-1 || brand.indexOf('조탁')!=-1 ||
				 brand.indexOf('MSI_GPU')!=-1 || brand.indexOf('GIGABYTE')!=-1 || brand.indexOf('엠텍코리아')!=-1 ||brand.indexOf('ASUS_GPU')!=-1 ){
			$(function(){
				$(".changeA").attr("href","gpuView.do?id=${ad.product_id}");
				
			});
		//컴케이스
		}else if(brand.indexOf('앱코')!=-1|| brand.indexOf('아이군주')!=-1 || brand.indexOf('마이크로닉스')!=-1 ||
				 brand.indexOf('COX')!=-1 || brand.indexOf('잘만')!=-1 ){
			$(function(){
				$(".changeA").attr("href","com_caseView.do?id=${ad.product_id}");
				
			});
		
		}else{
			alert(brand);
			location.href="ad_AddListSuccess.do";
			
			return false;
		}
		
		
 	});

	
	 
	
	 


});
//제이쿼리 끝



</script>
<title>컴퓨터리스트</title>
<style type="text/css">

   
</style>
</head>
<body>

<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>

<section>

<c:forEach var="ad" items="${adList }"   begin="0" end="3">
<article>

<table>

	<tr>
		<td>productID:${ad.product_id }</td>
	</tr>
	<tr>	
		<td> ${ad.name }</td>
		
	</tr>
	<tr>
		<td>${ad.brand }
		<input type="text"  value="${ad.brand }" class="test2"></td>
	</tr>
	<tr>
		<td><a href= "#" class="changeA" ><img src="images/${ad.image }" style="width: 100px; height: 100px;"></a></td>	
	</tr>
</table>

</article>
</c:forEach>
</section>

</body>
</html>