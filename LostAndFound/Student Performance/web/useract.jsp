<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ include file="connect.jsp" %>
<%
    String studentid = request.getParameter("studentid");
    System.out.println(studentid);
    String password = request.getParameter("password");
    System.out.println(password);
    
    try{
        
    
   
        String query="select * from user where studentid='"+studentid+"' and password='"+password+"' and status='Activated'";
         Statement st = connection.createStatement();
         ResultSet rs =st.executeQuery(query);
    if (rs.next()){
        session.setAttribute("studentid", studentid);
   
    response.sendRedirect("userhome.jsp?msg=sucesss");
    
    }   else 
                {
                   %>
               <br/><br/><br/>
               <center><font color='' size='5'> Username or Password is Not Valid ... Please Try Again

                <br/><br/>
                <a href="user.jsp">Back</a></font></center>
                <%
                    }
    }
     catch(Exception e)
    {
        System.out.println("Error in userlogact"+e.getMessage());
    }
%>