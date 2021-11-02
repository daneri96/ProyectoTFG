package usuarios;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.ModeloUsuario;



@WebServlet("/ActivacionUsuario")
public class ActivacionUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ActivacionUsuario() {
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ModeloUsuario md = new ModeloUsuario();
		
		String correo = request.getParameter("inputEmail");
		if(md.activacionUsuario(correo))
		{
			response.sendRedirect("Principal");
		}
		System.out.print(correo);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
