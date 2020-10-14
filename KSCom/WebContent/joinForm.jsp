<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
<link rel="stylesheet" href="css/form.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script type="text/javascript">

$(function () {
	
	$('.hoverPw').mouseover(function () {
		$('.hoverPw').text('8~15,특수기호 포함');
		
	});
	$('.hoverPw').mouseleave(function () {
		$('.hoverPw').text('☞작성 요령');
		
	});
	//모바일을 위한 클릭 이벤트
	$('.hoverPw').click(function () {
		$('.hoverPw').text('비밀번호는 8자리이상 15자리 이하로 작성해 주세요');
	});
	
});


function checkValue()
{
    var form = document.userInfo;
    var pw = $("#passwd").val();
    var num = pw.search(/[0-9]/g);
    var eng = pw.search(/[a-z]/ig);
    var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
    
    if(!form.id.value){
        alert("아이디를 입력하세요.");
        return false;
    }
    
    
    if(form.idDuplication.value != "idCheck"){
        alert("아이디 중복체크를 해주세요.");
        return false;
    }
    
    if(!form.passwd.value){
        alert("비밀번호를 입력하세요.");
        return false;
    }
    if(pw.length<8 || pw.length>15){
    	alert('비밀번호는 8이상~15이하 이내로 입력해주세요');
    	return false;
    }else if(num<0 ||eng<0 ||spe<0){
    	alert('영문,숫자,특수 문자 조합하여 입력해주세요.');
    	return false;
    }
    // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
    if(form.passwd.value != form.passwdCheck.value ){
        alert("비밀번호가 동일하지 않습니다.");
        return false;
    }
    
    
    if(!form.name.value){
        alert("이름을 입력하세요.");
        return false;
    }
    
    if(!form.age.value){
    	alert("나이를 입력하세요.");
    	return false;
    }
    
    if(!form.addr.value){
        alert("주소를 입력하세요.");
        return false;
    }
    
    if(!form.email.value){
        alert("메일 주소를 입력하세요.");
        return false;
    }
    

}


// 아이디 중복체크 화면open
function openIdChk(){

	
    window.open("idCheck.jsp?",
            "chkForm", "width=500, height=300 ");  
    
}

function pValue() {
	document.getElementById("id").value=opener.document.userInfo.id.value;
	
}

function inputIdChk(){
	 document.userInfo.idDuplication.value ="idUncheck";
}





</script>
</head>
<body onload="pValue()">
<jsp:include page="template.jsp"></jsp:include>
<nav>
</nav>
<section>
<form action="./memberJoinAction.me" method="post" name="userInfo" onsubmit="return checkValue()">
<table>
	<tr>
		<td colspan="2">
			<h1>회원가입 페이지</h1>
		</td>
	</tr>
	<tr>
		<td>아이디 :</td>
		<td>
		<input type="text" name="id" id ="id"  maxlength="14" onkeydown="inputIdChk()" />
		<input type="button" value="중복확인" onclick="openIdChk()">
		<input type="hidden" name="idDuplication" value="idUncheck">
		</td>
	</tr>
	<tr>
		<td>비밀번호 : </td>
		<td><input type="password" name="passwd" id = "passwd"/>
		<span class="hoverPw ad_h4">☞작성 요령</span>
		</td>
	</tr>
	<tr>
		<td>비밀번호 확인 </td>
		<td><input type="password" name="passwdCheck" onkeypress="return checkNumber(event)">
	<tr>
		<td>이름 : </td>
		<td><input type="text" name="name" id = "name" maxlength="14"/></td>
	</tr>
	<tr>
		<td>나이 : </td>
		<td><input type="number" name="age"  id = "age" class="onlyNum"  maxlength="3" /></td>
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
			<input type="submit" value="회원 가입" />
			<input type="button" value="뒤로가기" onclick="history.back();"/>
 		</td>
	</tr>
</table>
</form>

</section>
<footer>
<jsp:include page="footer.jsp"></jsp:include>
</footer>
</body>
</html>