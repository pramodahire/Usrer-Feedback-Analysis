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
	String type = request.getParameter("type");
	String screen = request.getParameter("screen");
	String audio = request.getParameter("audio");
	String video = request.getParameter("video");
	String power = request.getParameter("power");
	String design = request.getParameter("design");
	String price = request.getParameter("price");
	String imageUrl = request.getParameter("imageUrl");
	PreparedStatement pst;
	ResultSet rs ;
	try {
		DriverManager.registerDriver(new OracleDriver());
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","manager");
		pst=con.prepareStatement("insert into television (company,productname,type,screen_size_resolution,audio,video,power,design_and_dimensions,price,imageurl) values (?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1, comp1);
		pst.setString(2, product1);
		pst.setString(3, type);
		pst.setString(4, screen);
		pst.setString(5, audio);
		pst.setString(6, video);
		pst.setString(7, power);
		pst.setString(8, design);
		pst.setString(9, price);
		pst.setString(10, imageUrl);
		
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