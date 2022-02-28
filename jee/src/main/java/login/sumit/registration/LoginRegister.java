
package login.sumit.registration;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.annotation.WebServlet;


@WebServlet("/loginRegister")
public class LoginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginRegister() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		LoginDao cd = new LoginDaoImpl();
		String userName = request.getParameter("username");
		String password = request.getParameter("password1");
		
		String submitType = request.getParameter("submit");
		
		Login c = cd.getLogin(userName, password);
		
		if (submitType.equals("login") && c!=null && c.getName()!=null) {
			
			request.setAttribute("message", c.getName());
			request.getRequestDispatcher("welcome.jsp").forward(request, response);
			
		}else if (submitType.equals("register")) {
			
			c.setName(request.getParameter("name"));
			c.setPassword(password);
			c.setUsername(userName);
			cd.insertLogin(c);
			
			request.setAttribute("successMessage", "Inscription avec succés,vous pouvez maintenant vous connecter!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else {
			request.setAttribute("message", "Veuillez resaisir des données correctes");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
	}

}