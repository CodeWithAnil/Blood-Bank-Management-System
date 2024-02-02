<head>

<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    
    <link rel="stylesheet" type="text/css" href="css/style.css" />

    <title>Add Blood Request</title>
<style>
.mySlides {display:none;}

input[type="text"],input[type="number"], input[type="email"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
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
                        <a class="nav-link selected" href="AddBloodRequest.jsp">Add Request For Blood</a>
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


  <br>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
	  %>
	  <center><font color="red" size="5"> form submited successfully. you will notified soon through email </font></center>
	  <%
  }
  %>
  <%
  if("invalid".equals(msg))
  {
	  %>
	  <center><font color="red" size="5"> Invalid Data! try Again </font></center>
	  <%
  }
  %>
<center><h1>Enter your details for request blood</h1></center>
<form action="indexFormAction.jsp" method="post">
<center>
<input type="text" name="name" placeholder="Enter name" required>
 <input type="number" name="mobilenumber" placeholder="Enter Mobile Number" required>
 <input type="email" name="email" placeholder="Enter Email address" required>
 <input type="text" name="bloodgroup" placeholder="Enter blood group" required>
 <br>
 <br>
<button ><span>submit</span></button>
</center>
</form> 
 
   
 
  <br>
  <br>
  


<div class="row1"> 
<div class="container"> 
              

    </tbody>
  </table>
</div>
</div>

<!-- Header Start -->
    <section id="header">
         
    </section>
    <!-- Header End -->

    <!-- Sub Header Start -->
    <section id="sub-header">
        <div class="container">
            <h3>A SINGLE PINT CAN SAVE THREE LIVES, A SINGLE GESTURE CAN CREATE A MILLION SMILES.</h3>
        </div>
    </section>
    <!-- Sub Header End -->

    <!-- Articles Start -->
    <section id="articles">
        <div class="container">
            <h2 style="display: inline-block;">Articles</h2>
             
             
            </div>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="card">
                            <div class="card-img-top" style="position: relative;">
                                <img src="imgs/articl.jpg" alt="Card image">
                                
                            </div>
                            <div class="card-body">
                                <h4 class="card-title">Donation Benefits</h4>
                                <p class="card-text">Blood donation saves lives and has health benefits for donors
                                 such as reducing the risk of heart disease and promoting
                                  new blood cell formation.</p>
                                
                            </div>
                        </div>
                    </div>
                   
                  
                     
                </div>
            
       
    </section>
    <!-- Articles End -->

   

     

     
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