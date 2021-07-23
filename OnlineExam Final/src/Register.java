import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url="jdbc:mysql://localhost:3306/onlinetest";
		String id="root";
		String pswd="12345";
		
		String FirstName		=request.getParameter("FirstName");
		String LastName			=request.getParameter("LastName");
		String Gender			=request.getParameter("sex");
		String DOB				=request.getParameter("dob");
		String ContactNumber	=request.getParameter("phoneNumber");
		String Email            =request.getParameter("EmailId");
		String Password			=request.getParameter("password");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,id,pswd);
			
			String query="insert into register(FirstName,LastName,Gender,DOB,ContactNumber,EmailId,Password)" +"values(?,?,?,?,?,?,?)";
			
			 
		      PreparedStatement preparedStmt = con.prepareStatement(query);
		      preparedStmt.setString(1,FirstName);
		      preparedStmt.setString(2,LastName);
		      preparedStmt.setString(3,Gender);
		      preparedStmt.setString(4,DOB);
		      preparedStmt.setString(5,ContactNumber);
		      preparedStmt.setString(6,Email);
		      preparedStmt.setString(7,Password);
		      
		      preparedStmt.execute();
		      
		      con.close();
		      
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		response.setHeader("cache-control","no-cache,no-store,must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		
		response.sendRedirect("login.jsp");

	}
}
