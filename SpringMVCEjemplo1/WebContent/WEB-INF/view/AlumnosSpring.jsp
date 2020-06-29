<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="styleSheet" type="text/css" href="${pageContext.request.contextPath}/recursos/estilos/miestilo.css">
</head>
<body>

Hola ${param.nombreAlumno }. Bienvenido al curso de Spring

 <br> 

<h2>Atención a todos</h2>

${mensajeClaro}



<img alt="foto" src="${pageContext.request.contextPath}/recursos/imgs/programa.jpg">





</body>
</html>