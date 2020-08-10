<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="com.servlets.connection.DB" %>
<%@ page import="java.sql.SQLException" %>
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
                <img id="slideImg" src="img/search12.jpg" width="">

            </div>
        </div>
    </div>
    <div class="container" id="">
            <div class="" id="Lost">
                <div class="col-lg-11 col-md-11 col-xs-11 col-sm-11 formHead">
                    <h2 align="center">ID Section</h2>
                </div>
                <div class="col-lg-11 col-md-11 col-xs-11 col-sm-11 id_search">
                	<form action="" method="get">
                        <input type="text" placeholder="Search here........." name="Search">
                	</form>
                </div>
                <%
                        
                        try
                        {
                        	Connection conn = DB.getConnection();
            				System.out.println("Connection done");
            				Statement st = conn.createStatement();
            				
            				String SeaData = request.getParameter("Search");
            				String searchSql;
            				if(SeaData!=null)
            				{
                				searchSql = "select * from id_details where id_name like '"+SeaData+"%' or id_nubmer like '"+SeaData+"%' or person_name like '"+SeaData+"%' or location like '"+SeaData+"%' or date like '"+SeaData+"%'";
            				}
            				else
            				{
            					searchSql = "select * from id_details";
            				}
            				ResultSet rs = st.executeQuery(searchSql);
            				while(rs.next())            				
            				{
            					String id_name,id_nubmer,person_name,location,date,image,path,founder_name,founder_num;
            					id_name = rs.getString("id_name").trim();
            					id_nubmer = rs.getString("id_nubmer").trim();
            					person_name = rs.getString("person_name").trim();
            					location = rs.getString("location").trim();
            					date = rs.getString("date").trim();
            					image = rs.getString("image").trim();
            					path = rs.getString("path").trim();
            					founder_name = rs.getString("founder_name").trim();
            					founder_num = rs.getString("founder_num").trim();
            					%>
            	<div class="col-lg-11 col-md-11 col-xs-11 col-sm-11" id="LostSec">
                    <div class="col-lg-4 col-md-4 col-xs-11 col-sm-11 lostHead">
                        <h4 align="center"><%=id_name%></h4>
                        <img src="FoundImges/IDs/<%=image %>" width="">
                    </div>
                    <div class="col-lg-7 col-md-7 col-xs-11 col-sm-11 lostBody">
                        <table id="table">
                        
                            <tr>
                                <td colspan="2">Name :</td>
                                <td colspan="2"><%=person_name%></td>
                            </tr>
                            <tr>
                                <td colspan="2">Number :</td>
                                <td colspan="2"><%=id_nubmer%></td>
                            </tr>
                            <tr>
                                <td colspan="2">Found Location :</td>
                                <td colspan="2"><%=location%></td>
                            </tr>
                            <tr>
                                <td colspan="2">Found Date :</td>
                                <td colspan="2"><%=date%></td>
                            </tr>
                            <tr>
                                <td colspan="1">Founder Name :</td>
                                <td><%=founder_name%></td>
                                <td>Contact Number :</td>
                                <td><%=founder_num%></td>
                            </tr>
                        </table>
                    </div>
                </div>
                
            					<%
            					
            				}
                        }
                        catch(Exception e)
                        {
            				System.out.println("Exception : "+e);
                        }
                        %>
                
            </div>
        </div>    
   	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>