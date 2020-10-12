<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" href="css/form.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">

$(function () {
	$('#login2').mouseover(function () {
		$('#login2').css('color','red');
	});
	
	$('#login3').mouseover(function () {
		$('#login3').css('color','red');
	});
	$('#login2').mouseleave(function () {
		$('#login2').css('color','black');
	});
	$('#login3').mouseleave(function () {
		$('#login3').css('color','black');
	});
	$("input[name='passwd']").keydown(function (key) {
		if(key.keyCode==13){
			$("form[name='loginform']").submit();
			
		}
	});
	$("input[name='id']").keydown(function (key) {
		if(key.keyCode==13){
			$("form[name='loginform']").submit();
			
		}
	});
	
	
	
	$('#login2').click(function () {
		
		var noId=$.trim($('#id').val());
		var noPasswd=$.trim($('#passwd').val());
		
		if(noId == ''){
			alert('아이디를 입력해 주세요');
			return false;
		}else if(noPasswd == ''){
			alert('비밀번호를 입력해 주세요');
			return false;
		}
	});
});
</script>
</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<nav>
</nav>
<section>
<form  name="loginform" action="./memberLoginAction.me" method="post">
<table>
	<tr>
		<td colspan="2" align="center" >
			<a href="ad_AddListSuccess.do"><img src="images/loginLogo.png" style="width: 200px; height: 100px;"></a>
		</td>
	</tr>
	<tr>
		<td>아이디 :</td>
		<td><input type="text" name="id" id = "id"/></td>
	</tr>
	<tr>
		<td>비밀번호 :</td>
		<td><input type="password" name="passwd" id = "passwd"/></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<a href="javascript:loginform.submit()" id="login2" class="no_deco black_text">로그인</a>&nbsp;&nbsp;
			<a href="memberJoin.me" id="login3" class="no_deco black_text">회원가입</a>
		</td>
	</tr>
</table>
</form>
</section>
</body>
</html>