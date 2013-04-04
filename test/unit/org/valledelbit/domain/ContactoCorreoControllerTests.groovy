package org.valledelbit.domain



import org.junit.*
import grails.test.mixin.*

@TestFor(ContactoCorreoController)
@Mock(ContactoCorreo)
class ContactoCorreoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/contactoCorreo/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.contactoCorreoInstanceList.size() == 0
        assert model.contactoCorreoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.contactoCorreoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.contactoCorreoInstance != null
        assert view == '/contactoCorreo/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/contactoCorreo/show/1'
        assert controller.flash.message != null
        assert ContactoCorreo.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/contactoCorreo/list'

        populateValidParams(params)
        def contactoCorreo = new ContactoCorreo(params)

        assert contactoCorreo.save() != null

        params.id = contactoCorreo.id

        def model = controller.show()

        assert model.contactoCorreoInstance == contactoCorreo
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/contactoCorreo/list'

        populateValidParams(params)
        def contactoCorreo = new ContactoCorreo(params)

        assert contactoCorreo.save() != null

        params.id = contactoCorreo.id

        def model = controller.edit()

        assert model.contactoCorreoInstance == contactoCorreo
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/contactoCorreo/list'

        response.reset()

        populateValidParams(params)
        def contactoCorreo = new ContactoCorreo(params)

        assert contactoCorreo.save() != null

        // test invalid parameters in update
        params.id = contactoCorreo.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/contactoCorreo/edit"
        assert model.contactoCorreoInstance != null

        contactoCorreo.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/contactoCorreo/show/$contactoCorreo.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        contactoCorreo.clearErrors()

        populateValidParams(params)
        params.id = contactoCorreo.id
        params.version = -1
        controller.update()

        assert view == "/contactoCorreo/edit"
        assert model.contactoCorreoInstance != null
        assert model.contactoCorreoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/contactoCorreo/list'

        response.reset()

        populateValidParams(params)
        def contactoCorreo = new ContactoCorreo(params)

        assert contactoCorreo.save() != null
        assert ContactoCorreo.count() == 1

        params.id = contactoCorreo.id

        controller.delete()

        assert ContactoCorreo.count() == 0
        assert ContactoCorreo.get(contactoCorreo.id) == null
        assert response.redirectedUrl == '/contactoCorreo/list'
    }
}
