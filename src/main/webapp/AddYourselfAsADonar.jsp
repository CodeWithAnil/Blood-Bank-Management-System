 <%@page import="java.sql.ResultSet"%>
  
<%@page import="java.sql.Statement"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!-- website font  -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
        integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
     
  
    <link rel="stylesheet" type="text/css" href="css/style.css" />

 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
 
 <title>Add YourSelf as a Donor</title>
<style>
input[type="text"],input[type="date"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
}
select,input[type="date"]{
  width:200px;
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
                    <a href="https://twitter.com/ipda3_tech"><i class="fab fa-twitter twitter">&nbsp;&nbsp;</i></a>
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
                        <a class="nav-link " href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="About-us.html">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link selected" href="AddYourselfAsADonar.jsp">Add Yourself as a Donor</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AddBloodRequest.jsp">Add Request For Blood</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="SearchForDonor.jsp">Search for Donor</a>
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
                <div class="path-directio" style="color: grey; display:inline-block;"> / Add New Donor</div>
            </div>

        </div>
    </section>
    <!-- Navigator End -->
    
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<center><font color="red" size="5">Successfully Updated</font></center>
<%} %>

<%
if("invalid".equals(msg))
{
%>
<center><font color="red" size="5">Something went wrong! Try Again</font></center>
<%} %>

<%
int id=1;
try
{
	Connection con = ConnectionProvider.getcon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select max(id) from donor");
	if(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
	}%>
	<div class="container">
	<h1 style="color:red;">Donor ID: <%out.println(id);%></h1>
	</div>
    <%
}
catch(Exception e)
{}
%>   
 <section id="login">
        <div class="container">
<form action="addasdonorAction.jsp" method="post">
<input type="hidden" name="id" value="<% out.println(id);%>">
<h2>Name</h2>
<input type="text" name="name" placeholder="Enter Name" required>
<hr>
<h2>Father Name</h2>
<input type="text" name="father" placeholder="Enter Father Name"required>
<hr>
<h2>Mother Name</h2>
<input type="text" name="mother" placeholder="Enter Mother Name" required>
<hr>
<h2>Mobile Number</h2>
<input type="number" name="mobilenumber" placeholder="Enter Mobile Number"required>
<hr>
<h2>Gender</h2>
<select name="gender">
<option value="male">Male</option>
<option value="female">Female</option>
<option value="others">others</option>
</select>
<hr>
<h2>Email</h2>
<input type="email" name="email" placeholder="Enter Email" required>
<hr>
<h2>Blood Group</h2>
<select name="bloodgroup">
<option value="A+">A+</option>
<option value="A-">A-</option>
<option value="B+">B+</option>
<option value="B-">B-</option>
<option value="AB+">AB+</option>
<option value="AB+">AB-</option>
<option value="O+">O+</option>
<option value="O-">O-</option>
</select>
<hr>
<h2>Date of Last Donation if donated</h2>
<input type="date" name="date" placeholder="Date of Last Donation if donated">
<hr>
<h2>Address</h2>
<input type="text" name="address" placeholder="Enter Address" required>
<br>
    <center> 
   <div class="reg-group">
                        <button style="background-color: darkred;">Submit</button>
                      
                    </div>        
                      
     </center> 
 
</form>
 </div>
    </section>
</div>


<br>
<br>
<br>
<br>

    <!-- Footer Start -->
    <section id="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <div class="foot-info">
                        <img src="imgs/logo.png" alt="">
                        <p>"Blood Bank Management System - � 2023. All rights reserved".
                        <br>
                         Developed by Anil Vishwakarmam,Ram and Gaurav under the guidance of Dr. SANJAY SHARMA  using HTML, CSS, Bootstrap and Mysql.
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