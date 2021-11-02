package modelo;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ModeloUsuario {

	Usuario usu;
	private Conexion conn;
	
	//conexion de base de datos
	public ModeloUsuario() {
		conn = new Conexion("ns3034756.ip-91-121-81.eu:5432","a20-dalvcor","a20-dalvcor","a20-dalvcor");
	}
	
	
	//consulta para el registro del usuario
	public boolean RegistraUsuario(String nombre,String apellidos , String correo , String clave , String direccion)
	{
		String consulta="INSERT INTO \"pruebasTFG\".usuarios (nombre,apellidos,email,password,direccion,rol,imagen) VALUES(?,?,?,?,?,?,?)";
		boolean resultado = false;
		String rol ="user";
		
		File f = new File("user.jpg");
		FileInputStream fis;
		
		try {
			fis = new FileInputStream(f);
			
			PreparedStatement st = conn.getConexion().prepareStatement(consulta);
			st.setString(1, nombre);
			st.setString(2, apellidos);
			st.setString(3, correo);
			st.setString(4, clave);
			st.setString(5, direccion);
			st.setString(6, rol);
			st.setBinaryStream(7, fis, (int)f.length());
			st.executeUpdate();
			st.close();
			
			resultado = true;
		}catch(SQLException ex) {
			ex.printStackTrace();
		}catch(FileNotFoundException e) {
			e.printStackTrace();
		}
		return resultado;
	}
	
	//consulta para saber si el correo electrónico se encuentra ya registrado en nuestro sistema
	
	public boolean existeEmail(String email) 
	{
		boolean resultado = false;
		String consulta = "SELECT email from \"pruebasTFG\".usuarios where email= ?";
		
		try {
			PreparedStatement st = conn.getConexion().prepareStatement(consulta);
			st.setString(1, email);
			ResultSet rs = st.executeQuery();
			resultado = rs.next();
			
			
		}catch(SQLException ex) {
			ex.printStackTrace();
		}
		return resultado;
	}
	
	//consulta para activar la cuenta del usuario
	public boolean activacionUsuario(String email) {
		String consulta ="UPDATE \"pruebasTFG\".usuarios SET activado = true where email ='"+email+"'";
		boolean resultado = false;
		
		try {
			PreparedStatement st = conn.getConexion().prepareStatement(consulta);
			st.executeUpdate();
			st.close();
		
			resultado  = true;
		}catch(SQLException ex) {
			ex.printStackTrace();
		}
		return resultado;
	}
	
	//consulta para iniciar sesion con el usuario
	public Usuario loguear(Usuario usu,String correo , String clave) {
		
		ResultSet rs;
		
		try {
			Statement st = conn.getConexion().createStatement();
		    rs = st.executeQuery("SELECT id,nombre,apellidos,email,password,direccion,rol FROM \"pruebasTFG\".usuarios where email= '"+correo+"';");
		    
		    if(rs.next() && rs.getString("password").equals(clave))
		    	usu = new Usuario(rs.getInt("id"),rs.getString("nombre"),rs.getString("apellidos"),rs.getString("email"),rs.getString("password"),rs.getString("direccion"),rs.getString("rol"));
		    	
		    
		}catch(SQLException ex) {
			ex.printStackTrace();
		}
		return usu;
	}
	
	//consulta para modificar los datos del usuario
	public boolean modificarUsuario(Usuario usu) {
		boolean resultado = false;
		try 
		{
			Statement st = usu.getConn().getConexion().createStatement();
			st.execute("UPDATE \"tienda\".usuarios SET "+
					"nombre='"+usu.getNombre()+
					"', apellidos='"+usu.getApellidos()+
					"', email='"+usu.getEmail()+						
					"', direccion='"+usu.getDireccion()+
					"' WHERE id = '"+usu.getId()+"';");
			
			resultado = true;
			st.close();
			
		}catch(SQLException ex) {
			
			ex.printStackTrace();
			
		}
		return resultado;
	}
	
}
