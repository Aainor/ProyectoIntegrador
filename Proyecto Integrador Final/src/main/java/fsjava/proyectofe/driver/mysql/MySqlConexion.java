package fsjava.proyectofe.driver.mysql;

import java.sql.*;

public class MySqlConexion {
	private static final String CONTROLADOR = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/oradores";
	private static final String USSER = "root";
	private static final String PASS = "";
	
	static { 
		try {
		Class.forName(CONTROLADOR);
		//System.out.println("Se cargó el controlador correctamente");
	} catch(ClassNotFoundException e) {
		System.err.println("Error al cargar el controlador");
		e.printStackTrace();
	}
	}

	public Connection conectar() {
		
		Connection conexion = null;
		
			try {
			conexion = DriverManager.getConnection(URL, USSER, PASS);
			//System.out.println("Se generó la conexion con la DB");
		} catch (SQLException e) {
			System.out.println("Error al establecer la conexión");
			e.printStackTrace();
		}
		
		return conexion;
	
	}
	
	
}
