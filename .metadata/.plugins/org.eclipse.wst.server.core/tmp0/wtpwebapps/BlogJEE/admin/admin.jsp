<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<h1>Panel de control</h1>
	<table border=1>
		<thead>
			<tr>
				<th>Identificador</th>
				<th>titulo</th>
				<th>contenido</th>
				<th>fecha</th>
				<th>autor</th>
				<th>imagen</th>
				<th>categoria</th>
				<th>palabras clave</th>
			</tr>
			
		</thead>
		<tbody>
			<%
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection conexion = null;
				
				try{
					String url = "jdbc:mysql://localhost:3306/blogjee";
					String usuario = "blogjee";
					String contrasena = "blogjee";
					
					conexion = DriverManager.getConnection(url,usuario,contrasena);
					
					Statement peticion = conexion.createStatement();
					ResultSet resultados = peticion.executeQuery("SELECT * FROM entradas");
					
					while(resultados.next()){
						out.println(""+
								"<tr>"+
									"<td>"+resultados.getInt("Identificador")+"</td>"+
									"<td>"+resultados.getString("titulo")+"</td>"+
									"<td>"+resultados.getString("contenido")+"</td>"+
									"<td>"+resultados.getString("fecha")+"</td>"+
									"<td>"+resultados.getString("autor")+"</td>"+
									"<td>"+resultados.getString("imagen")+"</td>"+
									"<td>"+resultados.getString("categoria")+"</td>"+
									"<td>"+resultados.getString("palabrasclave")+"</td>"+
								"</tr>"+
								"");
					}
					
				}catch(Exception e){
					e.printStackTrace();
				}finally{
					if(conexion != null){
						conexion.close();
					}
				}
			%>
			<form action="?" method="POST">
			<tr>
				<th></th>
				<th><input type="text" name="titulo"></th>
				<th><input type="text" name="contenido"></th>
				<th><input type="text" name="fecha"></th>
				<th><input type="text" name="autor"></th>
				<th><input type="text" name="imagen"></th>
				<th><input type="text" name="categoria"></th>
				<th><input type="text" name="palabrasclave"></th>
				<th><input type="submit"></th>
			</tr>
			</form>
		</tbody>
	</table>
</body>
</html>