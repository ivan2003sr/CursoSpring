<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmacion de Registro</title>
</head>
<body>

El alumno con nombre <strong>${elAlumno.nombre }</strong> y apellido <strong>${elAlumno.apellido }</strong> se ha registrado con �xito
 
La asignatura escogida es: <strong>${elAlumno.optativa }</strong>

<br/>

La provincia donde iniciar� los estudios <strong>${elAlumno.nombre } ${elAlumno.apellido }</strong> ser�: <strong>${elAlumno.provincia}</strong>

<br/>
Los idiomas a estudiar ser�n: <strong>${elAlumno.idiomas }</strong>.
</body>
</html>