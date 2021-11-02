package admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.ModeloCategoria;
import modelo.ModeloProducto;


@WebServlet("/PanelAdmin")
public class PanelAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public PanelAdmin() {
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ModeloCategoria mod = new ModeloCategoria();
		
		request.setAttribute("categoria", mod.mostrarCategorias());
		
		request.getRequestDispatcher("panel_admin.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
