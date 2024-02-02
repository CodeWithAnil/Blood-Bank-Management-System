<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String city=request.getParameter("city");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String address=request.getParameter("address");
String password=request.getParameter("password");
try
{
	Connection con = ConnectionProvider.getcon();
	PreparedStatement ps=con.prepareStatement("insert into adminregistration value(?,?,?,?,?,?,?);");
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, city);
	ps.setString(4, mobilenumber);
	ps.setString(5, email);
	ps.setString(6, address);
	ps.setString(7, password);
	ps.executeUpdate();
	response.sendRedirect("adminregistration.jsp?msg=valid");
	}
catch(Exception e)
{
	response.sendRedirect("adminregistration.jsp?msg=invalid");
}
%>