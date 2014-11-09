<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎</title>
</head>
<body>
<table style="width:100%;">
<tr>
	<td>登录成功</td>
</tr>
<tr>
	<td>欢迎你</td>
</tr>
<tr>
	<td><%=session.getAttribute("userName")%></td>
</tr>
</table>
</body>
</html>