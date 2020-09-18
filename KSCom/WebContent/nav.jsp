<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/form.css">

<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".ready").click(function(){
		alert('아직 준비중 입니다.');
	});	
});
</script>
</head>
<body>
	<nav>
		<ul>
			<li><a href="cpuList.do">CPU</a></li>
			<li><a href="ramList.do">RAM</a></li>
		 	<li><a href="mainboardList.do">MainBoard</a></li>
		 	<li><a href="gpuList.do">그래픽카드</a></li>
		 	<li><a href="com_caseList.do">컴퓨터케이스</a></li>
		 	<li><a href="#" class="ready">Power</a></li>
		 	<li><a href="#" class="ready">HDD</a></li>
		 	<li><a href="#" class="ready">SSD</a></li>
		 	<li><a href="#" class="ready">주변기기</a></li>
		</ul>
	</nav>
</body>
</html>