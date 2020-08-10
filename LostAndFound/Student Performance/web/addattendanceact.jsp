<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@include file="connect.jsp" %>
<%@ page session="true" %>
<html>
<head>
</head>
<body>

<%
    
    String studentname = request.getParameter("studentname");
    String year = request.getParameter("year");
    String sem = request.getParameter("sem");
    String studentid = request.getParameter("studentid");
    String percentage = request.getParameter("percentage");
    try{
        PreparedStatement pst2 = connection.prepareStatement("insert into attendance(studentname,year,sem,studentid,percentage) values(?,?,?,?,?)");
       	pst2.setString(1,studentname);
        pst2.setString(2,year);
        pst2.setString(3,sem);
        pst2.setString(4,studentid);
        pst2.setString(5,percentage);
        pst2.executeUpdate();
         
         response.sendRedirect("addattendance.jsp?msg=success");
         
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</div>
</body>
</html>