<%@ page language="java" import="java.util.*,java.io.*,java.sql.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>

<%
String username=request.getParameter("username");
String password=request.getParameter("password");

String ans=request.getParameter("ans");

String query="update registeruser set PASSWORD=? where ANSWER=? and USERID=? ";

try
{
	DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","manager");
	
	PreparedStatement pst=con.prepareStatement(query);
	
	pst.setString(1,password);
	pst.setString(2,ans);
	pst.setString(3,username);
	int n=pst.executeUpdate();
	if(n>0){
	%>
<jsp:forward page="Login.jsp" />
<%
	}
}catch(SQLException se){
	System.out.println(se);
}
%>
</body>
</html>