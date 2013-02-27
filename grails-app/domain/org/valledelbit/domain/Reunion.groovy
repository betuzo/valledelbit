package org.valledelbit.domain

class Reunion {

	String nombre
	String observaciones
	String lugar
	Date fechaHora
	String latitud
	String longitud
	static hasMany = [ponencias: Ponencia]

    static constraints = {
    }
}
