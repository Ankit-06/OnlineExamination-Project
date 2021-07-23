import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;

@WebServlet("/feedback")

public class feedback extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request,HttpServletResponse response) throws IOException {

		String url="jdbc:mysql://localhost:3306/onlinetest";
		String id="root";
		String pswd="12345";
		
		String Email_ID=request.getParameter("username");
		String Name=request.getParameter("name");
		String Subject=request.getParameter("subject");
		String Message=request.getParameter("message");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
					
			Connection con=DriverManager.getConnection(url,id,pswd);
			
			String sql="insert into feedback(Email_ID,Name,Subject,Message)"+"values(?,?,?,?)";
			
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setString(1,Email_ID);
			stmt.setString(2,Name);
			stmt.setString(3,Subject);
			stmt.setString(4,Message);
			
			stmt.execute();
			
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		response.setHeader("cache-control","no-cache,no-store,must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		
		response.sendRedirect("home.jsp");
	}
}