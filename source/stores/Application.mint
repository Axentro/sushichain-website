store Application {
  state page : String = ""
  state anchor : Maybe(String) = Maybe.nothing()

  fun setPage (page : String) : Promise(Never, Void) {
    sequence {
      Http.abortAll()
      next { page = page }
    }
  }

  fun setAnchor (anchor : String) : Promise(Never, Void) {
    next { anchor = Maybe.just(anchor) }
  }

}
