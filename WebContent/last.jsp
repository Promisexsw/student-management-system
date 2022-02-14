<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>写入cookie</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String user=URLEncoder.encode(request.getParameter("username"),"utf-8");
		String pwd=URLEncoder.encode(request.getParameter("userword"),"utf-8");
		Cookie cookie=new Cookie("mrCookie",user+"#"+pwd);
		cookie.setMaxAge(30);
		response.addCookie(cookie);
		
		//session 1
		session.setAttribute("username",user);
		session.setAttribute("password",pwd);
	%>
<script>
 window.location.href=" manage.jsp"
</script>
</body>
</html>
