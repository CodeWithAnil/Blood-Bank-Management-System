<%@page import="java.sql.ResultSet"%>
  
<%@page import="java.sql.Statement"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    
    <link rel="stylesheet" type="text/css" href="css/style.css" />

    <title> Blood Bank Admin Page</title>
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
select{
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
                        <a class="nav-link " href="adminPage.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link selected" href="addNewDonor.jsp">Add New Donor</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="EditDeleteUpdateList.jsp">Updates Donor's details</a>
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
    <%
}
catch(Exception e)
{}
%>    
 <section id="login">
        <div class="container">
<form action="addNewDonorAction.jsp" method="post">
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


</body>
</html>