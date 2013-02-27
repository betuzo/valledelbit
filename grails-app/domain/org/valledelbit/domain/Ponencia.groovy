package org.valledelbit.domain

class Ponencia {

	static belongsTo = Usuario
	Reunion reunion
	String tema
	String observaciones
	static hasMany = [ponentes: Usuario]

    static constraints = {
    }
}
