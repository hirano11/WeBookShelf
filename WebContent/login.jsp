<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログインページ</title>
</head>
<body>
	<form action="/webookshelf/LoginController" method="POST">
		<div>
			<p>ログインフォーム(pass:qwer)</p>
		</div>
		<div>
			userName:<input type="text" name="userName">
		</div>
		<div>
			password:<input type="password" name="password">
		</div>
		<div>
			<input type="submit" value="login">
		</div>
	</form>
</body>
</html>