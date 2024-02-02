<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*"%>
<html>
<head>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />

<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"],select
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	 
}

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 55%;
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
                        <a class="nav-link" href="EditDeleteUpdateList.jsp">Updates Donor's details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link selected" href="ManageStock.jsp">Manage stock</a>
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
     
    <!-- Navigator Start -->
    <section id="navigator">
        <div class="container">
            <div class="path">
                <div class="path-main" style="color: darkred; display:inline-block;">Home</div>
                <div class="path-directio" style="color: grey; display:inline-block;"> / Manage Stock</div>
            </div>

        </div>
    </section>
    <!-- Navigator End -->
<br>

<div class="container">
<br>
<%
String msg=request.getParameter("msg");
if("invalid".equals(msg))
{
%>
<center><font color="red" size="5">Something Went wrong! Try Again!</font>
 <%} %>
 
 <%
if("valid".equals(msg))
{
%>
<center><font color="green" size="5">Successfully Updated</font>
 <%} 
 %>
 
 <form action="manageStockAction.jsp" method="post">
 <div class="form-group">
 <center><h2>Select Blood group</h2></center>
 <select name="bloodgroup">
 <option value="A+">A+</option>
 <option value="A-">A-</option>
 <option value="B+">B+</option>
 <option value="B-">B-</option>
 <option value="O+">O+</option>
 <option value="O-">O-</option>
 <option value="AB+">AB+</option>
 <option value="AB-">AB-</option>
 </select>
 
 <center><h2>Select Increase/Decrease</h2></center>
 <select name="incdec">
 <option value="inc">Increase</option>
 <option value="dec">Decrease</option>
 </select>
 <center><h2>Units</h2></center>
 <input type="text" placeholder="Enter Units" name="units">
 <br>
 <br>
 <center> 
   <div class="reg-group">
      <button  type="submit">Submit</button>
   </div>        
</center> 
 
 </div>
 </form>
 <br>
 
 <center>
 <table id="customers">
 <tr>
 <th>Blood  Group</th>
 <th>Units</th>
 </tr>
 <tr>
 <%
 try
 {
	    Connection con = ConnectionProvider.getcon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select *from stock");
		while(rs.next())
		{
 %>
 <td><%=rs.getString(1) %>
 <td><%=rs.getString(2) %>
  </tr>
 <%
		}
 }
 catch(Exception e)
 {
	 
 }
 %>
 </center>
</table>
</center>
<br>
<br>
<br>
<br>

</body>
</html>