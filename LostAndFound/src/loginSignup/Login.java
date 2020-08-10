package loginSignup;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.servlets.connection.DB;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PrintWriter out = null;
	Connection conn = null;
	PreparedStatement ps =null;
	HttpSession session = null;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
			out = response.getWriter();
			session = request.getSession(false);
			
			String username=request.getParameter("uname");
			String password=request.getParameter("psw");
			try{
				conn = DB.getConnection();
				System.out.println("Connection done");
				
				String sql = "select * from login where username=? and password=?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, username);
				ps.setString(2, password);
				ResultSet rs = ps.executeQuery();
				System.out.print(rs);
				if(rs.next())
				{
					session.removeAttribute("logout_message");
					session.setAttribute("username", username);
					response.sendRedirect("index.jsp");
					
				}
				else
				{
					session.removeAttribute("logout_message");
					request.setAttribute("loginfailed", "Does not found account");
					getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
				}
			}
			catch(SQLException e) 
			{
				out.println("jsp query and connection Exception : "+e);
				System.out.println("query and connection Exception : "+e);
			}
			finally 
			{
				try {
					if(ps!=null)
					{
						ps.close();
					}
					if(conn!=null)
					{
						conn.close();
					}
				}catch(SQLException e) {
					out.println(e);
				}
			}
			
		}
		catch(IOException e)
		{
			out.println("input Exception : "+e);
			System.out.println("input Eception : "+e);
		}
	}

}
