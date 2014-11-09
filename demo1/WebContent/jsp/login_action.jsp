<%@ include file="inc.jsp" %>
<%
	String userName = request.getParameter("userName");
	String password = request.getParameter("password");
	if(userName == null || password == null){
		response.sendRedirect("login.jsp");
	}
	boolean isValid = false;
	String getUserSql = " SELECT * FROM user WHERE userName = '"+userName+"' AND password = '"+password+"' ";
	try{
		Class.forName(drv).newInstance();
		Connection conn = DriverManager.getConnection(url,usr,pwd);
		Statement stm = conn.createStatement();
		ResultSet rs = stm.executeQuery(getUserSql);
		if(rs.next())isValid = true;
		rs.close();
		stm.close();
		conn.close();
	}catch(Exception e){
		e.printStackTrace();
		out.println(e);
	}
	
	if(isValid){
		session.setAttribute("userName", userName);
		response.sendRedirect("welcome.jsp");
	}else{
		response.sendRedirect("login.jsp");
	}
%>