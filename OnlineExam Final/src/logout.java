import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class logout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException {
	   
		HttpSession session=request.getSession();
		session.removeAttribute("username");
		session.removeAttribute("password");
		response.setHeader("cache-control","no-cache,no-store,must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		response.sendRedirect("homepage.jsp");
	}

}
