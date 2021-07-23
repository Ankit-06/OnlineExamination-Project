import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		String username=request.getParameter("EmailId");
		
		String password=request.getParameter("password");
		
		HttpSession session = request.getSession();
		
		if(username.equals("admin@oe.com") && password.equals("admin")){
			response.sendRedirect("Admin.jsp");
			session.setAttribute("Admin",username);
		}
		else if(username.equals("admin@oe.com"))
			response.sendRedirect("incorrect.jsp");
		
		String url="jdbc:mysql://localhost:3306/onlinetest";
		String id="root";
		String pswd="12345";
		
		 
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con=DriverManager.getConnection(url,id,pswd);
			
			
			String sql="select FirstName from register where EmailId=? and Password=?";
			
	
			
			PreparedStatement stmt= con.prepareStatement(sql);
			stmt.setString(1,username);
			stmt.setString(2, password);
			  
			ResultSet rs=stmt.executeQuery();
			
			if(rs.next())
			{
			 	session.setAttribute("username", username);
			 	session.setAttribute("password", password);
			 	
				response.sendRedirect("home.jsp");
			}
			else
			{
				response.sendRedirect("incorrect.jsp");
			}
			con.close();
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
			response.setHeader("cache-control","no-cache,no-store,must-revalidate");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Expires", "0");
	}
}


