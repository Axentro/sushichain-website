routes {
  /donations {
    do {
      Application.setPage("donations")
    }
  }

  /roadmap {
    do {
      Application.setPage("roadmap")
    }
  }

  /home {
    do {
      Application.setPage("home")
    }
  }

  / {
    do {
      Application.setPage("home")
    }
  }

  * {
    Application.setPage("not_found")
  }
}
