
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복체크</title>
<style type="text/css">
#wrap {
	width: 490px;
	text-align: center;
	margin: 0 auto 0 auto;
}

#chk {
	text-align: center;
}
</style>
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script type="text/javascript">

function btnClose() {
	opener.document.userInfo.idDuplication.value="idCheck";
	opener.document.userInfo.id.value=btn.value;
	window.close();
}

function upIdRs() {
	var id2=opener.document.getElementById("id").value;
	$('#id').val(id2);
	
	
	
}

$(function () {
	$('.clickBtn').click(function () {
		opener.document.userInfo.id.value='';
	});
});


	
</script>
</head>
<body onload="upIdRs()">

	<div id="wrap">
		<br> <b><font size="4" color="gray">아이디 중복체크</font></b>
		<hr size="1" width="460">
		<br>
		<div id="chk">
			<form action="memberIdCheckAction.me" name="openInfo">
				<input type="text" name="id" id="id" value=""> <input type="submit"
					value="중복확인" class="clickBtn"><br>
				<c:if test="${result eq false && !empty param.id}">
					<h3>${param.id }는사용 가능합니다.</h3>
					<br>

					<input type="button" value="사용하기"  onclick="btnClose()"/>
					<input type="hidden" id="btn" value="${param.id }">
				</c:if>
				<c:if test="${result eq false && empty param.id }">
					<h3>아이디를 입력해 주세요</h3>
				</c:if>
			</form>
		</div>
	</div>
</body>
</html>
