
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Student Performance</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/orman.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />	

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script language="javascript" type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "templatemo_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" /> 
<script type="text/JavaScript" src="js/slimbox2.js"></script> 
<!--  t e m p l a t e m o  372  t i t a n i u m  -->
</head>
<script>
function validateform(){
var password=document.myform.password.value;
var phoneno = document.getElementById('txtphoneno');

 if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }
  if (phoneno.value == "" || phoneno.value == null) {
            alert("Please enter your Mobile No.");
            return false;
        }
        if (phoneno.value.length < 10 || phoneno.value.length > 10) {
            alert("Mobile No. is not valid, Please Enter 10 Digit Mobile No.");
            return false;
        }

    }
    </script>
<body>

<div id="templatemo_wrapper">
	<div id="templatemo_header">
    	<div id="site_title">
            <center><h2><font color="white">Student Performance with Graph & Academic Project Work Reporting System</font></h2></center>
        </div>
    </div><!-- END of templatemo_header -->
    <div id="templatemo_menu" class="ddsmoothmenu">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="admin.jsp">Admin</a></li>
            <li><a href="user.jsp"  class="selected">Student</a></li>
            <li><a href="aboutus.jsp">About Us</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
        <br style="clear: left" />
    </div> <!-- end of templatemo_menu -->
    <div id="templatemo_slider">
    	 <div class="slider-wrapper theme-orman">
                <img src="images/slider/01.png"  ></img>
        </div> 
		<script type="text/javascript" src="js/jquery-1.6.1.min.js"></script>
        <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
        <script type="text/javascript">
        $(window).load(function() {
            $('#slider').nivoSlider({
				controlNav:true
			});
        });
        </script>
</div><!-- END of templatemo_slider -->
<div id="templatemo_main">
    <center> <h2><font color="black">Student Registration</h2>
        <div class="clr"></div>
        <center>
            <form name="myform" id="loginForm" action="userregact.jsp" method="post"   onsubmit="return validateform()" >

       <center><table border="2" width="60%">
       <tr>
       <th style="background-color: black" width="191" height="43"><font color="white"> Student ID </th>
       <th width="218"><input id="studentid" name="studentid" required="" placeholder="Student ID" /></th>
       </tr>
       <tr>
       <th style="background-color: black" height="43"><font color="white">Password </th>
       <th width="218"><input type="password" id="password" name="password" required="" placeholder="Password" /></th>
       </tr>
       <tr>
       <th style="background-color: black" height="43"><font color="white"> Email ID</th>
       <th><input type="email" name="email" required="" placeholder="Email ID"/></th>
       </tr>

       <tr>
       <th style="background-color: black" height="43"><font color="white">Date Of Birth</th>
       <th><input type="date" name="dob" style="text-align:right" required="" ></th></label>
       </th>
       </tr>
       <tr>
       <th style="background-color: black" height="43"><font color="white">Select Gender</th>
       <th><select id="s1" name="gender" style="width:170px;" required="">
       <option>--Select--</option>
       <option>MALE</option>
       <option>FEMALE</option>
       </select></th>
       </tr>
       <tr>
       <th style="background-color: black" height="65"><font color="white">Address:</th>
       <th><textarea id="searchTextField" name="address" rows="4" cols="22" style="text-align: left;direction: ltr;"></textarea></th>
       </tr>
       <tr>
       <th style="background-color: black" height="43"><font color="white">Mobile  </th>
       <th><input id="txtphoneno" onkeypress="return isNumber(event)" name="mobile" required="" placeholder="Mobile "/></th>
       </tr>         
       
       </table>
           <br><br>
       <input name="submit" type="submit" value="Register" />
       <input type="button" value="Go Back!" onclick="history.go(-1)">
        </center></form>
        <center><br>
<div class="half right">
</div>
<div class="clear"></div>
</div><!-- END of templatemo_main -->
</div><!-- END of templatemo_wrapper -->
<div id="templatemo_footer_wrapper">    
    <div id="templatemo_footer">
        <center><p> <a href="#">All Rights Received</a></p></center>
    </div><!-- END of templatemo_footer -->
</div><!-- END of templatemo_footer_wrapper -->
</body>
</html>