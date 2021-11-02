package usuarios;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.ModeloUsuario;
import utilidades.Correo;

@WebServlet("/Contacte")
public class Contacte extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Contacte() {
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("contacto.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String control = request.getParameter("pagename");
		String email = request.getParameter("correo");
		ModeloUsuario md = new ModeloUsuario();
		HttpSession sesion;
		sesion = request.getSession();
		
		switch(control)
		{
		//PENDIENTE DE REVISAR COMO PONER LOS CORREOS DE LOS CLIENTES
		case "Enviar":
			String mensajeDeVerificacion="";
			//if(!md.existeEmail(email)) 
			//{
				sesion.setAttribute("exito", "Su correo ha sido enviado correctamente");
				Correo cor = new Correo();
				mensajeDeVerificacion = request.getParameter("mensaje");
				cor.enviar(email, "659867405l", "danerialvarezcortes@gmail.com", "atencion al cliente", mensajeDeVerificacion);
				
				response.sendRedirect("Contacte");
			//}
			break;
		}
	}

}
