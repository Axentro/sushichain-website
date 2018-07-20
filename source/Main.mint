component Main {
  connect Application exposing { page, setPage }

  get pages : Array(Ui.Pager.Item) {
    [
      {
        name = "home",
        contents = <Home/>
      },
      {
        name = "donations",
        contents = <Donations/>
      },
      {
        name = "roadmap",
        contents = <RoadMap/>
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
    <div>
      <{ content }>
      </div>
  } where {
    content =
      pages
      |> Array.find(\item : Ui.Pager.Item => item.name == page)
      |> Maybe.map(\item : Ui.Pager.Item => item.contents)
      |> Maybe.withDefault(<div/>)
  }
}
