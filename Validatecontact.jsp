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
	String uname1 = request.getParameter("usernm");
	String email1 = request.getParameter("cemail");
	String selected = request.getParameter("select");
	String EmailId = email1+"@"+selected;
	String msg1 = request.getParameter("cmsg");
	PreparedStatement pst;
	ResultSet rs ;
	try {
		DriverManager.registerDriver(new OracleDriver());
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","manager");
		pst=con.prepareStatement("insert into contact values(?,?,?)" );
		pst.setString(1, uname1);
		pst.setString(2, EmailId);
		pst.setString(3, msg1);
		
		
	    pst.executeUpdate();
	    out.println("<script type=\"text/javascript\">");
	       out.println("alert('success');");
	       out.println("</script>");
%>
<jsp:forward page="thanks.jsp" />
<%
}
	catch (SQLException se) {
		System.out.println("sql exception has occuttreee " + se);
	}
%>

</body>
</html>