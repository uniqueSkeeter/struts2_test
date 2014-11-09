<%@ include file="inc.jsp" %>
<%
	String userName = request.getParameter("userName");
	String password = request.getParameter("password");
	String passwordConfirm = request.getParameter("passwordConfirm");
	String email = request.getParameter("email");
	if(!userName.equals(passwordConfirm)){
		response.sendRedirect("register.jsp");
	}else{
	boolean isValid = false;
	String addUserSql = " INSERT INTO user(userName , password , email)VALUES('"+userName+"','"+password+"','"+email+"' )";
	try{
		Class.forName(drv).newInstance();
		Connection conn = DriverManager.getConnection(url,usr,pwd);
		Statement stm = conn.createStatement();
		stm.executeUpdate(addUserSql);
		stm.close();
		conn.close();
		isValid = true;
	}catch(Exception e){
		e.printStackTrace();
		out.println(e);
	}
	if(isValid){
		response.sendRedirect("login.jsp");
	}else{
		response.sendRedirect("register.jsp");
	}
	}
%>