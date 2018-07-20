component Donations {

  state : Page.State { ready = false }

  fun componentDidMount : Void {
        do {
          AssetLoader.loadStyle("/dist/css/misc.css")
          next { state | ready = true}
      }
    }

  fun render : Html {
    if(state.ready){
    <h1><{"Donations"}></h1>
  } else {
    <div/>
  }
  }
}
