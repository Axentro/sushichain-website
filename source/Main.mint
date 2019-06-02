record Ui.Pager.Item {
  contents : Html,
  name : String
}

component Main {
  connect Application exposing { page }

  get pages : Array(Ui.Pager.Item) {
    [
      {
        name = "home",
        contents = <Home/>
      },
      {
        name = "privacy",
        contents = <Privacy/>
      },
      {
        name = "cookies",
        contents = <Cookies/>
      },
      {
        name = "not_found",
        contents =
          <div>
            <{ "404" }>
          </div>
      }
    ]
  }

  fun render : Html {
      content
  } where {
    content =
      pages
      |> Array.find(
        (item : Ui.Pager.Item) : Bool  { item.name == page })
      |> Maybe.map((item : Ui.Pager.Item) : Html  { item.contents })
      |> Maybe.withDefault(<div/>)
  }
}
