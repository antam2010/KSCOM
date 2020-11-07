<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	
</style>
</head>
<body>
<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<form action="boardWrite.do" method="post" enctype="multipart/form-data">
<h3 align="center">게시판</h3>
<table border="1">
	
	<tr>
		<td>아이디 : </td>
		<td><input type="text" name="name" value="${id }" readonly="readonly"></td>
	</tr>
	<tr>
		<td>제목 :</td>
		<td><input type="text" name="subject" value="" placeholder="글 제목 입력"></td>
	</tr>
	<tr>
		<td class="">첨부 파일  :</td>
		<td><input type="file" name="file" ></td>
	</tr>
	<tr>
		<td>내용  :</td>	
		<td><textarea name="content" rows="10" cols="100" placeholder="내용 입력"  ></textarea></td>
	</tr>
</table>
<div style="text-align: center;">
<input type="submit" value="전송">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="뒤로가기" onclick="history.back()">
</div>
</form>
</section>
</body>
</html>