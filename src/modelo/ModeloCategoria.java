package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ModeloCategoria {

	//MIRAR EL TEMA DE CATEGORIAS PARA SESION CON EL USUARIO Y LO DEMAS
	private Conexion conn;
	
	public ModeloCategoria() {
		conn = new Conexion("ns3034756.ip-91-121-81.eu:5432","a20-dalvcor","a20-dalvcor","a20-dalvcor");
	}
	
	public Categoria[] mostrarCategorias() {

		Categoria[] cat = null;

		try {
			Statement st = conn.getConexion().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			ResultSet rs = st.executeQuery("select nombre,id from \"tienda\".categorias order by id ASC LIMIT 3;");
			System.out.print(rs);
			int rowcount = 0, i = 0;

			if (rs.last()) {
				rowcount = rs.getRow();
				rs.beforeFirst();

			}

			cat = new Categoria[rowcount];

			while (rs.next())
				cat[i++] = new Categoria(rs.getString("nombre") ,rs.getInt("id"));
				
		} catch (SQLException ex) {

			ex.printStackTrace();

		}
		
		return cat;
		
	}
	
	
	public Categoria[] mostrarCadaCategoria(int id) {

		Categoria[] cat = null;

		try {
			Statement st = conn.getConexion().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			ResultSet rs = st.executeQuery("select nombre,id from \"tienda\".categorias where id = "+id+" order by id ASC LIMIT 3;");
			System.out.print(rs);
			int rowcount = 0, i = 0;

			if (rs.last()) {
				rowcount = rs.getRow();
				rs.beforeFirst();

			}

			cat = new Categoria[rowcount];

			while (rs.next())
				cat[i++] = new Categoria(rs.getString("nombre") , rs.getInt("id"));
				
		} catch (SQLException ex) {

			ex.printStackTrace();

		}
		
		return cat;
		
	}
	
}
