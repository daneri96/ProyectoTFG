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


@WebServlet("/Registro")
public class Registro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Registro() {
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
	
		request.getRequestDispatcher("registro-usuario.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//captura de parametros
		String nombre = request.getParameter("inputName");
		String apellidos = request.getParameter("inputSurname");
		String direccion = request.getParameter("inputAdress");
		String correo = request.getParameter("inputEmail");
		String clave = request.getParameter("inputPassword");
		
		
		ModeloUsuario md;
		HttpSession sesion;
		md = new ModeloUsuario();
		String control = request.getParameter("pagename");
		sesion = request.getSession();
		
		switch(control) {
		case "Registro":
			String mensajeDeVerificacion ="";
			//Hay que pasarle la segurirdad  a la contraseña
			if(!md.existeEmail(correo))
			{
				
				if(md.RegistraUsuario(nombre, apellidos, correo, clave, direccion)) 
				{
					sesion.setAttribute("exito", "Se ha podido registrar con exito , revise su correo para activar su cuenta");
					Correo cor = new Correo();
					mensajeDeVerificacion = "confirme su correo <a href='http://localhost:7070/JSP/ActivacionUsuario?correo="+correo+"'>Aquí</a>";
					cor.enviar("danerialvarezcortes@gmail.com", "659867405l", correo, "link de activacion", mensajeDeVerificacion);
					

					response.sendRedirect("Registro");
				}else 
				{
					sesion.setAttribute("error", "No pudo registrarse hubo un error ");
				}
				
			}else 
			{
				sesion.setAttribute("repetido", "El correo que intenta registrar ya tiene una cuenta ");
				response.sendRedirect("Registro");
			}
			
			
			break;
		}
		
	
		
	}

}
