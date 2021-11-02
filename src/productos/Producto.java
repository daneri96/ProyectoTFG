package productos;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.ModeloCategoria;
import modelo.ModeloProducto;


@WebServlet("/Producto")
public class Producto extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Producto() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ModeloCategoria mod = new ModeloCategoria();
		ModeloProducto md = new ModeloProducto();
		
		String control = request.getParameter("id");
		
		
		switch(control)
		{
		case "1":
			request.setAttribute("categoria", mod.mostrarCategorias());
			request.setAttribute("tipoCategoria", mod.mostrarCadaCategoria(1));
			request.setAttribute("producto", md.mostrarProductos(2));
			request.getRequestDispatcher("productos.jsp").forward(request, response);
			break;
		case "2":
			request.setAttribute("categoria", mod.mostrarCategorias());
			request.setAttribute("tipoCategoria", mod.mostrarCadaCategoria(2));
			request.setAttribute("producto", md.mostrarProductos(1));
			request.getRequestDispatcher("productos.jsp").forward(request, response);
		    break;
		case "3":
			request.setAttribute("categoria", mod.mostrarCategorias());
			request.setAttribute("tipoCategoria", mod.mostrarCadaCategoria(3));
			request.setAttribute("producto", md.mostrarProductos(3));
			request.getRequestDispatcher("productos.jsp").forward(request, response);
			break;
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
