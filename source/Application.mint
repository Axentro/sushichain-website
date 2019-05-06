store Application {
  state page : String = ""

  fun setPage (a : String) : Promise(Never, Void) {
    sequence {
      Http.abortAll()
      next { page = a }
    }
  }
}
