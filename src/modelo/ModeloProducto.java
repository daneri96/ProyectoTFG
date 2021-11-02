package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ModeloProducto {

	private Conexion conn;
	
	public ModeloProducto() {
		conn = new Conexion("ns3034756.ip-91-121-81.eu:5432","a20-dalvcor","a20-dalvcor","a20-dalvcor");
	}
	
	//PRUEBA PARA MOSTRAR LOS PRODUCTOS DE LA PÁGINA INICIAL
	
	public Producto[] mostrarProductos(int id) {
		Producto[] pr = null;

		try {
			Statement st = conn.getConexion().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			ResultSet rs = st.executeQuery("select * from \"pruebasTFG\".productos where categoria_id =" +id);
			System.out.print(rs);
			int rowcount = 0, i = 0;

			if (rs.last()) {
				rowcount = rs.getRow();
				rs.beforeFirst();

			}

			pr = new Producto[rowcount];

			while (rs.next())
				pr[i++] = new Producto(rs.getString("nombre") ,rs.getInt("id"));
				
		} catch (SQLException ex) {

			ex.printStackTrace();

		}
		
		return pr;
	}
	
	//información del producto del catalogo
	public Producto[] infoProducto(int id) {
		Producto[] pr = null;

		try {
			Statement st = conn.getConexion().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			ResultSet rs = st.executeQuery("select * from \"pruebasTFG\".productos where id =" +id);
			System.out.print(rs);
			int rowcount = 0, i = 0;

			if (rs.last()) {
				rowcount = rs.getRow();
				rs.beforeFirst();

			}

			pr = new Producto[rowcount];

			while (rs.next())
				pr[i++] = new Producto(rs.getString("nombre") ,rs.getInt("id"));
				
		} catch (SQLException ex) {

			ex.printStackTrace();

		}
		
		return pr;
	}
}
