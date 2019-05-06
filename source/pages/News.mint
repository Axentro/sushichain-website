component News {
  state ready : Bool = false

  fun componentDidMount : Promise(Never, Void) {
    sequence {
      AssetLoader.loadScript(
        "https://code.jquery.com/jquery-3.3.1.min.js")

      AssetLoader.unloadAllStyles()
      AssetLoader.loadMisc()
      next { ready = true }
    }
  }

  /* style up {
    margin-top: -12px;
  }

  style bg {
    border: 6px solid #F9F9F9;
    padding: 20px;
  } */

  fun render : Html {
    if (ready) {
      <MiscLayout name="news">
        <div class="content">
          <h2 class="content-head is-center">
            <{ "Latest News" }>
          </h2>

        <NewsItem title="Updates coming soon" description="We are about to hit the hyperdrive" date="Monday, 6th May 2019"/>

        </div>

      </MiscLayout>
    } else {
    <Loading/>
    }
  }
}
