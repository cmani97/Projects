<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	<style>
		#aboutSection h3
        {
            padding: 10px;
            margin: 10px;
            background: lightgray;
        }
        #aboutSection p
        {
            padding: 10px;
            margin: 10px;
            font-size: 20px;
            color: white;
        }
	</style>
</head>
<body>
<%
	session.removeAttribute("signUp");
%>
<%-- <%
	if(session.getAttribute("username")!=null){
		response.sendRedirect("login.jsp");
%>
<script>
	alert(<%=request.getAttribute("loginSuccess")%>);
</script>
<%
	}
%> --%>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container mainSection">
        <div class="" style="background: blue" id="slider">
            <div>
                <a class="prev" onclick="prev()"> &#10094; </a>
                <img id="sliderImg" src="img/1.jpg" width="">
                <a class="next" onclick="next()"> &#10095; </a>
            </div>
            <script>
                var images = [
                    'img/1.jpg',
                    'img/2.jpg',
                    'img/3.jpg',
                    'img/4.jpg',
                    'img/5.jpg',
                    'img/6.jpg'
                ];

               var index = 0;
                setInterval (function(){
                    if (index === images.length) {
                        index = 0;
                    }
                    var slider=document.getElementById("sliderImg");
                    slider.src = images[index]
                    index++;
                } , 2500);

                var num = 0;
                function next() {
                    var sliderImg = document.getElementById('sliderImg');
                    num++;
                    if(num >= images.length) {
                        num = 0;
                    }
                    sliderImg.src = images[num];
                }
                function prev() {
                    var sliderImg = document.getElementById('sliderImg');
                    num--;
                    if(num < 0) {
                        num = images.length-1;
                    }
                    sliderImg.src = images[num];
                }
            </script>
        </div>
        
        <div class="lostFound" id="lostFound">
            <div>
                <div class="lsHead">
                    <h2 align="center">Choose</h2>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-11 col-xs-11 lsImg">
                    <a href=""><img src="img/Lost.png"></a>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-11 col-xs-11 lsImg">
                    <img src="img/LostFound.png">
                </div>
                <div class="col-lg-3 col-md-3 col-sm-11 col-xs-11 lsImg">
                    <a href=""><img src="img/Found.png"></a>
                </div>
            </div>
            <div class="" id="aboutSection">
                <div class="lsHead">
                    <h2 align="center">About The Lost and Found</h2>
                </div>
                <div class="purpose">
                    <h3 >Purpose</h3>
                    <p>Welcome to LostAndFound website, the largest and most comprehensive website devoted exclusively to the recovery of pets and personal property. Our sole purpose is to reunite lost and found ID's and Other Things to their respective owners using this wesite. What could be more satisfying than returning their property to their respective owners?</p>
                </div>
                <div class="description">
                    <h3>Description</h3>
                    <p>LostAndFound website offers visitors a convenient, one-stop source for the exchange of lost and found information including the most comprehensive online database of lost and found id's and other things, on the internet. It features a variety of categories and services that aim to provide users with the necessary tools (some of which are uniquely suited to the Internet) for the effective communication of lost and found information.</p>
                </div>
            </div>
         
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>