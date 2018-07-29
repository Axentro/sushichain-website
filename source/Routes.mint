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

  /news {
    do {
      Application.setPage("news")
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
