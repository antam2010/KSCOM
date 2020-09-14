<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% session.invalidate();%>  <!-- //모든 세션값을 초기화한다. -->
<h3>로그아웃 되었습니다.</h3>
<a href="loginForm.jsp">Login Page...</a>
