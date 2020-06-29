package com.ivan2003sr.spring.mvc;

//import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/principal")
public class Controlador2 {
	
	@RequestMapping ("/muestraFormulario") //Puede ser cualquier URL. Por convenci�n se usa la misma que el nombre del m�todo
	public String muestraFormulario() {	//	Proporciona el formulario
		
		return "AlumnosFormulario";
		
		
	}
	
	@RequestMapping ("/procesarFormulario")
	public String procesarFormulario() {
		
		return "AlumnosSpring";
		
	}
	
	@RequestMapping ("/procesarFormulario2")
	//public String otroProcesaFormulario(HttpServletRequest request, Model modelo) { (se simplifica con RequestParam
	public String otroProcesaFormulario(@RequestParam("nombreAlumno") String nombre, Model modelo) {	
		//Leer la informaci�n que viene del cuadro de texto del formulario. 
		
		//String nombre=request.getParameter("nombreAlumno");   No va si se usa el requestparam
		
		nombre+=" es el mejor alumno";
		
		String mensajeFinal="�Qui�n es el mejor alumno? "+ nombre;
		
		
		//agregando info al modelo
		
		modelo.addAttribute("mensajeClaro",mensajeFinal);
		
		return "AlumnosSpring";
		
	}

}
