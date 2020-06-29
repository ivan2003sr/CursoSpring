<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario de Registro</title>
</head>
<body>

	<form:form action= "procesaFormulario" modelAttribute="elAlumno">
	
	Nombre: <form:input path="nombre"/> <!-- el path es el nombre del get y el set en minúsucula, debe coincidir. Al cargar llama al getter de la clase alumno y cuando se envía llama al setter -->
	<br><br><br>
	Apellido: <form:input path="apellido"/>
	<br><br><br>
	
	Asignaturas Optativas:<br/>
	
	<form:select path="optativa" multiple="true">
	
		<form:option value="Diseño" label="Diseño"/>
		<form:option value="Karate" label="Karate"/>
		<form:option value="Comercio" label="Comercio"/>
		<form:option value="Danza" label="Danza"/>
		
		
		
		
	</form:select>	
	
	<br/><br/><br/>
	
	<input type="submit" value="enviar">
	
	</form:form>



</body>
</html>