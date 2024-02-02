<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*"%>
<%
String mobilenumber=request.getParameter("mobilenumber");
try
{
	Connection con = ConnectionProvider.getcon();
	PreparedStatement ps=con.prepareStatement("update bloodrequest set status='completed' where mobilenumber=?");
	ps.setString(1,mobilenumber);
	ps.executeUpdate();
	response.sendRedirect("RequestForBlood.jsp");
}
catch(Exception e)
{
	response.sendRedirect("RequestForBlood.jsp");
}
%>