
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
<body>

<div id="templatemo_wrapper">
	<div id="templatemo_header">
    	<div id="site_title">
            <center><h2><font color="white">Student Performance with Graph & Academic Project Work Reporting System</font></h2></center>
        </div>
    </div><!-- END of templatemo_header -->
    <div id="templatemo_menu" class="ddsmoothmenu">
        <ul>
           <li><a href="adminhome.jsp">Home</a></li>
            <li><a href="viewusers.jsp">View Students</a></li>
            <li><a href="upload.jsp">Upload Project</a></li>
            <li><a href="viewprojects.jsp"  class="selected">View Projects</a></li>
            <li><a href="addattendance.jsp">Add Attendance</a></li>
            <li><a href="addmarks.jsp">Add Marks</a></li>
            <li><a href="graph.jsp">Graph</a></li>
            <li><a href="logout.jsp">Logout</a></li>
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

    <br><center>
        <h2 class="title"><font color="black">Uploaded Projects</h2></center>
    <%@page import="java.sql.*"%>
    <%@ page session="true" %>
    <%@ include file="connect.jsp" %>
<div id="templatemo_main">
    <%
        try {
        PreparedStatement ps = connection.prepareStatement("select * from file");
        ResultSet rs1 = ps.executeQuery();

    %>
        <center><table border="2" width="90%">
        <tr style="background-color: black">
        <th><font color="white">Project Title</th>
        <th><font color="white">Student Name</th>
        <th><font color="white">Year</th>
        <th><font color="white">Guide</th>
        <th><font color="white">Abstract</th>
        <th><font color="white">Document</th>
            </tr>

            <%                while (rs1.next()) {
            %>

    <tr>
         <th><font color="black"><%=rs1.getString(2)%></th>
         <th><font color="black"><%=rs1.getString(3)%></th>
         <th><font color="black"><%=rs1.getString(4)%></th>
         <th><font color="black"><%=rs1.getString(5)%></th>
         <th><font color="black"><textarea rows="3" cols="30"><%=rs1.getString(6)%></textarea></th>
         <th><font color="black"><textarea rows="3" cols="30"><%=rs1.getString(8)%></textarea></th>
            <%
                }
                } catch (Exception e) {
                    e.printStackTrace();
                }

            %>
            </table></center>   
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