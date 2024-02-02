<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<html>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
     
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <title> Blood Bank Admin Page</title>

<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
 <!-- Navbar 1 Start -->
    <section id="Nav1">
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container">
                <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <i class="fas fa-phone-volume" style="border-right: 1px solid gray;"> +91 998 135 6252
                                &nbsp; &nbsp; </i>
                        </li>
                        <li class="nav-item">
                            <i class="far fa-envelope" style="padding-left: 15px;"> MyBloodBank@gmail.com</i>
                        </li>
                    </ul>
                </div>
                <div class="mx-auto order-0 navbar-brand mx-auto">
                    <a href="https://www.instagram.com/ipda3.tech/"><i
                            class="fab fa-instagram github">&nbsp;&nbsp;</i></a>
                    <a href="https://www.facebook.com/ipda3tech/"><i
                            class="fab fa-facebook-f facebook">&nbsp;&nbsp;</i></a>
                    <a href="https://twitter.com/ipda3_tech"><i class="fab fa-twitter twitter">&nbsp;&nbsp;</i></a>
                    <a href="https://api.whatsapp.com/send?phone=+201097571186"><i
                            class="fab fa-whatsapp whats">&nbsp;&nbsp;</i></a>
                </div>
                 
            </div>
        </nav>
    </section>
  
  <!-- Navbar 1 End -->

    <!-- Navbar 2 Start -->
    <section id="Nav2">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
           <img src="imgs/admin.jpg" width="18%" height="80px"></img>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="adminPage.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="addNewDonor.jsp">Add New Donor</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link selected" href="EditDeleteUpdateList.jsp">Updates Donor's details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ManageStock.jsp">Manage stock</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="RequestForBlood.jsp">Request For Blood</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="RequestCompleted.jsp">Request Completed</a>
                    </li>
                </ul>
               
                <button class="btn login" onclick= "window.location.href = 'index.html';">LogOut</button>
            </div>
        </nav>
    </section>
    <!-- Navbar 2 End -->


    <!-- Navigator Start -->
    <section id="navigator">
        <div class="container">
            <div class="path">
                <div class="path-main" style="color: darkred; display:inline-block;">Home</div>
                <div class="path-directio" style="color: grey; display:inline-block;"> / Update Donor's details</div>
            </div>

        </div>
    </section>
    <!-- Navigator End -->
<br>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{%>
<center><font color="red" size="5">Successfully Updated</font></center>
<%
}
%>
<%
if("invalid".equals(msg))
{%>
<center><font color="red" size="5">Something Went Wrong! Try Again</font></center>
<%
}
%>
<%
if("deleted".equals(msg))
{%>
<center><font color="red" size="5">Successfully Deleted</font></center>
<%
}
%>
<center>
<table id="customers">
<tr>
<th>Id</th>
<th>Name</th>
<th>Father Name</th>
<th>Mother Name</th>
<th>Mobile Number</th>
<th>Gender</th>
<th>Email</th>
<th>Blood Group</th>
<th>Address</th>
<th>Last Donation Date</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<tr>
<%
try
{
	Connection con = ConnectionProvider.getcon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select *from donor");
	while(rs.next())
	{
%>
<td><%=rs.getInt(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7) %></td>
<td><%=rs.getString(8) %></td>
<td><%=rs.getString(9) %></td>
<td><%=rs.getString(10) %></td>
<td><a href="UpdateDonor.jsp?id=<%=rs.getString(1)%>">Edit</a></td>
<td><a href="deleteDonor.jsp?id=<%=rs.getString(1)%>">Delete</a></td>
</tr>
<% 
	}
    }
catch(Exception e)
{
	
	
}
%>
</table>
</center>
<br>
<br>
<br>
<br>

</body>
</html>