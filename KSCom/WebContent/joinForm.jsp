<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
<link rel="stylesheet" href="css/form.css">
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script type="text/javascript">

function openIdChk(){
    
	
	window.open("idCheck.jsp","get","height=280,width=500");
}




function inputCheck() {
	if(document.regFrm.id.value==""){
		alert("아이디를 입력해라.");
		document.regFrm.id.focus();
		return false;
	}
	if(document.regFrm.passwd.value==""){
		alert("비밀번호를 입력해라.");
		document.regFrm.passwd.focus();
		return false;
		
	}
	if(document.regFrm.age.value==""){
		alert("나이를 입력해라.");
		document.regFrm.age.focus();
		return false;
		
	}if(document.regFrm.addr.value==""){
		alert("주소를 입력해라.");
		document.regFrm.addr.focus();
		return false;
		
	}
	if(document.regFrm.email.value==""){
		alert("이메일을 입력해라.");
		document.regFrm.email.focus();
		return false;
		
	}
	
	
	
}

</script>
</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<nav>
</nav>
<section>
<form  id="regFrm" name="regFrm" action="./memberJoinAction.me" method="post" >
<table>
	<tr>
		<td colspan="2">
			<h1>회원가입 페이지</h1>
		</td>
	</tr>
	<tr>
		<td>아이디 :  </td>
		<td><input type="text" name="id" id ="id"/>
		<input type="button" value="중복확인" onclick="openIdChk()">
		</td>
	</tr>
	<tr>
		<td>비밀번호 : </td>
		<td><input type="password" name="passwd" id = "passwd"/></td>
	</tr>
	<tr>
		<td>이름 : </td>
		<td><input type="text" name="name" id = "name"/></td>
	</tr>
	<tr>
		<td>나이 : </td>
		<td><input type="text" name="age" maxlength="2" id = "age"/></td>
	</tr>
	<tr>
		<td><label for = "gender">성별 : </label></td>
		<td>
			<input type="radio" name="gender" value="남" checked="checked" id = "gender"/>남자
			<input type="radio" name="gender" value="여"/>여자
		</td>
	</tr>
	<tr>
		<td>주소 :</td>
		<td><input type="text" name="addr" id="addr"/></td>
	<tr>
		<td>이메일 주소 : </td>
		<td><input type="text" name="email" id="email"/></td>
	</tr>
	<tr>
		<td align="center" colspan="2">
			<input type="submit" value="회원 가입" onclick="return inputCheck()"/>
			<input type="reset" value="다시 작성"/>
 		</td>
	</tr>
</table>
</form>
</section>
</body>
</html>