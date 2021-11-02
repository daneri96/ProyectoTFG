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



@WebServlet("/PerfilUsuario")
public class PerfilUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public PerfilUsuario() {
     
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("perfil_usuario.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String control = request.getParameter("pagename");
		Usuario usu = (Usuario)request.getSession().getAttribute("sesion");
		ModeloUsuario mod = new ModeloUsuario();
		HttpSession sesion;
		sesion = request.getSession();
		
		switch(control) {
		case "Modificar":
			usu.setNombre(request.getParameter("nombre"));
			usu.setApellidos(request.getParameter("apellidos"));
			usu.setEmail(request.getParameter("correo"));
			usu.setDireccion(request.getParameter("direccion"));
			
			if(mod.modificarUsuario((Usuario)request.getSession().getAttribute("sesion"))) {
				sesion.setAttribute("modificado", "Los datos fueron modificados correctamente!!");
				response.sendRedirect("PerfilUsuario");
			}
			
		break;
		}
		
	}

}
