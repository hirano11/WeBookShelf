<%@page import="controller.PutBookServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.LoginForm" %>
<% LoginForm loginForm = (LoginForm)session.getAttribute("loginForm"); %>
<% String name = controller.PutBookServlet.getNotNullString(request.getParameter("name"));%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//cdn.rawgit.com/noelboss/featherlight/1.7.13/release/featherlight.min.css" type="text/css" rel="stylesheet" />
<style type="text/css">
.lightbox { display: none; }
img {
    width: 10%;    /* 横幅を割合で指定 */
    height: auto;  /* 高さは自動指定 */
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div>topページ</div>
<br>
<br>
<form method = post action="PutBookServlet" >
<input type = text  name= text1 >
<input type = submit value ="本を登録">
</form>
<br>
<br>
<div class="btn-group">
  <a class="btn btn-default"  href="#" data-featherlight="#demo1"><img src="https://images-na.ssl-images-amazon.com/images/I/51p6dqvB3lL._SX351_BO1,204,203,200_.jpg"></a>
  <a class="btn btn-default" href="https://images-na.ssl-images-amazon.com/images/I/51p6dqvB3lL._SX351_BO1,204,203,200_.jpg" data-featherlight="image">クリック！</a>
  <%= name%>
</div>
<div class="lightbox" id="demo1">
  <h2>javaのほん</h2>
  <p>みまくんちんちん</p>
</div>

	<script src="//code.jquery.com/jquery-latest.js"></script>
	<script src="//cdn.rawgit.com/noelboss/featherlight/1.7.13/release/featherlight.min.js" type="text/javascript" charset="utf-8"></script>

	</body>
</html>