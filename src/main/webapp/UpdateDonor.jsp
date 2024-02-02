 <%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

  <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
  
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
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
select {
  width:200px;
}
button{
  width:150px;
  height:50px;
  border-radius:5px;
  background-color: darkred;
  color:white;
}
</style>
</head>
<body>

<section id="Nav1">
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container">
                <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <i class="fas fa-phone-volume" style="border-right: 1px solid gray;"> +20 127 245 6884
                                &nbsp; &nbsp; </i>
                        </li>
                        <li class="nav-item">
                            <i class="far fa-envelope" style="padding-left: 15px;">InfoBloodBank@gmail.com</i>
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
                <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link selected" style="border-right: 1px solid gray;" href="#">EN &nbsp;</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" style="padding-left: 15px;" href="#">AR</a>
                        </li>
                    </ul>
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
                        <a class="nav-link" href="UpdateDonor.jsp">Updates Donor's details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="requests.html">Manage stock</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="who-we-are.html">Request For Blood</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact-us.html">Request Completed</a>
                    </li>
                </ul>
                 
            </div>
        </nav>
    </section>
    <!-- Navbar 2 End -->

    <!-- Navigator Start -->
    <section id="navigator">
        <div class="container">
            <div class="path">
                <div class="path-main" style="color: darkred; display:inline-block;">Home</div>
                <div class="path-directio" style="color: grey; display:inline-block;"> / Update Donor</div>
            </div>

        </div>
    </section>
    <!-- Navigator End -->

<%
String id=request.getParameter("id");
try
{
	Connection con = ConnectionProvider.getcon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select *from donor where id='"+id+"'");
	while(rs.next())
	{
%>
<div class="container">
<form action="updateDonorAction.jsp" method="post">
<input type="hidden" name="id" value="<%out.println(id); %>">
<h2>Name</h2>
<input type="text" value="<%=rs.getString(2) %>" name="name" >
<hr>
<h2>Father Name</h2>
<input type="text" value="<%=rs.getString(3)%>" name="father" >
<hr>
<h2>Mother Name</h2>
<input type="text" value="<%=rs.getString(4)%>" name="mother" >
<hr>
<h2>Mobile Number</h2>
<input type="number" value="<%=rs.getString(5)%>" name="mobilenumber" >
<hr>
<h2>Email</h2>
<input type="email" value="<%=rs.getString(7)%>" name="email" >
<hr>
<h2>Address</h2>
<input type="text" value="<%=rs.getString(9)%>" name="name" >
<br>
<br>
<br>
<center><button type="submit" class="button">Save</button></center>
</form>
</div>
<%
	}
}
catch(Exception e)
{
	
}
%>
<br>
<br>
<br>
<br>


</body>
</html>