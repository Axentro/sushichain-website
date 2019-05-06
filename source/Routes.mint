routes {
  /donations {
    sequence {
      Application.setPage("donations")
    }
  }

  /roadmap {
    sequence {
      Application.setPage("roadmap")
    }
  }

  /news {
    sequence {
      Application.setPage("news")
    }
  }

  /home {
    sequence {
      Application.setPage("home")
    }
  }

  / {
    sequence {
      Application.setPage("home")
    }
  }

  * {
    Application.setPage("not_found")
  }
}
