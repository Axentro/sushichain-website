routes {
  / {
    Application.setPage("home")
  }

  /privacy {
    Application.setPage("privacy")
  }

  /cookies {
    Application.setPage("cookies")
  }

  /#:anchor (anchor : String) {
    sequence {
      Application.setAnchor(anchor)
      Application.setPage("home")
    }
  }

  * {
    Application.setPage("not_found")
  }
}
