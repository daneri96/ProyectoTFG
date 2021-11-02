package productos;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.ModeloCategoria;
import modelo.ModeloProducto;

@WebServlet("/InfoProducto")
public class InfoProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public InfoProducto() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ModeloProducto md = new ModeloProducto();
		ModeloCategoria mod = new ModeloCategoria();
		int id = Integer.parseInt(request.getParameter("id"));
		
		
		
		request.setAttribute("categoria", mod.mostrarCategorias());
		request.setAttribute("infoProducto", md.infoProducto(id));
		request.getRequestDispatcher("informacion_productos.jsp").forward(request, response);
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
