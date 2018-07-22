component Donations {
  state : Page.State { ready = false }

  get bitcoinAddress : String {
    "34qLBHKJpMCusj3Uvr9Hye55sS8BhBoK8t"
  }

  get ethereumAddress : String {
    "0xCd4fEc10C8Ad4873e209062B31DEFb684FF8cb7c"
  }

  fun componentDidMount : Void {
    do {
      AssetLoader.loadScript(
        "https://code.jquery.com/jquery-3.3.1.min.js")

      AssetLoader.unloadAllStyles()
      AssetLoader.loadMisc()
      next { state | ready = true }
    }
  }

  style spacer {
    margin-top: 50px;
  }

  style up {
    margin-top: -12px;
  }

  style bg {
    border: 6px solid #F9F9F9;
    padding: 20px;
  }

  fun copyAddress (id : String) : Void {
    `
    (() => {
      var targetId = id
      var copyText = document.getElementById(targetId);
      copyText.select();
      document.execCommand("copy");
    })()
    `
  }

  fun generateQrCode (address : String) : String {
    `new QRious({value: address, size: 150}).toDataURL();`
  }

  fun scrollToDonate (event : Html.Event) : Void {
    `
    (() => {
          var donate = document.getElementById("donate-now");
          zenscroll.to(donate, 400);
        })()
    `
  }

  fun socialLink (name : String, url : String, image : String) : Html {
    <div class="pure-u-1-6">
      <a
        class="link"
        href={url}>

        <img src={"assets/images/social-" + image + ".svg"}/>
        <br/>
        <{ name }>

      </a>
    </div>
  }

  fun nav (name : String, url : String, current : Bool) : Html {
    <li class={"pure-menu-item " + klass}>
      <a
        href={url}
        class="pure-menu-link">

        <{ name }>

      </a>
    </li>
  } where {
    klass =
      if (current) {
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
              href="/">

              <img src="assets/images/logo.svg"/>

            </a>

            <ul class="pure-menu-list">
              <{ nav("Home", "/", false) }>
              <{ nav("About", "/#about", false) }>
              <{ nav("Team", "/#team", false) }>
              <{ nav("Contact", "/#contact", false) }>
              <{ nav("Blog", "https://blog.sushichain.io", false) }>
              <{ nav("Roadmap", "/roadmap", false) }>
              <{ nav("Donations", "/donations", true) }>
            </ul>
          </div>
        </div>

        <div::spacer class="content-wrapper">
          <div class="content">
            <h2 class="content-head is-center">
              <{ "Help us raise money by donating" }>
            </h2>
          </div>

          <div class="ribbon1 l-box-lrg pure-g">
            <div class="pure-u-1-1">
              <h2 class="content-head content-head-ribbon1">
                <{ "Why help us?" }>
              </h2>

              <p>
                <{
                  "We are currently a self funded blockchain project. You m" \
                  "ight not realise but it takes a huge amount of time and " \
                  "money to create and run a custom blockchain. On top of t" \
                  "hat the cost of speaking and exhibiting at expos and con" \
                  "ferences is very expensive."
                }>
              </p>

              <p>
                <{
                  "Here at SushiChain we all work full time and contribute " \
                  "to SushiChain in our spare time. We have families, kids " \
                  "and mortgages and so the costs of driving SushiChain for" \
                  "ward means we sacrifice spending money on ourselves and " \
                  "families in order to pursue our dreams of blockchain. So" \
                  " please help up out anyway you can. Any amount of donati" \
                  "on is massively appreciated."
                }>
              </p>
            </div>
          </div>

          <div class="content">
            <div class="pure-g">
              <div class="pure-u-1-1">
                <h3 class="content-head is-center">
                  <{ "Help us pay for these upcoming events" }>
                </h3>
              </div>
            </div>

            <div class="pure-g">
              <div::bg class="pure-u-1 pure-u-md-11-24">
                <h3 class="content-subhead">
                  <{ "Malta Blockchain Summit - 1st November 2018" }>
                </h3>

                <div::up>
                  <strong>
                    <{ "St Julians, Malta" }>
                  </strong>
                </div>

                <div>
                  <{ "Website: " }>

                  <a
                    class="link"
                    href="https://maltablockchainsummit.com/">

                    <{ "https://maltablockchainsummit.com/" }>

                  </a>
                </div>

                <div>
                  <{ "Listing: " }>

                  <a
                    class="link"
                    href="https://maltablockchainsummit.com/list-of-partners/">

                    <{ "Find us listed half way down the page" }>

                  </a>
                </div>

                <p>
                  <{
                    "Kingsley will be speaking and exhibiting at the Malta Bl" \
                    "ockchain summit to raise awareness for SushiChain. We wi" \
                    "ll have a small booth/stand at the conference from which" \
                    " we will promote SushiChain."
                  }>
                </p>

                <button
                  onClick={scrollToDonate}
                  class="button-secondary pure-button button-xlarge">

                  <{ "Donate now!" }>

                </button>

                <p>
                  <strong>
                    <{ "Cost breakdown" }>
                  </strong>
                </p>

                <div class="costs">
                  <table class="pure-table pure-table-bordered">
                    <thead>
                      <tr>
                        <th>
                          <{ "Item" }>
                        </th>

                        <th>
                          <{ "Description" }>
                        </th>

                        <th>
                          <{ "Cost" }>
                        </th>
                      </tr>
                    </thead>

                    <tbody>
                      <tr>
                        <td>
                          <{ "Exhibitor fee" }>
                        </td>

                        <td>
                          <{ "Cost of exhibiting and speaking" }>
                        </td>

                        <td>
                          <{ "£3000.00" }>
                        </td>
                      </tr>

                      <tr>
                        <td>
                          <{ "Travel & accommodation" }>
                        </td>

                        <td>
                          <{ "Flights, hotel and taxis" }>
                        </td>

                        <td>
                          <{ "£2000.00" }>
                        </td>
                      </tr>

                      <tr>
                        <td>
                          <{ "Print media" }>
                        </td>

                        <td>
                          <{ "Booth decoration, flyers" }>
                        </td>

                        <td>
                          <{ "£1000.00" }>
                        </td>
                      </tr>

                      <tr class="pure-table-odd">
                        <td>
                          <{ "Total" }>
                        </td>

                        <td/>

                        <td>
                          <{ "£6000.00" }>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>

              <div class="pure-u-1-24">
                <br class="pure-u-md-1-24"/>
              </div>

              <div::bg class="pure-u-1 pure-u-md-11-24">
                <h3 class="content-subhead">
                  <{ "London Business Show - 15th November 2018" }>
                </h3>

                <div::up>
                  <{ "London, UK" }>
                </div>
              </div>
            </div>

            <br/>

            <div class="pure-g">
              <div::bg class="pure-u-11-24">
                <h3 class="content-subhead">
                  <{ "Silicon Valley Blockchain Expo - 28th November 2018" }>
                </h3>

                <div::up>
                  <{ "Santa Clara, USA" }>
                </div>
              </div>
            </div>
          </div>

          <div
            class="ribbon l-box-lrg pure-g">

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
                                                       " \
                  "                                                     tem" \
                  "por incididunt ut labore et dolore magna aliqua. Ut enim" \
                  " ad minim veniam,
                                                        " \
                  "                                                    quis" \
                  " nostrud exercitation ullamco laboris nisi ut aliquip ex" \
                  " ea commodo
                                                              " \
                  "                                              consequat." \
                  " Duis aute irure dolor."
                }>
              </p>
            </div>

          </div>

          <div id="donate-now" class="content">
            <h2 class="content-head is-center">
              <{ "How to donate" }>
            </h2>

            <div class="pure-g">
              <div class="pure-u-1">
                <{
                  "You can donate using Bitcoin, Ethereum or Paypal. If you" \
                  " don't know how to donate using a cryptocurrency then us" \
                  "e the Paypal option. If you really want to donate but fo" \
                  "r some reason can't use any of these options please drop" \
                  " us an email or contact us on Twitter"
                }>
              </div>
            </div>

            <div class="pure-g">
              <div class="pure-u-1 pure-u-md-1-3">
                <h4>
                  <{ "Bitcoin" }>
                </h4>

                <img src={generateQrCode(bitcoinAddress)}/>

                <input
                  id="bitcoin-address"
                  size="40"
                  value={bitcoinAddress}/>

                <br/>
                <br/>

                <button
                  class="button-primary pure-button"
                  onClick={\e : Html.Event => copyAddress("bitcoin-address")}>

                  <{ "Copy address" }>

                </button>
              </div>

              <div class="pure-u-1 pure-u-md-1-3">
                <h4>
                  <{ "Ethereum" }>
                </h4>

                <img src={generateQrCode(ethereumAddress)}/>

                <input
                  id="ethereum-address"
                  size="50"
                  value={ethereumAddress}/>

                <br/>
                <br/>

                <button
                  class="button-primary pure-button"
                  onClick={\e : Html.Event => copyAddress("ethereum-address")}>

                  <{ "Copy address" }>

                </button>
              </div>

              <div class="pure-u-1 pure-u-md-1-3">
              <h4>
                <{ "Paypal" }>
              </h4>
              <p><{"Coming soon"}></p>
              </div>
            </div>

            /*
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
                                                                      " \
                               "                       tempor incididunt ut labore et do" \
                               "lore magna aliqua. Ut enim ad minim veniam,
                                           " \
                               "                                                  quis n" \
                               "ostrud exercitation ullamco laboris nisi ut aliquip ex e" \
                               "a commodo
                                                                             " \
                               "                consequat."
                             }>
                           </p>

                           <h4>
                             <{ "More Information" }>
                           </h4>

                           <p>
                             <{
                               "Lorem ipsum dolor sit amet, consectetur adipisicing elit" \
                               ", sed do eiusmod
                                                                      " \
                               "                       tempor incididunt ut labore et do" \
                               "lore magna aliqua."
                             }>
                           </p>
                         </div>
                       </div>
            */
          </div>

          <div class="footer l-box is-center">
            <div class="pure-g">
              <div class="pure-u-1 pure-u-md-1-3">
                <p class="copyright">
                  <{ "© SushiChain 2018. All Rights Reserved." }>
                </p>
              </div>

              <div class="pure-u-1 pure-u-md-1-3">
                <div class="pure-g">
                  <{ socialLink("Slack", "https://bit.ly/2HJBu1z", "slack-2") }>

                  <{
                    socialLink(
                      "Github",
                      "https://github.com/sushichain",
                      "github")
                  }>

                  <{
                    socialLink(
                      "Telegram",
                      "https://t.me/joinchat/Inebcg83C4ccxydPkzTdSw",
                      "telegram")
                  }>

                  <{ socialLink("Discord", "https://discord.gg/qBqfJPv", "discord") }>

                  <{
                    socialLink(
                      "Gitter",
                      "https://gitter.im/SushiChain/Lobby",
                      "gitter")
                  }>

                  <{
                    socialLink(
                      "Twitter",
                      "https://www.twitter.com/sushichainhq",
                      "twitter")
                  }>
                </div>
              </div>

              <div class="pure-u-1 pure-u-md-1-3">
                <p>
                  <a
                    class="link"
                    href="mailto:info@sushichain.io"
                    target="_top">

                    <{ "info@sushichain.io" }>

                  </a>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    } else {
      <div/>
    }
  }
}
