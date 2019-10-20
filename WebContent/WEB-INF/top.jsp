<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.LoginForm"%>
<% LoginForm loginForm = (LoginForm)session.getAttribute("loginForm"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="//cdn.rawgit.com/noelboss/featherlight/1.7.13/release/featherlight.min.css"
	type="text/css" rel="stylesheet" />

<link rel="stylesheet" type="text/css" href="/webookshelf/css/test.css">
<script type="text/javascript" src="/webookshelf/js/test.js"></script>


<title>Insert title here</title>
</head>
<body>

<jsp:include page="/WEB-INF/header.jsp" flush="true" />
<br>
<br>
<center>ここに本一覧？</center>



</body>
</html>