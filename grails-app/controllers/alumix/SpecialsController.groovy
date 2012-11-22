package alumix

import org.springframework.dao.DataIntegrityViolationException

class SpecialsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [specialsInstanceList: Specials.list(params), specialsInstanceTotal: Specials.count()]
    }

    def create() {
        [specialsInstance: new Specials(params)]
    }

    def save() {
        def specialsInstance = new Specials(params)
        if (!specialsInstance.save(flush: true)) {
            render(view: "create", model: [specialsInstance: specialsInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'specials.label', default: 'Specials'), specialsInstance.id])
        redirect(action: "show", id: specialsInstance.id)
    }

    def show() {
        def specialsInstance = Specials.get(params.id)
        if (!specialsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'specials.label', default: 'Specials'), params.id])
            redirect(action: "list")
            return
        }

        [specialsInstance: specialsInstance]
    }

    def edit() {
        def specialsInstance = Specials.get(params.id)
        if (!specialsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'specials.label', default: 'Specials'), params.id])
            redirect(action: "list")
            return
        }

        [specialsInstance: specialsInstance]
    }

    def update() {
        def specialsInstance = Specials.get(params.id)
        if (!specialsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'specials.label', default: 'Specials'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (specialsInstance.version > version) {
                specialsInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'specials.label', default: 'Specials')] as Object[],
                        "Another user has updated this Specials while you were editing")
                render(view: "edit", model: [specialsInstance: specialsInstance])
                return
            }
        }

        specialsInstance.properties = params

        if (!specialsInstance.save(flush: true)) {
            render(view: "edit", model: [specialsInstance: specialsInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'specials.label', default: 'Specials'), specialsInstance.id])
        redirect(action: "show", id: specialsInstance.id)
    }

    def delete() {
        def specialsInstance = Specials.get(params.id)
        if (!specialsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'specials.label', default: 'Specials'), params.id])
            redirect(action: "list")
            return
        }

        try {
            specialsInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'specials.label', default: 'Specials'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'specials.label', default: 'Specials'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
