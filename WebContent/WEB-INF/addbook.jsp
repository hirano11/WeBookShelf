<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="AddBookController" method="POST">
<table>
<tr><td>タイトル:</td><td><input name="title"></td></tr>
<tr><td>著者:</td><td><input name="auther"></td></tr>
<tr><td>出版社:</td><td><input name="publisher"></td></tr>
<tr><td>出版日:</td><td><input name="pulicationDate"></td></tr>
<tr><td>キーワード:</td><td><input name="keyword"></td></tr>
<tr><td>備考:</td><td><input name="memo"></td></tr>
<tr><td><input type="submit" value="登録"></td></tr>
<input type="hidden" name="step" value="prepare">
</table>
</form>
</body>
</html>