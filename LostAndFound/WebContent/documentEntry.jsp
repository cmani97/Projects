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
	if(session.getAttribute("username")==null){
		response.sendRedirect("login.jsp");
		
	}

%>
<div class="" id="">
    <jsp:include page="header.jsp"></jsp:include>
    <div class="container mainSection">
        <div class="" style="" id="slide">
            <div>
                <img id="slideImg" src="img/foundSlide.jpg" width="">

            </div>
        </div>
    </div>
    <div class="container" id="">
            <div class="" id="Login">
                <div class="col-lg-4 col-md-4 col-sm-11 col-xs-11" id="loginImg">
                    <img src="img/documents.jpg" id="idCard" style="border-radius: 50%;width: 100%">
                </div>
                <div class="col-lg-7 col-md-6 col-sm-11 col-xs-11" id="loginSec">
                <h4 align="center" style="color:red">${docMessagef}</h4>
                <h4 align="center" style="green">${docMessages}</h4>
                    <div class="formHead">
                        <h2 align="Center">Enter Details</h2>
                    </div>
                    <div class="">
                        <form action="document" method="post"  enctype="multipart/form-data">
                            <div class="">
                                <h3 align="center">Document details</h3>
                                <label for="documentName"><b>Document Name *</b></label><br>
                                <input type="text" placeholder="Enter Document" name="documentName" required><br>
                                
                                <label for="documentNum"><b>Document Number *</b></label><br>
                                <input type="number" placeholder="Enter Document Number" name="documentNum" required><br>
                                
                                <label for="personName"><b>Name on the Document *</b></label><br>
                                <input type="text" placeholder="Enter Name of the Person" name="personName" required><br>
                                
                                <label for="location"><b>Location Where Found *</b></label><br>
                                <input type="text" placeholder="Enter Location" name="location" required><br>

                                <label for="date"><b>Date When Found *</b></label><br>
                                <input type="date" placeholder="Enter date" name="date" required><br>
                                
                                <label for="image"><b>Upload Image of Document *</b></label><br>
                                <input type="file" placeholder="" name="image" required><br>
                                
                                <h3 style="" align="center">Founder details</h3>
                                
                                <label for="fName"><b>Name of Founder *</b></label><br>
                                <input type="text" placeholder="Enter Your Name" name="fName" required><br>
                                
                                <label for="fNum"><b>Mobile Number of Founder *</b></label><br>
                                <input type="number" placeholder="Enter Your Number" name="fNum" required><br>  
                                
                                <input class="submitButton" name="documentSub" type="submit" value="Submit"><br>
                          </div>
                        </form>
                    </div>
                </div>
                
            </div>
        </div>    
    <jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>