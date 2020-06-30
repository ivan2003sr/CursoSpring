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
	
	Nombre: <form:input path="nombre"/> <!-- el path es el nombre del get y el set en min�sucula, debe coincidir. Al cargar llama al getter de la clase alumno y cuando se env�a llama al setter -->
	<form:errors path="nombre" style="color:red"></form:errors>
	<br><br><br>
	Apellido: <form:input path="apellido"/>
	<br><br><br>
	
	Asignaturas Optativas:<br/>
	
	<form:select path="optativa" multiple="true">
	
		<form:option value="Dise�o" label="Dise�o"/>
		<form:option value="Karate" label="Karate"/>
		<form:option value="Comercio" label="Comercio"/>
		<form:option value="Danza" label="Danza"/>
		
		
		
		
	</form:select>	
	
	<br/><br/><br/>
	
	Mendoza <form:radiobutton path="provincia" value ="Mendoza"/>
	R�o Negro <form:radiobutton path="provincia" value ="Rio_Negro"/>
	Buenos Aires <form:radiobutton path="provincia" value ="Buenos_Aires"/>
	Neuqu�n <form:radiobutton path="provincia" value ="Neuquen"/>
	
	<br/><br/><br/>
	
	Ingl�s <form:checkbox path="idiomas" value ="Ingl�s"/>
	Franc�s <form:checkbox path="idiomas" value ="Franc�s"/>
	Alem�n <form:checkbox path="idiomas" value ="Alem�n"/>
	
	
	<input type="submit" value="enviar">
	
	</form:form>



</body>
</html>