component Donations {
  state : Page.State { ready = false }

  get bitcoinAddress : String {
    "3E1qHfMMkpi5ekoopNAnHy8nxvd8gafosCx"
  }

  get ethereumAddress : String {
    "0x62e293958BB1073B7cd42599cFed4ab38395D42E"
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

  fun render : Html {
    if (state.ready) {
      <MiscLayout name="donations">
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
                "ferences is very expensive. We need to do this to raise " \
                "awareness to help get our platform out there."
              }>
            </p>

            <p>
              <{
                "Here at SushiChain we all work full time and contribute " \
                "to SushiChain in our spare time. We have families, kids " \
                "and mortgages and so the costs of driving SushiChain for" \
                "ward means we sacrifice spending money on ourselves and " \
                "families in order to pursue our dreams of blockchain. So" \
                " please help up out anyway you can to help get our platf" \
                "orm to you as quickly as possible. Any amount of donatio" \
                "n is massively appreciated."
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
                <strong>
                  <{ "London, UK" }>
                </strong>
              </div>

              <div>
                <{ "Website: " }>

                <a
                  class="link"
                  href="http://www.greatbritishbusinessshow.co.uk/">

                  <{ "http://www.greatbritishbusinessshow.co.uk/" }>

                </a>
              </div>

              <div>
                <{ "Listing: " }>

                <a
                  class="link"
                  href="http://www.greatbritishbusinessshow.co.uk/">

                  <{ "Our exhibitors page" }>

                </a>
              </div>

              <p>
                <{
                  "Kingsley will be speaking and exhibiting at the London B" \
                  "usiness Show to raise awareness for SushiChain. We will " \
                  "have a small booth/stand at the conference from which we" \
                  " will promote SushiChain."
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
                        <{ "£5000.00" }>
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
          </div>

          <br/>

          <div class="pure-g">
            <div::bg class="pure-u-1 pure-u-md-11-24">
              <h3 class="content-subhead">
                <{ "Silicon Valley Blockchain Expo - 28th November 2018" }>
              </h3>

              <div::up>
                <strong>
                  <{ "Santa Clara, USA" }>
                </strong>
              </div>

              <div>
                <{ "Website: " }>

                <a
                  class="link"
                  href="https://blockchain-expo.com/northamerica/">

                  <{ "https://blockchain-expo.com/northamerica/" }>

                </a>
              </div>

              <div>
                <{ "Listing: " }>

                <a
                  class="link"
                  href={
                    "https://blockchain-expo.com/northamerica/partners/shushi" \
                    "chain/"
                  }>

                  <{ "Our exhibitors page" }>

                </a>
              </div>

              <p>
                <{
                  "Kingsley will be speaking and exhibiting at the Silicon " \
                  "Valley Blockchain Expo to raise awareness for SushiChain" \
                  ". We will have a medium sized booth/stand at the confere" \
                  "nce from which we will promote SushiChain."
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
          </div>
        </div>

        <div class="ribbon l-box-lrg pure-g">
          <div class="l-box-lrg is-center pure-u-1 pure-u-md-1-2 pure-u-lg-2-5">
            <img
              width="200"
              alt="Kingsley"
              class="pure-img-responsive"
              src="assets/images/kingsley2.png"/>
          </div>

          <div class="pure-u-1 pure-u-md-1-2 pure-u-lg-3-5">
            <h2 class="content-head content-head-ribbon">
              <{ "We really appreciate your donation!" }>
            </h2>

            <p>
              <{
                "We have tried to list out exactly what your donations wi" \
                "ll be spent on. So you're not just blindly donating mone" \
                "y."
              }>

              /*
              <{" If you want to know more about our long term vision and plans read our "}><a class="link2" href="/"><{"Whitepaper"}></a>
                             <{" and check out the "}><a class="link2" href="/roadmap"><{"Roadmap"}></a>
              */
              <{
                " If you want to know more about our long term vision and" \
                " plans check out our "
              }>

              <a
                class="link2"
                href="/roadmap">

                <{ "Roadmap" }>

              </a>
            </p>
          </div>
        </div>

        <div
          id="donate-now"
          class="content">

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
              <br/>

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
              <br/>

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

              <p>
                <form
                  action="https://www.paypal.com/cgi-bin/webscr"
                  method="post"
                  target="_top">

                  <input
                    type="hidden"
                    name="cmd"
                    value="_s-xclick"/>

                  <input
                    type="hidden"
                    name="hosted_button_id"
                    value="LSX23XU8RYRHU"/>

                  <input
                    type="image"
                    src={
                      "https://www.paypalobjects.com/en_US/GB/i/btn/btn_donateC" \
                      "C_LG.gif"
                    }
                    border="0"
                    name="submit"
                    alt="PayPal – The safer, easier way to pay online!"/>

                  <img
                    alt=""
                    border="0"
                    src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif"
                    width="1"
                    height="1"/>

                </form>
              </p>
            </div>
          </div>

        </div>
      </MiscLayout>
    } else {
    <Loading/>
    }
  }
}
