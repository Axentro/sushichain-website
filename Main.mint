record Ui.Pager.Item {
  contents : Html,
  name : String
}

component Main {
  connect Application exposing { page }


  get pages : Array(Ui.Pager.Item) {
    [
      {
        name = "register",
        contents = <Register/>
      },
      {
        name = "login",
        contents = <Login/>
      },
      {
        name = "dashboard",
        contents = <Dashboard/>
      },
      {
        name = "board",
        contents = <Board/>
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
    <Layout>
      <{ content }>
    </Layout>
  } where {
    content =
      pages
      |> Array.find(
        (item : Ui.Pager.Item) : Bool  { item.name == page })
      |> Maybe.map((item : Ui.Pager.Item) : Html  { item.contents })
      |> Maybe.withDefault(<div/>)
  }
}
