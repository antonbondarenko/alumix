package alumix

class GatesController {


    def index() {
        redirect(action: "garage", params: params)
    }
    def list() { }

    def industrial() {}
    def garage() {}
    def panoramic() {}
    def recoiling() {}
    def swing() {}

}
