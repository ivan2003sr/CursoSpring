package com.ivan2003sr.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/secundario")
public class TirarControlador {
	
	
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
		
		nombre+=" es el peor alumno";
		
		String mensajeFinal="�Qui�n es el peor alumno? "+ nombre;
		
		
		//agregando info al modelo
		
		modelo.addAttribute("mensajeClaro",mensajeFinal);
		
		return "AlumnosSpring";
	}
}
