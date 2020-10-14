<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript">
    $(function(){
        var mySlider = $("#slideBanner").bxSlider({
            mode:"horizontal",    // 가로 수평으로 슬라이드된다.
            speed:500,        // 이동 속도를 설정한다.
            pause:2000,
            autoControls:false,
            pager:false,    // 현재 위치 페이지 표시 여부를 설정한다.
            moveSlides:1,    // 슬라이드 이동 시 개수를 설정한다.
            auto:true,         // 자동으로 흐를지 여부를 설정한다.
            autoHover:true, // 마우스오버 시 정지할지를 설정한다.
            touchEnabled : (navigator.maxTouchPoints > 0), //멈췄을때 이동가능하게 만든다
            controls:false    // 이전 버튼, 다음 버튼 노출 여부를 설정한다.
        });
        
        // 이전 버튼을 클릭하면 이전 슬라이드로 전환된다.
        $("#prevBtn").on("click", function(){
            // 이전 슬라이드 배너로 이동된다.
            mySlider.goToPrevSlide();
            // <a>의 링크를 차단한다.
            return false;
        });
        
        // 다음 버튼을 클릭하면 다음 슬라이드로 전환한다.
        $("#nextBtn").on("click", function(){
            // 다음 슬라이드 배너로 이동된다.
            mySlider.goToNextSlide();
            // <a>의 링크를 차단한다.
            return false;
        });
    });
    
    $(function () {
    	
    	$('.changeA').click(function () {
    		
    		var brand= $('#list2').val();
    		var proId=$('#list1').val();
    		
    		
//     		램
    		if(brand.indexOf('삼성')!=-1 || brand.indexOf('GelL')!=-1 || brand.indexOf('G.SKILL')!=-1 || brand.indexOf('대원cts')!=-1 || brand.indexOf('아스크텍')!=-1){
    				$(".changeA").attr("href","ramView.do?id="+proId);	
    		//cpu
    		}else if(brand.indexOf('인텔')!=-1 || brand.indexOf('amd')!=-1 || brand.indexOf('기타')!=-1){
    				$(".changeA").attr("href","cpuView.do?id="+proId);	
    		//mainboard
    		}else if(brand.indexOf('MSI')!=-1|| brand.indexOf('ASUS')!=-1 || brand.indexOf('애즈락')!=-1 ||
    				 brand.indexOf('기가바이트')!=-1 || brand.indexOf('바이오스타')!=-1){
    			
    				$(".changeA").attr("href","mainboardView.do?id="+proId);
    		
    		//GPU	
    		}else if(brand.indexOf('이엠텍')!=-1|| brand.indexOf('갤럭시')!=-1 || brand.indexOf('조탁')!=-1 ||
    				 brand.indexOf('MSI_GPU')!=-1 || brand.indexOf('GIGABYTE')!=-1 || brand.indexOf('엠텍코리아')!=-1 ||brand.indexOf('ASUS_GPU')!=-1 ){
    			
    				$(".changeA").attr("href","gpuView.do?id="+proId);
    				
    		//컴케이스
    		}else if(brand.indexOf('앱코')!=-1|| brand.indexOf('아이군주')!=-1 || brand.indexOf('마이크로닉스')!=-1 ||
    				 brand.indexOf('COX')!=-1 || brand.indexOf('잘만')!=-1 ){
    			
    				$(".changeA").attr("href","com_caseView.do?id="+proId);
    		
    		}else{
    			alert('잘못된 경로');
    			location.href="ad_AddListSuccess.do";
    			
    			return false;
    		}
    		
    		
     	});
    	
    $('.changeB').click(function () {
    		
    		
    	var brand= $('#list4').val();
    	var proId=$('#list3').val();
    	
    	
//     		램
    		if(brand.indexOf('삼성')!=-1 || brand.indexOf('GelL')!=-1 || brand.indexOf('G.SKILL')!=-1 || brand.indexOf('대원cts')!=-1 || brand.indexOf('아스크텍')!=-1){
    			
    				$(".changeB").attr("href","ramView.do?id="+proId);
    			
    		//cpu
    		}else if(brand.indexOf('인텔')!=-1 || brand.indexOf('amd')!=-1 || brand.indexOf('기타')!=-1){
    			
    				$(".changeB").attr("href","cpuView.do?id="+proId);
    			
    		//mainboard
    		}else if(brand.indexOf('MSI')!=-1|| brand.indexOf('ASUS')!=-1 || brand.indexOf('애즈락')!=-1 ||
    				 brand.indexOf('기가바이트')!=-1 || brand.indexOf('바이오스타')!=-1){
    			
    				$(".changeB").attr("href","mainboardView.do?id="+proId);
    			
    		//GPU	
    		}else if(brand.indexOf('이엠텍')!=-1|| brand.indexOf('갤럭시')!=-1 || brand.indexOf('조탁')!=-1 ||
    				 brand.indexOf('MSI_GPU')!=-1 || brand.indexOf('GIGABYTE')!=-1 || brand.indexOf('엠텍코리아')!=-1 ||brand.indexOf('ASUS_GPU')!=-1 ){
    			
    				$(".changeB").attr("href","gpuView.do?id="+proId);
    			
    		//컴케이스
    		}else if(brand.indexOf('앱코')!=-1|| brand.indexOf('아이군주')!=-1 || brand.indexOf('마이크로닉스')!=-1 ||
    				 brand.indexOf('COX')!=-1 || brand.indexOf('잘만')!=-1 ){
    			
    				$(".changeB").attr("href","com_caseView.do?id="+proId);
    			
    		}else{
    			alert('잘못된 경로');
    			location.href="ad_AddListSuccess.do";
    			
    			return false;
    		}
    		
    		
     	});

    $('.changeC').click(function () {
    	
    	
    	var brand= $('#list6').val();
    	var proId=$('#list5').val();
    	
    	

    	

//    		램
    	if(brand.indexOf('삼성')!=-1 || brand.indexOf('GelL')!=-1 || brand.indexOf('G.SKILL')!=-1 || brand.indexOf('대원cts')!=-1 || brand.indexOf('아스크텍')!=-1){
    		
    			$(".changeC").attr("href","ramView.do?id="+proId);
    		
    	//cpu
    	}else if(brand.indexOf('인텔')!=-1 || brand.indexOf('amd')!=-1 || brand.indexOf('기타')!=-1){
    		
    			$(".changeC").attr("href","cpuView.do?id="+proId);
    		
    	//mainboard
    	}else if(brand.indexOf('MSI')!=-1|| brand.indexOf('ASUS')!=-1 || brand.indexOf('애즈락')!=-1 ||
    			 brand.indexOf('기가바이트')!=-1 || brand.indexOf('바이오스타')!=-1){
    		
    			$(".changeC").attr("href","mainboardView.do?id="+proId);
    		
    	//GPU	
    	}else if(brand.indexOf('이엠텍')!=-1|| brand.indexOf('갤럭시')!=-1 || brand.indexOf('조탁')!=-1 ||
    			 brand.indexOf('MSI_GPU')!=-1 || brand.indexOf('GIGABYTE')!=-1 || brand.indexOf('엠텍코리아')!=-1 ||brand.indexOf('ASUS_GPU')!=-1 ){
    		
    			$(".changeC").attr("href","gpuView.do?id="+proId);
    		
    	//컴케이스
    	}else if(brand.indexOf('앱코')!=-1|| brand.indexOf('아이군주')!=-1 || brand.indexOf('마이크로닉스')!=-1 ||
    			 brand.indexOf('COX')!=-1 || brand.indexOf('잘만')!=-1 ){
    		
    			$(".changeC").attr("href","com_caseView.do?id="+proId);
    		
    	}else{
    		alert('잘못된 경로');
    		location.href="ad_AddListSuccess.do";
    		
    		return false;
    	}
    	
    	
    	});
    	
    $('.changeD').click(function () {
    	
    	var brand= $('#list8').val();
    	var proId=$('#list7').val();
    	
//    		램
    	if(brand.indexOf('삼성')!=-1 || brand.indexOf('GelL')!=-1 || brand.indexOf('G.SKILL')!=-1 || brand.indexOf('대원cts')!=-1 || brand.indexOf('아스크텍')!=-1){
    		
    			$(".changeD").attr("href","ramView.do?id="+proId);
    		
    	//cpu
    	}else if(brand.indexOf('인텔')!=-1 || brand.indexOf('amd')!=-1 || brand.indexOf('기타')!=-1){
    		
    			$(".changeD").attr("href","cpuView.do?id="+proId);
    		
    	//mainboard
    	}else if(brand.indexOf('MSI')!=-1|| brand.indexOf('ASUS')!=-1 || brand.indexOf('애즈락')!=-1 ||
    			 brand.indexOf('기가바이트')!=-1 || brand.indexOf('바이오스타')!=-1){
    		
    			$(".changeD").attr("href","mainboardView.do?id="+proId);
    		
    	//GPU	
    	}else if(brand.indexOf('이엠텍')!=-1|| brand.indexOf('갤럭시')!=-1 || brand.indexOf('조탁')!=-1 ||
    			 brand.indexOf('MSI_GPU')!=-1 || brand.indexOf('GIGABYTE')!=-1 || brand.indexOf('엠텍코리아')!=-1 ||brand.indexOf('ASUS_GPU')!=-1 ){
    		
    			$(".changeD").attr("href","gpuView.do?id="+proId);
    		
    	//컴케이스
    	}else if(brand.indexOf('앱코')!=-1|| brand.indexOf('아이군주')!=-1 || brand.indexOf('마이크로닉스')!=-1 ||
    			 brand.indexOf('COX')!=-1 || brand.indexOf('잘만')!=-1 ){
    		
    			$(".changeD").attr("href","com_caseView.do?id="+proId);
    		
    	}else{
    		alert('잘못된 경로');
    		location.href="ad_AddListSuccess.do";
    		
    		return false;
    	}
    	
    	
    	});
    });
    	 
    	
