package usuarios;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.ModeloUsuario;
import modelo.Usuario;


@WebServlet("/Sesion")
public class Sesion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Sesion() {
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("sesion-usuario.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ModeloUsuario mod;
		HttpSession sesion;
		Usuario usu;
		mod = new ModeloUsuario();
		sesion = request.getSession();
		//Captura de parámetros
	
		String control = request.getParameter("pagename");
		
		
		
		switch(control) {
		case "INICIAR SESIÓN":
			String correo = request.getParameter("correo");
			String clave = request.getParameter("clave");
			usu = (Usuario) mod.loguear((Usuario)request.getSession().getAttribute("sesion"), correo, clave);
			//hay que tmb setear la contraseña
			
			if(!usu.getRol().equals("admin")) {
				
				if(!usu.equals("anonimo")) 
				{
					//seteamos la sesion con el objeto usu
					sesion.setAttribute("inicio", usu.getNombre());
					sesion.setAttribute("admin", usu.getRol());
					sesion.setAttribute("sesion", usu); 
					response.sendRedirect("Principal");
				}else
				{
					sesion.setAttribute("error", "Los datos de acceso , son incorrectos");
					response.sendRedirect("Principal");
				}
			}else {
				response.sendRedirect("PanelAdmin");
			}
		
			
			
			
			break;
		}
		
		
	}


}
