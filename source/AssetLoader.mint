module AssetLoader {
  fun loadStyle (url : String) : Promise(Never, Void) {
    `
    new Promise((resolve, reject) => {
      let link = document.createElement('link')
      link.rel = "stylesheet"
      document.body.appendChild(link)
      link.onload = resolve
      link.href = url
    })
    `
  }

  fun loadScript (url : String) : Promise(Never, Void) {
    `
    new Promise((resolve, reject) => {
      let script = document.createElement('script')
      document.body.appendChild(script)
      script.onload = () => {
        document.body.removeChild(script)
        resolve()
      }
      script.src = url
    })
    `
  }

  fun loadMisc() : Void {
    do {
      loadStyle("https://unpkg.com/purecss@1.0.0/build/pure-min.css")
      loadStyle("https://unpkg.com/purecss@1.0.0/build/grids-responsive-min.css")
      loadStyle("https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css")
      loadStyle("/dist/css/misc.css")
    }
  }
}
