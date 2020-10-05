<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            autoControls:true,
            pager:false,    // 현재 위치 페이지 표시 여부를 설정한다.
            moveSlides:1,    // 슬라이드 이동 시 개수를 설정한다.
            
            minSlides:1,    // 최소 노출 개수를 설정한다.
            maxSlides:1,    // 최대 노출 개수를 설정한다.
            
            auto:true,         // 자동으로 흐를지 여부를 설정한다.
            autoHover:true, // 마우스오버 시 정지할지를 설정한다.
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
    *{
        margin:0;
        padding:0;
    }
    img{
        border:none 0;
        
        width: 100%;
        height: 100%;
    }
   
    
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
</style>
	
</head>
<body>
    <div id="bannerWrap">
        <ul id="slideBanner">
           <li>
                   <a href="#"><img src="images/cpu_i5.jpg" alt="사진1"></a>
           </li>
           <li>
                   <a href="#"><img src="images/cpu_i5.jpg" alt="사진2"></a>
           </li>
           <li>
                   <a href="#"><img src="image/pic3.jpg" alt="사진3"></a>
           </li>
           <li>
                   <a href="#"><img src="image/pic4.jpg" alt="사진4"></a>
           </li>
          
        </ul>
        <p>
            <a href="#" id="prevBtn"><img src="image/prevBtn.png" alt="이전 버튼"></a>
        </p>
        <p>
            <a href="#" id="nextBtn"><img src="image/nextBtn.png" alt="다음 버튼"></a>
        </p>
    </div>
</body>
</html>