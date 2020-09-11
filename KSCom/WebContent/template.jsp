<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "vo.Member" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/form.css">
<style>

</style>
</head>
<body>
<header>
	<ul>
	<li>
		<%
			String id = (String)session.getAttribute("id");
		    String grade = (String)session.getAttribute("grade");
		    Member member = (Member)session.getAttribute("member");
		    if(id == null){
		%>
			<a href = "loginForm.html">로그인</a>
		<%
		    }
		    else{
		%>
			<li>[<%if(grade!=null&&grade.equals("1")){%>관리자
			<%}else if(grade!=null&&grade.equals("0")) { %>회원<%} %>]<br>
			${id}님 환영합니다.
			<a href = "logout">로그아웃</a>
		<%
		    }
		%>
		</li>
		<li><a href="JoinForm.jsp">회원가입</a></li>
		<li><a href="cpuCartList.do">장바구니</a></li>
		<li><a href="comList.jsp">제품보러가기</a></li>
	</ul>
</header>

<nav>

</nav>
</body>
</html>
