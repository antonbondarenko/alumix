class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
		"/i2"(view:"/index-pre")
		"500"(view:'/error')
	}
}
