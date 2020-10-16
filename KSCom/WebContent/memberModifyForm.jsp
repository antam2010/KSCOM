<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/form.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
function checkValue()
{
    var form = document.modifyInfo;
    var pw = $("#passwd").val();
    var num = pw.search(/[0-9]/g);
    var eng = pw.search(/[a-z]/ig);
    var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
    
    if(!form.id.value){
        alert("아이디를 입력하세요.");
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
</script>
</head>
<body>
<jsp:include page="AdminPage.jsp"></jsp:include>


<section>
<form action="./memberModifyAction.me" method="post"  name="modifyInfo" onsubmit="return checkValue()">
<table>
	<tr>
		<td>아이디 :</td>
		<td><input type="text" id="id" name="id" maxlength="13" readonly="readonly" value="${member.id }"><span class="ad_h4 light_com">*수정불가</span></td>
	</tr>
	<tr>
		<td>비밀 번호 :</td>
		<td><input type="password" id="passwd" name="passwd" required="required" value=""></td>
	</tr>
	<tr>
		<td>이름 :</td>
		<td><input type="text" id="name" name="name" maxlength="13"  required="required" value="${member.name }"></td>
	</tr>
	<tr>
		<td>나이 : </td>
		<td><input type="text" name="age"  id = "age" class="onlyNum" required="required" value="${member.age }"/></td>
	</tr>
	<tr>
		<td><label for = "gender">성별 : </label></td>
		<td>
			<c:choose>
				<c:when test="${member.gender eq '남' }">
				<input type="radio" name="gender" value="남"  id = "gender" checked="checked"/>남자
				<input type="radio" name="gender" value="여"/>여자
				</c:when>
			<c:otherwise>
				<input type="radio" name="gender" value="남"  id = "gender" />남자
				<input type="radio" name="gender" value="여" checked="checked"/>여자
			</c:otherwise>
			</c:choose>
			
			
		</td>
	</tr>
	<tr>
		<td>주소 :</td>
		<td><input type="text" name="addr" id="addr" required="required"/ value="${member.addr }"></td>
	<tr>
		<td>이메일 주소 : </td>
		<td><input type="text" name="email" id="email" required="required" value="${member.email }"/></td>
	</tr>
	<tr>
		<td align="center" colspan="2">
			<input type="submit" value="수정 하기" onclick="confirm('정말로 수정하시겠습니까?')" />
			<input type="button" value="뒤로가기" onclick="history.back();"/>
			
 		</td>
	</tr>
</table>
</form>	



</section>

</body>
</html>