<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <title>index</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=11" />

    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/fonts.css">
    <link rel="stylesheet" type="text/css" href="fonts/fontawesome.css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome.min.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrapjquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script type="text/javascript" src="js/script.js"></script>
    
</head>
<body>
<%
	session.removeAttribute("signUp");
	if(session.getAttribute("username")!=null){
		response.sendRedirect("index.jsp");
		
	}

%>
<div class="" id="">
    <jsp:include page="header.jsp"></jsp:include>
    <div class="container mainSection">
        <div class="" style="" id="slide">
            <div>
                <img id="slideImg" src="img/slideLogin.jpg" width="">

            </div>
        </div>
    </div>
    <div class="container" id="">
            <div class="" id="Login">
                <div class="col-lg-5 col-md-4 col-sm-11 col-xs-11" id="loginImg">
                    <img src="img/loginLogo.png">
                </div>
                <div class="col-lg-6 col-md-6 col-sm-11 col-xs-11" id="loginSec">
                <h6 align="center" style="color:red">${signUp}</h6>
                    <div class="formHead">
                    	<h2 align="">User SignUp</h2>
                    </div>
                    <div class="">
                        <form action="signUp" method="post">
                            <div class="">
                                <label for="uname"><b>Username</b></label><br>
                                <input type="text" placeholder="Enter Username" name="uname" onblur="alphanumeric(this);" required><br>
                                
                                <label for="email"><b>Email</b></label><br>
                                <input type="email" placeholder="Enter Email" name="email" onblur="validateEmail(this);" required><br>

                                <label for="psw"><b>Password</b></label><br>
                                <input type="password" placeholder="Enter Password" name="psw" required><br>
                                    
                                <input class="submitButton" name="signupSub" type="submit" value="Sign Up"><br>
                                <!-- <span class="psw">Forgot <a href="#">password?</a></span> -->
                          </div>
                        </form>
                        <script>
	                        function validateEmail(emailField){
	                            var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	
	                            if (reg.test(emailField.value) == false) 
	                            {
	                                alert('Invalid Email Address');
	                                return false;
	                            }
	
	                            return true;
	
	                   		 }
	                        function alphanumeric(username)
	                        {

	                            var letterNumber = /^[0-9a-zA-Z]+$/;
	                            if(letterNumber.test(username.value) == false)
	                                {
	                                alert("Please enter numeric and characters only for your Username(syam123)!")
	                                return false;
	                                }
	                            return true;
	                        }
	                        function validateForm()
	                        {

	                            var z = document.forms["myForm"]["num"].value;
	                            if(!z.match(/^\d+/))
	                                {
	                                alert("Please only enter numeric characters only for your Age! (Allowed input:0-9)")
	                                }
	                        }
                        </script>
                    </div>
                </div>
                
            </div>
        </div>    
    <jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>