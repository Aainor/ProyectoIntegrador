<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import = "fsjava.proyectofe.driver.mysql.MySqlConexion" %>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<%
	String Nombre = request.getParameter("name");
	String Apellido = request.getParameter("surname");
	String Tema = request.getParameter("text");
	String query = "INSERT INTO conviertete(Nombre, Apellido, Tema) VALUES('"+Nombre+"', '"+Apellido+"', '"+Tema+"')";
	
	MySqlConexion conexion = new MySqlConexion();
	Connection cn = conexion.conectar();
	
	try{ 
	Statement stm = cn.createStatement();
	stm.executeUpdate(query);
	
	} catch (Exception e) {
		e.printStackTrace();
	}
	
%>

<jsp:include page="oradores.jsp"></jsp:include>

</body>
</html>
