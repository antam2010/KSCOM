<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
<link rel="stylesheet" href="css/form.css">
</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<nav>
</nav>
<section>
<form name="joinform" action="./memberJoinAction.me" method="post">
<table>
	<tr>
		<td colspan="2">
			<h1>회원가입 페이지</h1>
		</td>
	</tr>
	<tr>
		<td>아이디 :  </td>
		<td><input type="text" name="id" id ="id"/></td>
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
		<td><input type="text" name="email" id ="email"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<a href="javascript:joinform.submit()">회원가입</a>&nbsp;&nbsp;
			<a href="javascript:joinform.reset()">다시작성</a>
		</td>
	</tr>
</table>
</form>
</section>
</body>
</html>