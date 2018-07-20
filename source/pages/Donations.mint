component Donations {
  state : Page.State { ready = false }

  fun componentDidMount : Void {
    do {
      AssetLoader.loadMisc()
      next { state | ready = true }
    }
  }

  style spacer {
    margin-top: 50px;
  }

  fun socialLink(name : String, url : String, image : String) : Html {
    <div class="pure-u-1-6">
     <a class="link" href={url}><img src={"assets/images/social-" + image + ".svg"}/>
     <br/>
     <{name}>
     </a>
    </div>
  }

  fun nav(name : String, url : String, current : Bool) : Html {
    <li class={"pure-menu-item " + klass}>
      <a
        href={url}
        class="pure-menu-link">
        <{name}>
      </a>
    </li>
  } where {
    klass = if(current){
      "pure-menu-selected"
    } else {
      ""
    }
  }

  fun render : Html {
    if (state.ready) {
      <div>
        <div class="header">
          <div class="home-menu pure-menu pure-menu-horizontal pure-menu-fixed">
            <a
              class="pure-menu-heading"
              href="">
              <img src="assets/images/logo.svg"/>
            </a>

            <ul class="pure-menu-list">
              <{ nav("Home", "/", false)}>
              <{ nav("About", "/", false)}>
              <{ nav("Team", "/", false)}>
              <{ nav("Contact", "/", false)}>
              <{ nav("Blog", "/", false)}>
              <{ nav("Roadmap", "/", false)}>
              <{ nav("Donations", "/", true)}>
            </ul>
          </div>
        </div>

        <div::spacer class="content-wrapper">
          <div class="content">
            <h2 class="content-head is-center">
              <{ "Help us raise money by donating" }>
            </h2>

            <div class="pure-g">
              <div class="l-box pure-u-1 pure-u-md-1-2 pure-u-lg-1-4">
                <h3 class="content-subhead">
                  <i class="fa fa-rocket"/>
                  <{ "Get Started Quickly" }>
                </h3>

                <p>
                  <{
                    "Phasellus eget enim eu lectus faucibus vestibulum. Suspe" \
                    "ndisse sodales pellentesque elementum."
                  }>
                </p>
              </div>

              <div class="l-box pure-u-1 pure-u-md-1-2 pure-u-lg-1-4">
                <h3 class="content-subhead">
                  <i class="fa fa-mobile"/>
                  <{ "  Responsive Layouts" }>
                </h3>

                <p>
                  <{
                    "Phasellus eget enim eu lectus faucibus vestibulum. Suspe" \
                    "ndisse sodales pellentesque elementum."
                  }>
                </p>
              </div>

              <div class="l-box pure-u-1 pure-u-md-1-2 pure-u-lg-1-4">
                <h3 class="content-subhead">
                  <i class="fa fa-th-large"/>
                  <{ "Modular" }>
                </h3>

                <p>
                  <{
                    "Phasellus eget enim eu lectus faucibus vestibulum. Suspe" \
                    "ndisse sodales pellentesque elementum."
                  }>
                </p>
              </div>

              <div class="l-box pure-u-1 pure-u-md-1-2 pure-u-lg-1-4">
                <h3 class="content-subhead">
                  <i class="fa fa-check-square-o"/>
                  <{ "Plays Nice" }>
                </h3>

                <p>
                  <{
                    "Phasellus eget enim eu lectus faucibus vestibulum. Suspe" \
                    "ndisse sodales pellentesque elementum."
                  }>
                </p>
              </div>
            </div>
          </div>

          <div class="ribbon l-box-lrg pure-g">
            <div class="l-box-lrg is-center pure-u-1 pure-u-md-1-2 pure-u-lg-2-5">
              <img
                width="200"
                alt="File Icons"
                class="pure-img-responsive"
                src="assets/images/kingsley2.png"/>
            </div>

            <div class="pure-u-1 pure-u-md-1-2 pure-u-lg-3-5">
              <h2 class="content-head content-head-ribbon">
                <{ "Laboris nisi ut aliquip." }>
              </h2>

              <p>
                <{
                  "  Lorem ipsum dolor sit amet, consectetur adipisicing el" \
                  "it, sed do eiusmod
                                    tempor incididunt u" \
                  "t labore et dolore magna aliqua. Ut enim ad minim veniam" \
                  ",
                                    quis nostrud exercitation ullamco la" \
                  "boris nisi ut aliquip ex ea commodo
                                    co" \
                  "nsequat. Duis aute irure dolor."
                }>
              </p>
            </div>
          </div>

          <div class="content">
            <h2 class="content-head is-center">
              <{ "Dolore magna aliqua. Uis aute irure." }>
            </h2>

            <div class="pure-g">
              <div class="l-box-lrg pure-u-1 pure-u-md-2-5">
                <form class="pure-form pure-form-stacked">
                  <fieldset>
                    <label for="name">
                      <{ "Your Name" }>
                    </label>

                    <input
                      id="name"
                      type="text"
                      placeholder="Your Name"/>

                    <label for="email">
                      <{ "Your Email" }>
                    </label>

                    <input
                      id="email"
                      type="email"
                      placeholder="Your Email"/>

                    <label for="password">
                      <{ "Your Password" }>
                    </label>

                    <input
                      id="password"
                      type="password"
                      placeholder="Your Password"/>

                    <button
                      type="submit"
                      class="pure-button">

                      <{ "Sign Up" }>

                    </button>
                  </fieldset>
                </form>
              </div>

              <div class="l-box-lrg pure-u-1 pure-u-md-3-5">
                <h4>
                  <{ "Contact Us" }>
                </h4>

                <p>
                  <{
                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit" \
                    ", sed do eiusmod
                                          tempor incididunt" \
                    " ut labore et dolore magna aliqua. Ut enim ad minim veni" \
                    "am,
                                          quis nostrud exercitation ulla" \
                    "mco laboris nisi ut aliquip ex ea commodo
                                  " \
                    "        consequat."
                  }>
                </p>

                <h4>
                  <{ "More Information" }>
                </h4>

                <p>
                  <{
                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit" \
                    ", sed do eiusmod
                                          tempor incididunt" \
                    " ut labore et dolore magna aliqua."
                  }>
                </p>
              </div>
            </div>
          </div>

          <div class="footer l-box is-center">
            <div class="pure-g">

            <div class="pure-u-1-3">
              <p class="copyright"><{"© SushiChain 2018. All Rights Reserved."}></p>
            </div>

              <div class="pure-u-1-3">
                /* <h3><{"Contact Us"}></h3> */



                <div class="pure-g">

                <{ socialLink("Twitter", "", "twitter") }>
                <{ socialLink("Slack", "", "slack-2") }>
                <{ socialLink("Telegram", "", "telegram") }>
                <{ socialLink("Discord", "", "discord") }>
                <{ socialLink("Gitter", "", "gitter") }>
                <{ socialLink("Github", "", "github") }>

                </div>

              </div>

              <div class="pure-u-1-3">
                <p><a class="link" href="mailto:info@sushichain.io" target="_top"><{"info@sushichain.io"}></a></p>
              </div>

              /* <div class="pure-u-1-3">
                <p>
                  <{ "Thirds" }>
                </p>
              </div>

              <div class="pure-u-1-3">
                <p>
                  <{ "Thirds" }>
                </p>
              </div> */
            </div>
          </div>
        </div>
      </div>
    } else {
      <div/>
    }
  }
}
