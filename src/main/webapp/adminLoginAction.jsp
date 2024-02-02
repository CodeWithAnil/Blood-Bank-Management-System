<% 
String username=request.getParameter("username");
String password=request.getParameter("password");
if("admin".equals(username) && "admin123".equals(password))
{
	response.sendRedirect("home.jsp");
}
else
{
	response.sendRedirect("adminLoginAction.jsp?msg=invalid");
}
%>