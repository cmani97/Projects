package foundModules;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.servlets.connection.DB;


@WebServlet("/pet")
@MultipartConfig(fileSizeThreshold = 1024*1024*2,
maxFileSize = 1024*1024*10,
maxRequestSize = 1024*1024*50
)
public class pet extends HttpServlet {
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
			response.setContentType("text/html;charset=UTF-8");
			out = response.getWriter();
			session = request.getSession(false);
			
			String petname = request.getParameter("petName");
			String location = request.getParameter("location");
			String date = request.getParameter("date");
			String foundername = request.getParameter("fName");
			String foundernum = request.getParameter("fNum");
			
			Part part=request.getPart("image");
			String fileName = extractFileName(part);
			String savePath = "C:\\Users\\manisha\\eclipse-workspace\\LostAndFound\\WebContent\\FoundImges\\Pets\\"+File.separator+fileName;
			File fileSaveDir = new File(savePath);
			
			part.write(savePath+File.separator);
					
			try{
				conn = DB.getConnection();
				
				String selectSql = "select * from pet_details where pet_name=? and location=? and date=?";
				ps = conn.prepareStatement(selectSql);
				ps.setString(1, petname);
				ps.setString(2, location);
				ps.setString(3, date);
				ResultSet rs = ps.executeQuery();
//				System.out.print(rs);
				if(rs.next())
				{
					request.setAttribute("petMessagef", "This Pet already inserted");
					getServletContext().getRequestDispatcher("/petEntry.jsp").forward(request, response);
				}
				else
				{
					String insertSql = "insert into pet_details(pet_name,location,date,image,path,founder_name,founder_num) values(?,?,?,?,?,?,?)";
					ps = conn.prepareStatement(insertSql);
					ps.setString(1, petname);
					ps.setString(2, location);
					ps.setString(3, date);
					ps.setString(4, fileName);
					ps.setString(5, savePath);
					ps.setString(6, foundername);
					ps.setString(7, foundernum);
					int status = ps.executeUpdate();
					if(status>0) {
						session.removeAttribute("logout_message");
						request.setAttribute("petMessages", "Pet details inserted successfully, Thank You");
						getServletContext().getRequestDispatcher("/petEntry.jsp").forward(request, response);
					}else {
						session.removeAttribute("logout_message");
						request.setAttribute("petMessagef", "Somthing went wrong please try again");
						getServletContext().getRequestDispatcher("/petEntry.jsp").forward(request, response);
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
//					out.println(e);
				}
			}
			
		}
		catch(IOException | ServletException e)
		{
			out.println("input Exception : "+e);
			System.out.println("input Eception : "+e);
		}
	}
	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for(String s:items)
		{
			if(s.trim().startsWith("filename"))
			{
				return s.substring(s.indexOf("=")+2, s.length()-1);
			}
		}
		return "";
	}

}
