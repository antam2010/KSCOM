<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	.banner {position: relative; width: 340px; height: 210px; top: 50px;  margin:0 auto; padding:0; overflow: hidden;}
	.banner ul {position: absolute; margin: 0px; padding:0; list-style: none; }
	.banner ul li {float: left; width: 340px; height: 210px; margin:0; padding:0;}
</style>
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
	

	var $banner = $(".banner").find("ul");

	var $bannerWidth = $banner.children().outerWidth();//이미지의 폭
	var $bannerHeight = $banner.children().outerHeight(); // 높이
	var $length = $banner.children().length;//이미지의 갯수
	var rollingId;

	//정해진 초마다 함수 실행
	rollingId = setInterval(function() { rollingStart(); }, 3000);//다음 이미지로 롤링 애니메이션 할 시간차a

	function rollingStart() {
		$banner.css("width", $bannerWidth * $length + "px");
		$banner.css("height", $bannerHeight + "px");
		//alert(bannerHeight);
		//배너의 좌측 위치를 옮겨 준다.
		$banner.animate({left: - $bannerWidth + "px"}, 1500, function() { //숫자는 롤링 진행되는 시간이다.
			//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
			$(this).append("<li>" + $(this).find("li:first").html() + "</li>");
			//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
			$(this).find("li:first").remove();
			//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
			$(this).css("left", 0);
			//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
		});
	}
	
	
	
	
	
	
	
	
	
});



</script>
<title>컴퓨터리스트</title>
</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>

<section>

<article>

<div class="banner">
			
			<ul>
				<c:forEach var="add" items="${brand }">
				<li><a href="#" class="changeA"><img src="images/${image }" style="width:340px; height: 210px; "></a></li>
				</c:forEach>
			</ul>
		</div>
	

</article>

</section>

</body>
</html>