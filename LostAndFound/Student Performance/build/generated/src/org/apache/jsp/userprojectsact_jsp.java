package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;
import java.util.*;

public final class userprojectsact_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/connect.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Student Performance</title>\n");
      out.write("<meta name=\"keywords\" content=\"\" />\n");
      out.write("<meta name=\"description\" content=\"\" />\n");
      out.write("<link href=\"templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"css/orman.css\" type=\"text/css\" media=\"screen\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/nivo-slider.css\" type=\"text/css\" media=\"screen\" />\t\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/ddsmoothmenu.css\" />\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/ddsmoothmenu.js\">\n");
      out.write("\n");
      out.write("/***********************************************\n");
      out.write("* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)\n");
      out.write("* This notice MUST stay intact for legal use\n");
      out.write("* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code\n");
      out.write("***********************************************/\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<script language=\"javascript\" type=\"text/javascript\">\n");
      out.write("\n");
      out.write("ddsmoothmenu.init({\n");
      out.write("\tmainmenuid: \"templatemo_menu\", //menu DIV id\n");
      out.write("\torientation: 'h', //Horizontal or vertical menu: Set to \"h\" or \"v\"\n");
      out.write("\tclassname: 'ddsmoothmenu', //class added to menu's outer DIV\n");
      out.write("\t//customtheme: [\"#1c5a80\", \"#18374a\"],\n");
      out.write("\tcontentsource: \"markup\" //\"markup\" or [\"container_id\", \"path_to_menu_file\"]\n");
      out.write("})\n");
      out.write("\n");
      out.write("function clearText(field)\n");
      out.write("{\n");
      out.write("    if (field.defaultValue == field.value) field.value = '';\n");
      out.write("    else if (field.value == '') field.value = field.defaultValue;\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"css/slimbox2.css\" type=\"text/css\" media=\"screen\" /> \n");
      out.write("<script type=\"text/JavaScript\" src=\"js/slimbox2.js\"></script> \n");
      out.write("<!--  t e m p l a t e m o  372  t i t a n i u m  -->\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div id=\"templatemo_wrapper\">\n");
      out.write("\t<div id=\"templatemo_header\">\n");
      out.write("    \t<div id=\"site_title\">\n");
      out.write("            <center><h2><font color=\"white\">Student Performance with Graph & Academic Project Work Reporting System</font></h2></center>\n");
      out.write("        </div>\n");
      out.write("    </div><!-- END of templatemo_header -->\n");
      out.write("    <div id=\"templatemo_menu\" class=\"ddsmoothmenu\">\n");
      out.write("        <ul>\n");
      out.write("            <li><a href=\"userhome.jsp\">Home</a></li>\n");
      out.write("            <li><a href=\"userprojects.jsp\" class=\"selected\">Projects</a></li>\n");
      out.write("            <li><a href=\"viewattendance.jsp\">Attendance</a></li>\n");
      out.write("            <li><a href=\"viewmarks.jsp\">Marks</a></li>\n");
      out.write("            <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("        </ul>\n");
      out.write("        <br style=\"clear: left\" />\n");
      out.write("    </div> <!-- end of templatemo_menu -->\n");
      out.write("    <div id=\"templatemo_slider\">\n");
      out.write("    \t <div class=\"slider-wrapper theme-orman\">\n");
      out.write("                <img src=\"images/slider/01.png\"  ></img>\n");
      out.write("        </div> \n");
      out.write("\t\t<script type=\"text/javascript\" src=\"js/jquery-1.6.1.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.nivo.slider.pack.js\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("        $(window).load(function() {\n");
      out.write("            $('#slider').nivoSlider({\n");
      out.write("\t\t\t\tcontrolNav:true\n");
      out.write("\t\t\t});\n");
      out.write("        });\n");
      out.write("        </script>\n");
      out.write("</div><!-- END of templatemo_slider -->\n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    ");
      out.write("\r\n");
      out.write("\r\n");

	Connection connection = null;
 	try {
     	
	  	Class.forName("com.mysql.jdbc.Driver");	
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentperformance","root","root");
      	String sql="";

	}
	catch(Exception e)
	{
		System.out.println(e);
	}

      out.write("\n");
      out.write("<div id=\"templatemo_main\">\n");
      out.write("    ");

    
        String title = request.getParameter("title");
        String year = request.getParameter("year1");
        String guide = request.getParameter("guide");
        try {
        String query = "select * from file where title = '"+title+"' and year = '"+year+"' and guide = '"+guide+"' ";
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(query);

    
      out.write("\n");
      out.write("    <center><table border=\"2\" width=\"100%\">\n");
      out.write("        <tr style=\"background-color: black\">\n");
      out.write("        <th><font color=\"white\">Project Title</th>\n");
      out.write("        <th><font color=\"white\">Guide</th>\n");
      out.write("        <th><font color=\"white\">Abstract</th>\n");
      out.write("        <th><font color=\"white\" >Document</th>\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("            ");
                while (rs.next()) {
            
      out.write("\n");
      out.write("\n");
      out.write("    <tr>\n");
      out.write("         <th><font color=\"black\">");
      out.print(rs.getString(2));
      out.write("</th>\n");
      out.write("         <th><font color=\"black\">");
      out.print(rs.getString(5));
      out.write("</th>\n");
      out.write("         <th><font color=\"black\">\n");
      out.write("                 <textarea rows=\"4\" cols=\"22\" required=\"\" style=\"text-align: left;direction: ltr;\">");
      out.print(rs.getString(6));
      out.write("</textarea></th>\n");
      out.write("         <th><font color=\"black\">\n");
      out.write("             <textarea rows=\"4\" cols=\"22\" required=\"\" style=\"text-align: left;direction: ltr;\">");
      out.print(rs.getString(8));
      out.write("</textarea></th>\n");
      out.write("            ");

                }
                } catch (Exception e) {
                    e.printStackTrace();
                }

            
      out.write("\n");
      out.write("            </table></center>\n");
      out.write("            <br/><center>\n");
      out.write("                <input type=\"button\" value=\"Go Back!\" onclick=\"history.go(-1)\"></input></center>\n");
      out.write("<div class=\"half right\">\n");
      out.write("</div>\n");
      out.write("<div class=\"clear\"></div>\n");
      out.write("</div><!-- END of templatemo_main -->\n");
      out.write("</div><!-- END of templatemo_wrapper -->\n");
      out.write("<div id=\"templatemo_footer_wrapper\">    \n");
      out.write("    <div id=\"templatemo_footer\">\n");
      out.write("        <center><p>Copyright © 2072 <a href=\"#\">All Rights Received</a></p></center>\n");
      out.write("    </div><!-- END of templatemo_footer -->\n");
      out.write("</div><!-- END of templatemo_footer_wrapper -->\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
