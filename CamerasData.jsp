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
	String battery = request.getParameter("bat");
	String pixels = request.getParameter("pix");
	String flash = request.getParameter("flash");
	String zoom = request.getParameter("zoom");
	String face = request.getParameter("face");
	String shooting = request.getParameter("shooting");
	String image = request.getParameter("image");
	String sensor = request.getParameter("sensor");
	String price1 = request.getParameter("price");
	String imageUrl = request.getParameter("imageUrl");
	PreparedStatement pst;
	ResultSet rs ;
	try {
		DriverManager.registerDriver(new OracleDriver());
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","manager");
		pst=con.prepareStatement("insert into camera (company,productname,battery,pixels,flash,zoom,face_detection,shoting_modes,image,sensor,price,imageurl) values (?,?,?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1, comp1);
		pst.setString(2, product1);
		pst.setString(3, battery);
		pst.setString(4, pixels);
		pst.setString(5, flash);
		pst.setString(6, zoom);
		pst.setString(7, face);
		pst.setString(8, shooting);
		pst.setString(9, image);
		pst.setString(10, sensor);
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