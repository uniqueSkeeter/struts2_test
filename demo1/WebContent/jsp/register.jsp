<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
</head>
<body>
<form name="registerForm" action="register_action.jsp" method="post">
用户名:&nbsp;&nbsp;<input name="userName"><br>
密码:&nbsp;&nbsp;&nbsp;<input type="password" name="password"><br>
密码确认:&nbsp;<input type="password" name="passwordConfirm"><br>
邮箱:&nbsp;&nbsp;&nbsp;<input name="email"><br>
确认:&nbsp;&nbsp;&nbsp;<input type="submit" name="submitConfirm">
</form>
</body>
</html>