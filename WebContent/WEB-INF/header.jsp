<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.LoginForm"%>
<% LoginForm loginForm = (LoginForm)session.getAttribute("loginForm");
   String username = loginForm.getUserName();%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/webookshelf/css/test.css">
</head>

<!-- BEGIN header -->
<TABLE align=center width='100%' cellspacing=0 cellpadding=3 border=0>
 <TR>
  <TD bgcolor="#339933" width=90% align=left valign=middle nowrap>
   <FONT color="#ffffff">
   <center>
   <B>Web本棚</B>
   <FONT color="#ffffff" size=-1>
   <B>
   (利用者：<%= username %> さん)
   </B>
   </center></FONT>
  </TD>
 </TR>
 </TABLE>

<TABLE align=center width='100%' cellspacing=0 cellpadding=3 border=0>
 <TR>
  <TD bgcolor="#333333" width=90% align=left valign=middle nowrap>
 <center>
   <div class="btn-border">
   <form action="BackController" method="GET" >
   <input type="submit" class="btn-border" value="top" >
   </form>
   </div>
   <div class="btn-border">
   <form action="AddBookController" method="GET" class="container">
   <input type="submit" class="btn-border" value="本を登録" >
   </form>
   </div>
   <div class="btn-border">
   <form action="BackController" method="GET" class="container">
   <input type="submit" class="btn-border" value="本を削除" >
   </form>
   </div>
   <div class="btn-border">
   <form action="BackController" method="GET" class="container">
   <input type="submit" class="btn-border" value="本を検索" >
   </form>
   </div>
   <div class="btn-border">
   <form action="BackController" method="GET" class="container">
   <input type="submit" class="btn-border" value="ログアウト" >
   </form>
   </div>
   </center>
   </TD></TR></TABLE>

</html>
