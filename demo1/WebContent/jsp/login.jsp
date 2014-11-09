<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
</head>
<body>
<form name="loginForm" action="login_action.jsp" method="post">
<table style="text-align:center;width:300px;">
<tr>
	<th>登录窗口</th>
</tr>
<tr>
	<td>用户名</td><td><input name="userName"></td>
</tr>
<tr>
	<td>密码</td><td><input type="password" name="password"></td>
</tr>
<tr>
	<td><input type="submit" name="login" value="登录"></td><td><a href="register.jsp">注册新用户</a></td>
</tr>
</table>
</form>
</body>
</html>