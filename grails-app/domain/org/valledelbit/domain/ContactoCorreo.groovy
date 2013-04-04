package org.valledelbit.domain

class ContactoCorreo {
	String email
	String nombre
	Date fechaAlta = new Date()

    static constraints = {
    	email (email:true)

    }
}
