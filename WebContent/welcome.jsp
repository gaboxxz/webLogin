<%@page import="ar.com.utn.dds.servlet.vo.VoLogin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome</title>
</head>
<body>

<p style="font-weight:bold;font-size:20px;">
<!-- pido la variable usuario logeado de loginServlet. En el servlet la setie con settAtributte -->
Bienvenido al sistema: <%= ((VoLogin)session.getAttribute("usuarioLogeado")).getNombre() %>  
</p>
<a href="/usuarios.jsp"> Administracion de Usuarios</a>
</body>
</html>