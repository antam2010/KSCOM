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
<script>
    $(function(){
        var mySlider = $("#slideBanner").bxSlider({
            mode:"horizontal",    // 가로 수평으로 슬라이드된다.
            speed:500,        // 이동 속도를 설정한다.
            pause:1000,
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
    
    
    
    
</script>
<style>
    
   
    #prevBtn{
        position:absolute;
        left:0;
        top:10px;
    }
    #nextBtn{
        position:absolute;
        right:15px;
        top:10px;
    }
    .center{
    	text-align: center;
    }
</style>
	<link rel="stylesheet" href="css/jquery.bxslider.min.css">
	
</head>
<body>
    <div id="bannerWrap" class="center">
        <ul id="slideBanner">
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
           	    <input type="hidden"  value="${ad3.brand }" class="test2" name="test2">
				<input type="hidden" name="test3" class="test3" value="${ad3.product_id }">
                <a href="#" class="changeC"><img src="images/${ad3.image }" style="width: 240px; height: 240px;"></a>
              
           </li>
           </c:if>
           	<c:if test="${ad4.product_id ne null }">
            <li>
           	    <input type="hidden"  value="${ad4.brand }" class="test2" name="test2">
				<input type="hidden" name="test3" class="test3" value="${ad4.product_id }">
                <a href="#" class="changeD"><img src="images/${ad4.image }" style="width: 240px; height: 240px;"></a>
           </li>
           </c:if>

        </ul>
<!--       		<a href="#" id="prevBtn"><img src="image/prevBtn.png" alt="이전 버튼"></a> -->
<!--             <a href="#" id="nextBtn"><img src="image/nextBtn.png" alt="다음 버튼"></a> -->
            
      
    </div>
</body>
</html>