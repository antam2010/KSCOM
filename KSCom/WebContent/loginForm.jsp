<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" href="css/form.css">
</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<nav>
</nav>
<section>
<form name="loginform" action="./memberLoginAction.me" method="post">
<table>
	<tr>
		<td colspan="2">
			<h1>로그인 페이지</h1>
		</td>
	</tr>
	<tr>
		<td>아이디 :</td>
		<td><input type="text" name="id" id = "passwd"/></td>
	</tr>
	<tr>
		<td>비밀번호 :</td>
		<td><input type="password" name="passwd" id = "passwd"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<a href="javascript:loginform.submit()">로그인</a>&nbsp;&nbsp;
			<a href="memberJoin.me">회원가입</a>
		</td>
	</tr>
</table>
</form>
</section>
</body>
</html>