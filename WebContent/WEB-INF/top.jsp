<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.LoginForm" %>
<% LoginForm loginForm = (LoginForm)session.getAttribute("loginForm"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>topページ</div>
	<%= loginForm.getUserName() %>くんちんちん
</body>
</html>