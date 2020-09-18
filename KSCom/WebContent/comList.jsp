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
<c:if test="${id eq 'admin' }">
<section>
	<ul>	
		<li><a href="cpuRegistForm.do" class="adPage">CPU등록</a></li>
		<li><a href="ramRegistForm.do" class="adPage">램 등록</a></li>
 		<li><a href="mainboardRegistForm.do" class="adPage">메인보드 등록</a></li>
 		<li><a href="gpuRegistForm.do" class="adPage">그래픽카드 등록</a></li>
 		<li><a href="com_caseRegistForm.do" class="adPage">컴퓨터 케이스 등록</a></li>
 	</ul>
 	
</section> 
</c:if>

</body>
</html>