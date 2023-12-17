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
	String nombre = request.getParameter("name");
	String apellido = request.getParameter("surname");
	String mail = request.getParameter("mail");
	String cantidad = request.getParameter("quantity"); 
	String categoria = request.getParameter("categoria");
	String query = "INSERT INTO tickets(nombre, apellido, mail, cantidad, categoria) VALUES('"+nombre+"', '"+apellido+"', '"+mail+"', '"+cantidad+"', '"+categoria+"')";
	
	MySqlConexion conexion = new MySqlConexion();
	Connection cn = conexion.conectar();
	
	try{ 
	Statement stm = cn.createStatement();
	stm.executeUpdate(query);
	
	} catch (Exception e) {
		e.printStackTrace();
	}
	
%>

<jsp:include page="tickets.jsp"></jsp:include>

</body>
</html>
