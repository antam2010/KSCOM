<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/form.css">
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
$(function(){
	$(document).ready(function(){
		$("#id").val('${member.id}');
	});
	$(document).ready(function(){
		$("#name").val('${member.name}');
	});
	$(document).ready(function(){
		$("#passwd").val('${member.passwd}');
	});
	$(document).ready(function(){
		$("#age").val('${member.age}');
	});
	$(document).ready(function(){
		$("#addr").val('${member.addr}');
	});
	$(document).ready(function(){
		$("#email").val('${member.email}');
	});
	
	
});
</script>
</head>
<body>
<jsp:include page="AdminPage.jsp"></jsp:include>


<section>
<form action="./memberModifyAction.me" method="post" onclick="">
<table>
	<tr>
		<td>아이디 :</td>
		<td><input type="text" id="id" name="id" maxlength="13" readonly="readonly">*수정불가</td>
	</tr>
	<tr>
		<td>비밀 번호 :</td>
		<td><input type="text" id="passwd" name="passwd"></td>
	</tr>
	<tr>
		<td>이름 :</td>
		<td><input type="text" id="name" name="name" maxlength="13" ></td>
	</tr>
	<tr>
		<td>나이 : </td>
		<td><input type="text" name="age"  id = "age" class="onlyNum"/></td>
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
			<input type="submit" value="수정 하기" onclick="confirm('정말로 수정하시겠습니까?')" />
			<input type="button" value="뒤로가기" onclick="history.back();"/>
			
 		</td>
	</tr>
</table>
</form>	



</section>

</body>
</html>