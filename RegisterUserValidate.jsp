<%@ page import="java.sql.*" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<head>
<script language="javascript">
	javascript:window.history.foward(-1);
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Feedback Analysis System</title>
</head>
<body>

<%
	String name1 = request.getParameter("name");
	String uname = request.getParameter("username");
	String pass = request.getParameter("password");
	String email = request.getParameter("emailId");
	String selected = request.getParameter("select");
	String EmailId = email+"@"+selected;
	String add= request.getParameter("address");
	String phone = request.getParameter("phoneNumber");
	String dob1 = request.getParameter("DOB");
	String quest = request.getParameter("question");
	String ans1 = request.getParameter("ans");
	PreparedStatement pst;
	ResultSet rs ;
	try {
		DriverManager.registerDriver(new OracleDriver());
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","manager");
		pst=con.prepareStatement("insert into registeruser values(?,?,?,?,?,?,?,?,?)");
		pst.setString(1, name1);
		pst.setString(2, uname);
		pst.setString(3, pass);
		pst.setString(4, EmailId);
		pst.setString(5, add);
		pst.setString(6, phone);
		pst.setString(7, dob1);
		pst.setString(8, quest);
		pst.setString(9, ans1);
	    pst.executeUpdate();
		out.println("success");
%>
<jsp:forward page="Login.jsp" />
<%
}
	catch (SQLException se) {
		System.out.println("sql exception has occuttreee " + se);
	}
%>

</body>
</html>