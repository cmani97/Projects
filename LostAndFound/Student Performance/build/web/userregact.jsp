<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@include file="connect.jsp" %>
<%@ page session="true" %>
<html>
<head>
</head>
<body>

<%
    
    String a = request.getParameter("studentid");
    String b = request.getParameter("password");
    String c = request.getParameter("email");
    String d = request.getParameter("dob");
    String e = request.getParameter("gender");
    String f = request.getParameter("address");
    String g = request.getParameter("mobile");
    String status="pending";
    int id = 0;
    try{
        PreparedStatement pst2 = connection.prepareStatement("insert into user(id,studentid,password,email,dob,gender,address,mobile,status) values(?,?,?,?,?,?,?,?,?)");
        pst2.setInt(1,id);
	pst2.setString(2,a);
        pst2.setString(3,b);
        pst2.setString(4,c);
        pst2.setString(5,d);
        pst2.setString(6,e);
        pst2.setString(7,f);
        pst2.setString(8,g);
        pst2.setString(9,status);
        pst2.executeUpdate();
         
         response.sendRedirect("user.jsp?msg=success");
         
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</div>
</body>
</html>