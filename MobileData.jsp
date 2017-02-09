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
	String comp1 = request.getParameter("comp");
	String product1 = request.getParameter("product");
	String display = request.getParameter("dis");
	String battery = request.getParameter("bat");
	String memory = request.getParameter("mem");
	String processor1 = request.getParameter("processor");
	String operating = request.getParameter("os");
	String camera = request.getParameter("cam");
	String keypad = request.getParameter("key");
	String touch = request.getParameter("touchscreen");
	String price1 = request.getParameter("price");
	String imageUrl = request.getParameter("imageUrl");
	PreparedStatement pst;
	ResultSet rs ;
	try {
		DriverManager.registerDriver(new OracleDriver());
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","manager");
		pst=con.prepareStatement("insert into mobile values (?,?,?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1, comp1);
		pst.setString(2, product1);
		pst.setString(3, display);
		pst.setString(4, battery);
		pst.setString(5, memory);
		pst.setString(6, processor1);
		pst.setString(7, operating);
		pst.setString(8, camera);
		pst.setString(9, keypad);
		pst.setString(10, touch);
		pst.setString(11, price1);
		pst.setString(12, imageUrl);
		
	    pst.executeUpdate();
		out.println("success");
%>
<jsp:forward page="AddProduct.jsp" />
<%
}
	catch (SQLException se) {
		System.out.println("sql exception has occuttreee " + se);
	}
%>

</body>
</html>