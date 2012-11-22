package alumix



import org.junit.*
import grails.test.mixin.*

@TestFor(SpecialsController)
@Mock(Specials)
class SpecialsControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/specials/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.specialsInstanceList.size() == 0
        assert model.specialsInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.specialsInstance != null
    }

    void testSave() {
        controller.save()

        assert model.specialsInstance != null
        assert view == '/specials/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/specials/show/1'
        assert controller.flash.message != null
        assert Specials.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/specials/list'


        populateValidParams(params)
        def specials = new Specials(params)

        assert specials.save() != null

        params.id = specials.id

        def model = controller.show()

        assert model.specialsInstance == specials
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/specials/list'


        populateValidParams(params)
        def specials = new Specials(params)

        assert specials.save() != null

        params.id = specials.id

        def model = controller.edit()

        assert model.specialsInstance == specials
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/specials/list'

        response.reset()


        populateValidParams(params)
        def specials = new Specials(params)

        assert specials.save() != null

        // test invalid parameters in update
        params.id = specials.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/specials/edit"
        assert model.specialsInstance != null

        specials.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/specials/show/$specials.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        specials.clearErrors()

        populateValidParams(params)
        params.id = specials.id
        params.version = -1
        controller.update()

        assert view == "/specials/edit"
        assert model.specialsInstance != null
        assert model.specialsInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/specials/list'

        response.reset()

        populateValidParams(params)
        def specials = new Specials(params)

        assert specials.save() != null
        assert Specials.count() == 1

        params.id = specials.id

        controller.delete()

        assert Specials.count() == 0
        assert Specials.get(specials.id) == null
        assert response.redirectedUrl == '/specials/list'
    }
}
