package org.valledelbit.domain

import org.springframework.dao.DataIntegrityViolationException

class ContactoCorreoController {

   static allowedMethods = [save: "POST"]

    def index() {
        redirect(action: "create", params: params)
    }

    def create() {
        [contactoCorreoInstance: new ContactoCorreo(params)]
    }
}
