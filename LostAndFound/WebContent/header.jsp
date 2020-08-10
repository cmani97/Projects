<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
	<div class="container header">
        <div class="">
            <div class="logo">
                <img src="img/logo.png">
            </div>
            <div id="nav">
                <ul>
                        <li><a href="index.jsp" class="active">Home</a></li>
                        <li>
                            <a>Lost &#9662;</a>
                            <ul class="dropdown">
                                <li><a href="idSection.jsp">Identity Card</a></li>
                                <li><a href="documentSection.jsp">Documents</a></li>
                                <li><a href="petSection.jsp">Pet</a></li>
                                <li><a href="otherSection.jsp">Other Thing</a></li>
                            </ul>
                        </li>
                        <li>
                            <a >Found &#9662;</a>
                            <ul class="dropdown">
                                <li><a href="idEntry.jsp">Identity Card</a></li>
                                <li><a href="documentEntry.jsp">Documents</a></li>
                                <li><a href="petEntry.jsp">Pet</a></li>
                                <li><a href="otherEntry.jsp">Other Thing</a></li>
                            </ul>
                        </li>
                        <%
							if(session.getAttribute("username")==null){
								%>
						<li><a href="login.jsp" style="">Login</a></li>
                        <li><a href="signUp.jsp" style="">Sign Up</a></li>
								<%
							}else{
								%>
						<li><a href="logout.jsp" style="">Logout</a></li>
								<%
							}
						%>
                        
                        
                </ul>                
            </div>   
        </div>    
    </div>
    <div class="container" id="pannel_div">
            <div class="">
                <div id="icon_bar">
                    <i class="fa fa-bars" id="toggle_iocn" aria-hidden="true"></i>
                </div>
                <div id="icon_pannel">
                    <ul class="">
                        <li><a href="index.jsp" class="active">Home</a></li>
                        <li>
                            <a >Lost &#9662;</a>
                            <ul class="dropdown">
                                <li><a href="idSection.jsp">Identity Card</a></li>
                                <li><a href="documentSection.jsp">Documents</a></li>
                                <li><a href="petSection.jsp">Pet</a></li>
                                <li><a href="otherSection.jsp">Other Thing</a></li>
                            </ul>
                        </li>
                        <li>
                            <a >Found &#9662;</a>
                            <ul class="dropdown">
                                <li><a href="idEntry.jsp">Identity Card</a></li>
                                <li><a href="documentEntry.jsp">Documents</a></li>
                                <li><a href="petEntry.jsp">Pet</a></li>
                                <li><a href="otherEntry.jsp">Other Thing</a></li>
                            </ul>
                        </li>
                        <li><a href="login.jsp" style="">Login</a></li>
                        <li><a href="singUp.jsp" style="">Sign Up</a></li>                        
                    </ul>
                </div>
            </div>
            </div>
    