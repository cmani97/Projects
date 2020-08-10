<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@include file="connect.jsp" %>
<%@ page session="true" %>
<html>
<head>
</head>
<body>

<%
    
    String title = request.getParameter("title");
    String studentname = request.getParameter("studentname");
    String year = request.getParameter("year");
    String guide = request.getParameter("guide");
    String abstrac = request.getParameter("abstract");
    String doc = request.getParameter("doc");
    int id = 0;
    try{
        PreparedStatement pst2 = connection.prepareStatement("insert into upload(id,title,studentname,year,guide,abstract,doc) values(?,?,?,?,?,?,?)");
        pst2.setInt(1,id);
	pst2.setString(2,title);
        pst2.setString(3,studentname);
        pst2.setString(4,year);
        pst2.setString(5,guide);
        pst2.setString(6,abstrac);
        pst2.setString(7,doc);
        pst2.executeUpdate();
         
         response.sendRedirect("uploadproject.jsp?msg1=success");
         
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</div>
</body>
</html>