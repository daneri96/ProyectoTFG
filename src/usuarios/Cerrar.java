package usuarios;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Cerrar")
public class Cerrar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Cerrar() {
    
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sesion;
		sesion = request.getSession();
		sesion.setAttribute("inicio", null);
		sesion.setAttribute("admin",null);
		
		response.sendRedirect("Principal");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
