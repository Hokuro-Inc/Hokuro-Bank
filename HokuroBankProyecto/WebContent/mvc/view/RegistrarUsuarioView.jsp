<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean  id="clienteBean" scope="session" class="es.uco.iw.display.ClienteBean"></jsp:useBean>
<jsp:useBean  id="infoClienteBean" scope="session" class="es.uco.iw.display.UsuarioInfoBean"></jsp:useBean>

<%@ page import ="es.uco.iw.negocio.usuario.RolUsuario, es.uco.iw.negocio.usuario.UsuarioDTO" %>
    
<!DOCTYPE html>
<html>

<head>

<meta charset="ISO-8859-1">

<!-- scripts y css -->
<title>Registrarse</title>

</head>
<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
<!-- QUIEN VAYA A PROBAR ESTO, QUE MIRE SI EN EL CONTROLADOR ESTA BEN PUESTA LA NEXT PAGE, 
NECESITA EL .JSP -->
<body>

<%  
boolean logged = clienteBean != null && !clienteBean.getDni().equals("");
System.out.println("BEAN FALLARA");
String nextPage = "";
String mensajeNextPage = "";
if (clienteBean == null || clienteBean.getDni().equals(""))  {
	nextPage = "index.jsp";
	mensajeNextPage = "Usted no se encuentra logueado";
}else if(!clienteBean.getRol().equals("Administrador")){
	nextPage = "index.jsp";
	mensajeNextPage = "Usted no es administrador";	
}else{	
	
%> 

<div>

	<form method="post" action="RegistrarUsuario">
	
		<label for="DNI">DNI: </label> <br/>
		
		<input type="text" name="DNI" > <br/>
	
		<label for="Nombre">Nombre: </label> <br/>
		
		<input type="text" name="nombre" > <br/>
		
		<label for="Apellidos">Apellidos: </label> <br/>
		
		<input type="text" name="apellidos" > <br/>
		
		<label for="Email">Email: </label> <br/>
		
		<input type="email" name="email" > <br/>
		
		<label for="Direccion">Direccion: </label> <br/>
		
		<input type="text" name="direccion" > <br/>
		
		<label for="Telefono">Telefono: </label> <br/>
		
		<input type="tel" name="telefono" pattern="[0-9]{9}">
		
		<label for="Rol">Rol: </label> <br/>
		
		<input type="text" name="rol" > <br/>
		
		<label for="Password">Contraseña: </label> <br/>
		
		<input type="password" name="password" ><br/>
	
		<input type="submit" value="Registrarse">
		
	</form>

</div>


<%} %>

</body>
</html>