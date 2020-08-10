package loginSignup;

import com.servlets.connection.DB;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


@WebServlet("/signUp")
public class signUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PrintWriter out = null;
	Connection conn = null;
	PreparedStatement ps =null;
	HttpSession session = null;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			out = response.getWriter();
			session = request.getSession(false);
			
			String username = request.getParameter("uname");
			String email = request.getParameter("email");
			String password = request.getParameter("psw");
			try{
				conn = DB.getConnection();
				System.out.println("Connection done");
				
				String selectSql = "select * from login where username=?";
				ps = conn.prepareStatement(selectSql);
				ps.setString(1, username);
				ResultSet rs = ps.executeQuery();
				System.out.print(rs);
				if(rs.next())
				{
					request.setAttribute("signUp", "You already have an account please login");
					getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
				}
				else
				{
					String sql = "insert into login(username,email,password) values(?,?,?)";
					ps = conn.prepareStatement(sql);
					System.out.println("ps error");
					ps.setString(1, username);
					ps.setString(2, email);
					ps.setString(3, password);
					System.out.println("before status statement");
					int status = ps.executeUpdate();
					System.out.println("after status statement");
					if(status==0) {
						session.removeAttribute("logout_message");
						request.setAttribute("signUp", "Somthing went wrong please try again");
						getServletContext().getRequestDispatcher("/signUp.jsp").forward(request, response);
					}else {
						session.removeAttribute("logout_message");
						request.setAttribute("signUp", "Account created. Please Login Here");
						getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
					}
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
		catch(IOException | ServletException e)
		{
			out.println("input Exception : "+e);
			System.out.println("input Eception : "+e);
		}
	}

}
