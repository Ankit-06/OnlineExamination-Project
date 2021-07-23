import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;

@WebServlet("/checking")
public class checking extends HttpServlet {
  private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	HttpSession session = request.getSession();				//creating session object to get the parameters passed from another JSP's.
	
    HashMap < Integer, Integer > hm = new HashMap < > ();
    for (int i = 1; i <= 10; i++) {
      if (request.getParameter("ans" + i) != null)
        hm.put(i, Integer.parseInt(request.getParameter("ans" + i)));	//inserting the answers given by the user with their question numbers.
    }

    int correct = 0;
    int incorrect = 0;
    int attempt = 0;
    
    String str="";
    
    switch((String)session.getAttribute("subject")) {	//checking for which subject we have to evaluate the answers. 
	  	case "c": str="cAns";							//initializing str with the column name where the correct answers of the subject exist.
	  	break;
	  	
	  	case "java": str="javaAns";
	  	break;
	  	
	  	case "it": str="ITAns";
	  	break;
	  	
	  	case "pom": str="pomAns";
	  	break;
	  	
	  	case "de": str="deAns";
	  	break;
	  	
	  	case "maths": str="mathsAns";
	  	break;
    }
    
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");

      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinetest", "root", "12345");
      
      for(Map.Entry<Integer, Integer> e:hm.entrySet()) {	//iterating over the hashMap created with user responses. 
    	  
    	  	String sql = "select"+" "+str+" "+"from question where questionNo=?";	//initializing sql query to fetch correct answers from the question table. 
	  	  	
    	  	PreparedStatement stmt = con.prepareStatement(sql);
    		
	        stmt.setInt(1, e.getKey());			//passing the question numbers which user has attempted to check the correct answers from the table.													

	        ResultSet rs = stmt.executeQuery();
	        rs.next();
    	         
	        if (e.getValue() == rs.getInt(str))	//checking if the answer given by the user is same as the correct answer stored in the table or not.
	          correct++;						//if yes, then increasing the count of correct. 
	        else
	          incorrect++; 						//if no, then increasing the count of incorrect.
      }
      con.close();

    } catch (Exception e) {
      e.printStackTrace();
    }

    attempt = hm.size();						//the size of the hashMap is equal to the number of questions attempted. 
    
    session.setAttribute("correct", correct);		//setting attribute for result page
    session.setAttribute("incorrect", incorrect);
    session.setAttribute("attempt", attempt);
    //session.getAttribute("username");			

    response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
    
    response.sendRedirect("result.jsp");		//redirecting to the result page.		
  }
}