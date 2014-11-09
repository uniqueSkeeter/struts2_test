<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="inc.jsp"%>
<%
	String sql = " select * from user ";
	try{
		Class.forName(drv).newInstance();
		Connection conn = DriverManager.getConnection(url,usr,pwd);
		Statement stm = conn.createStatement();
		ResultSet rs = stm.executeQuery(sql);
		while(rs.next()){
			out.println("ss");
		}
		rs.close();
		stm.close();
		conn.close();
	}catch(Exception e){
		e.printStackTrace();
		out.println(e);
	}
%>