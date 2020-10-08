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

</script>
</head>
<body>
<jsp:include page="AdminPage.jsp"></jsp:include>


<section>
<form action="./memberModifyAction.me" method="post" onclick="">
<table>
	<tr>
		<td>아이디 :</td>
		<td><input type="text" id="id" name="id" maxlength="13" readonly="readonly" value="${member.id }">*수정불가</td>
	</tr>
	<tr>
		<td>비밀 번호 :</td>
		<td><input type="text" id="passwd" name="passwd" required="required" value="${member.passwd }"></td>
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