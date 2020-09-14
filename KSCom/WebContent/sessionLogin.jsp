<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%session.setAttribute("MEMBER_ID", request.getParameter("MEMBER_PW")); %>    <!-- //파라미터를 받아서 세션값을 설정한다. -->
<%session.setAttribute("MEMBER_PW", request.getParameter("MEMBER_PW")); %>
<html>
<head>
<title>Session Login</title>
</head>
<body>
    <h3>로그인 되었습니다.</h3>
    <h3>Login ID : <%=(String)session.getAttribute("MEMBER_ID") %></h3>    <!-- // 이와같이 브라우저가 유지되는동안  -->
    <h3>Login PASSWORD : <%=(String)session.getAttribute("MEMBER_PW") %></h3>  <!-- //세션값들은 계속 유지된다. -->
    <a href="sessionLogout.jsp">로그아웃</a>
</body>
</html>