<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

  <%

                       
                        String studentid = request.getParameter("studentid");
                        try {

                            Statement st=connection.createStatement();
                            int j = st.executeUpdate("update user set status='Activated' where studentid='"+studentid+"'");
            if(j!=0)
            {
               response.sendRedirect("viewusers.jsp?message=success");
            }
                              
                             else {
                                out.println(" failed");
                            }
                                                      } catch (Exception e) {
                                    e.printStackTrace();
                                }

                        %>