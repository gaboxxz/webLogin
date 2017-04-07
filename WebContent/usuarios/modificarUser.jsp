<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modificacion de usuarios</title>

<script type="text/javascript">
function traerDatos(){
	alert("Usuario Manu para que haga algo. Aca tendria que llamar a la bd. Ahora carga javascript ");
	if(document.getElementById("usuario").value=="Manu"){
	
	document.getElementById("Nombre").value="Manuel";
	document.getElementById("password").value="Manu123Tuero";
	document.getElementById("Edad").value="77";
	return true;} else {alert("No existe el usuario");return false;}
}
function guardarDatosBd(){
	
	
}
</script>

</head>
<body bgcolor="Orange">
<form action="usuarios.jsp" method="POST" onsubmit="usuarios.jsp;">

<p style="font-weight:bold;font-size:20px;color: red;">
Campos para agregar usuario

<table align="Left">
<tr>
 <td style="font-weight: bold;color: Green">Ingrese codigo Usuario a modificar:</td>
 <td><input type="text" name="usuario" id="usuario"></td>
 <td><input type="button" value="Cargar Datos" onclick="traerDatos(usuario)"></td>
 </tr>

 <tr>
 <td style="font-weight: bold;size:12px;" >Password: </td>
  <td><input type="text" name="password" id="password"></td>
 </tr>
  <tr>
 <td style="font-weight: bold;size:12px;" >Nombre: </td>
  <td><input type="text" name="Nombre" id="Nombre"></td>
 </tr>
  <tr>
 <td style="font-weight: bold;size:12px;" >Edad: </td>
  <td><input type="text" name="Edad" id="Edad"></td>
 </tr>
  <tr>
  <td><input type="submit" value="Aceptar" onclick="guardarDatosBd();"></td>
  <td><input type="submit" value="Cancelar"></td>
  
 </tr>
 
</table>
</form>
</body>
</html>