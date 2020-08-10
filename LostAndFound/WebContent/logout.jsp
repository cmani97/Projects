<%
	session.removeAttribute("username");

session.setAttribute("signUp", "Loged out successfully");
	response.sendRedirect("login.jsp");
%>