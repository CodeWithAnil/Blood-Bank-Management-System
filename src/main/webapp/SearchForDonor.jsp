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


<meta charset="UTF-8">
<title>Search For Donor</title>

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
                    <a href="https://www.instagram.com"><i
                            class="fab fa-instagram github">&nbsp;&nbsp;</i></a>
                    <a href="https://www.facebook.com"><i
                            class="fab fa-facebook-f facebook">&nbsp;&nbsp;</i></a>
                    <a href="https://twitter.com"><i class="fab fa-twitter twitter">&nbsp;&nbsp;</i></a>
                    <a href="https://whatsapp.com"><i
                            class="fab fa-whatsapp whats">&nbsp;&nbsp;</i></a>
                </div>
                 
            </div>
        </nav>
    </section>
  
    <!-- Navbar 2 Start -->
    <section id="Nav2">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <img src="imgs/logo.png" width="18%"></img>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="About-us.html">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AddYourselfAsADonar.jsp">Add Yourself as a Donor</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AddBloodRequest.jsp">Add Request For Blood</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link selected" href="SearchForDonor.jsp">Search for Donor</a>
                    </li>
                </ul>
                <button class="btn signup" onclick= "window.location.href = 'signup.html';">New Account</button>
                <button class="btn login" onclick= "window.location.href = 'login.html';">Login</button>
            </div>
        </nav>
    </section>
    <!-- Navbar 2 End -->


    <!-- Navigator Start -->
    <section id="navigator">
        <div class="container">
            <div class="path">
                <div class="path-main" style="color: darkred; display:inline-block;">Home</div>
                <div class="path-directio" style="color: grey; display:inline-block;"> / List of Donors Who want to donate blood</div>
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
 
<th>Name</th>
<th>Father Name</th>
<th>Mother Name</th>
<th>Mobile Number</th>
<th>Gender</th>
<th>Email</th>
<th>Blood Group</th>
<th>Address</th>
<th>Last Donation Date</th>
 
</tr>
<tr>
<%
try
{
	Connection con = ConnectionProvider.getcon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select *from donor where LastDonation <= DATE_SUB(NOW(), INTERVAL 3 MONTH) OR null ");
	while(rs.next())
	{
%>
 
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7) %></td>
<td><%=rs.getString(8) %></td>
<td><%=rs.getString(9) %></td>
<td><%=rs.getString(10) %></td>
 
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


  
    

    <!-- Call us Start -->
    <section id="call-us">
        <div class="layer">
            <div class="container">
                <h1>Call Us</h1>
                <h4>You can call us for your inquiries about any information.</h4>
                <div class="whats">
                    <img src="imgs/whats.png" alt="">
                    <h3>+91 998 135 9252</h3>
                </div>
            </div>
        </div>
    </section>
    <!-- Call us End -->

    

    <!-- Footer Start -->
    <section id="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <div class="foot-info">
                        <img src="imgs/logo.png" alt="">
                        <p>"Blood Bank Management System - © 2023. All rights reserved".
                        <br>
                         Developed by Anil Vishwakarmam,Ram and Gaurav under the guidance of Dr. SANJAY SHARMA  using HTML, CSS, Bootstrap, jsp and Mysql.
                        </p>
                    </div>
                </div>
                <div class="col-md-3">
                    <ul class="menu">
                        <a href="index.html">
                            <li>Home</li>
                        </a>
                        <a href="About-us.html">
                            <li>About Us</li>
                        </a>
                        <a href="#articles">
                            <li>Articles</li>
                        </a>
                       

                      
                        <a href="contact-us.html">
                            <li>Contact Us</li>
                        </a>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="options">
                        <li>
                            <h5>Available On</h5>
                        </li>
                        <li><img src="imgs/ios1.png" alt=""></li>
                        <li><img src="imgs/google1.png" alt=""></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- Footer End -->

</body>
</html>