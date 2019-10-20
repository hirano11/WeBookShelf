<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.LoginForm"%>
<% LoginForm loginForm = (LoginForm)session.getAttribute("loginForm"); %>
<%@page import="java.io.*, java.util.*" %>


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
<center>ここに本一覧表示？とりあえず札幌のweb本棚からもってきて読み込んでる
<br>

<table border="1">
<tr>
  <th>所有者</th><th>タイトル</th><th>価格</th><th>備考</th><th>リンク</th>
</tr>

<%
  String tmp;
  StringTokenizer stk;
  FileReader fr = new FileReader(application.getRealPath("examplebook.tsv"));
  BufferedReader br = new BufferedReader(fr);

  while (br.ready()) {
    tmp = br.readLine();
    stk = new StringTokenizer(tmp, "\t");
    out.println("<tr>");
    while (stk.hasMoreTokens()) {
      out.println("<td>" + stk.nextToken() + "</td>");
    }
    out.println("</tr>");
    }
  br.close();

%>
</table>
</center>

</body>
</html>