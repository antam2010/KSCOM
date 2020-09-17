<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/form.css">
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script type="text/javascript">

$(function(){
	$(".ready").click(function(){
		alert('아직 준비중 입니다.');
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
	<a href="cpuList.do"><img src="images/cpu_i5.jpg" class="add_image"></a>
	</article>
	<article>
	<a href="gpuList.do"><img src="images/gpu_1.jpg" class="add_iamge"></a>
	</article>
	<article>
	<a href="ramList.do"><img src="images/ram_1.jpg" class="add_image"></a>
	</article>
	<article>
	<a href="mainboardList.do"><img src="images/mainboard_1.png" class="add_image"></a>
	</article>
	<article>
	<a href="com_caseList.do"><img src="images/com_case_1.png" class="add_image"></a>
	</article>
	<article>
	<a class="ready" href="#"><img src="images/power_1.jpg" class="add_iamge"></a>
	</article>
	<article>
	<a class="ready" href="#"><img src="images/hdd_1.jpg" class="add_iamge"></a>
	</article>
	<article>
	<a class="ready" href="#"><img src="images/ssd_1.jpg" class="add_iamge"></a>
	</article>
	<article>
	<a class="ready" href="#"><img src="images/speaker_1.jpg" class="add_iamge"></a>
	</article>
	
</section>


</body>
</html>