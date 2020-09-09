<%@page import="vo.Cpu"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#listForm{
		width:640px;
		border:1px solid red;
		margin:auto;
	}
	h2{
		text-align:center;
	}
	img{
		width: 280px;
		height: 280px;
		border: none;
	}
	#content_main{
		height:300px;
	}
	#content_left{
		width: 300px;
		float:left;
	}
	#content_right{
		width: 340px;
		float:left;
	}
	#commandList{
		text-align: center;
	}
	#desc{
		height:170px;
		background: skyblue;
	}
</style>
</head>
<body>
<section id = "listForm">
<h2>${cpu.kind}의 상세정보</h2>

	<section id="content_main">
		<section id = "content_left">
			<img src="images/${cpu.image}"/>
		</section>
		<section id = "content_right">
			<b>품종 : </b> ${cpu.kind}<br>
			<b>가격 : </b> ${cpu.price}<br>
			<b>신장 : </b> ${cpu.height}<br>
			<b>체중 : </b> ${cpu.weight}<br>
			<b>원산지 : </b> ${cpu.country}<br>
			<p id="desc">
			<b>내용 : </b> ${cpu.content}<br>
			</p>
		</section>
		<div style="clear:both"></div>
		<nav id = "commandList">
			<a href="cpuList.do">쇼핑계속하기</a>
			<a href="cpuCartAdd.do?id=${cpu.id}">장바구니에담기</a>
		</nav>
	</section>
</section>
</body>
</html>