//제이쿼리 끝



</script>

<style>
    
   
   
    .center{
    	text-align: center;
    }
</style>
	<link rel="stylesheet" href="css/jquery.bxslider.min.css">
	
</head>
<body>
    <div id="bannerWrap" class="center">
        <ul id="slideBanner" class="center">
        	<c:set var="ad" value="${adList[0] }"/>
			<c:set var="ad2" value="${adList[1] }"/>
			<c:set var="ad3" value="${adList[2] }"/>
			<c:set var="ad4" value="${adList[3] }"/>
			<c:if test="${ad.product_id ne null }">			
           <li>
           	    <input type="hidden"  value="${ad.brand }" id="list2" name="list2">
				<input type="hidden" name="list1" id="list1" value="${ad.product_id }">
                <a href="#" class="changeA"><img src="images/${ad.image }" style="width: 240px; height: 240px;"></a>
                
              
           </li>
           </c:if>
           <c:if test="${ad2.product_id ne null }">
            <li>
           	    <input type="hidden"  value="${ad2.brand }" id="list4" >
				<input type="hidden"  id="list3" value="${ad2.product_id }">
                <a href="#" class="changeB"><img src="images/${ad2.image }" style="width: 240px; height: 240px;"></a>
              
           </li>
           </c:if>
           <c:if test="${ad3.product_id ne null }">
            <li>
           	    <input type="hidden"  value="${ad3.brand }" id="list6">
				<input type="hidden" id="list5" value="${ad3.product_id }">
                <a href="#" class="changeC"><img src="images/${ad3.image }" style="width: 240px; height: 240px;"></a>
              
           </li>
           </c:if>
           	<c:if test="${ad4.product_id ne null }">
            <li>
           	    <input type="hidden"  value="${ad4.brand }" id="list8">
				<input type="hidden"id="list7" value="${ad4.product_id }">
                <a href="#" class="changeD"><img src="images/${ad4.image }" style="width: 240px; height: 240px;"></a>
           </li>
           </c:if>

        </ul>
     
     <a href="#" id="prevBtn"><img src="images/nextBtn.png"  alt="이전 버튼"></a>
	 <a href="#" id="nextBtn"><img src="images/prevBtn.png"  alt="다음 버튼"></a>
            
      
    </div>
</body>
</html>