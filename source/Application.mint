store Application {
  state page : String = ""

  fun setPage (a : String) : Void {
    do {
      Http.abortAll()
      next { page = a }
    }
  }
}
