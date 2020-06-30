package com.ivan2003sr.spring.mvc;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Alumno {
	
	
	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	

	public String getOptativa() {
		return optativa;
	}

	public void setOptativa(String optativa) {
		this.optativa = optativa;
	}


	public String getProvincia() {
		return provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}


	public String getIdiomas() {
		return idiomas;
	}

	public void setIdiomas(String idiomas) {
		this.idiomas = idiomas;
	}

	@NotNull
	@Size(min=2,message=" Campo requerido")
	private String nombre;
	private String apellido;
	private String optativa;
	private String provincia;
	private String idiomas;

}
