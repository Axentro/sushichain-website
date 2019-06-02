component Cookies {

  fun componentDidMount : Promise(Never, Void) {
    Scrolling.jumpToTop()
  }

  fun render : Html {
    <div id="top">
    <div class="siimple-navbar theme-navbar siimple-navbar--large">
    <img class="siimple-brand" src="/sc5_animated.svg"/>

    <a class="siimple-navbar-item siimple--float-right siimple--display-sm-none" href="/">
        "Home"
    </a>
  </div>

  <div>

    <div id="about" class="siimple-content siimple-content--large siimple--py-5" align="center">
      <div class="siimple--py-4">
        <div class="siimple-h2 siimple--mb-2 aqua">
          "Privacy Policy"
        </div>
        <div class="docs-welcome-detail fg">"Last updated: "<strong>"12th May 2019"</strong></div>
        <br/>
        <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
          "This "<strong>"cookies policy"</strong>" is for visitors to our website and sets out how we use cookies."
        </div>

        <div class="siimple--py-4">
          <div class="siimple-h4 siimple--mb-2 purple">
            "What are cookies?"
          </div>
          <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
            "A cookie is a small piece of text that our website stores on your computer or mobile device, which your browser sends to us when you return to our site. Cookies can be used by websites to make a user's experience more efficient."
          </div>

        </div>

        <div class="siimple--py-4">
          <div class="siimple-h4 siimple--mb-2 purple">
            "Types of cookies"
          </div>
          <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
            "We classify cookies into two categories: <strong>essential</strong> and <strong>non-essential</strong> cookies. <strong>Essential</strong> cookies are strictly necessary for the functionality of the website. <strong>Non-essential</strong>            cookies are often used for analytical purposes. We need your permission to use non-essential cookies."
          </div>
        </div>

        <div class="siimple--py-4">
          <div class="siimple-h4 siimple--mb-2 purple">
            "Duration of the cookies"
          </div>
          <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
            "There are cookies that only exist during your session (called "<strong>"session cookies"</strong>") and will dissapear when you close your browser, and cookies that remain on your computer after you close your browser (called "<strong>"persistent cookies"</strong>")."
          </div>
        </div>

        <div class="siimple--py-4">
          <div class="siimple-h4 siimple--mb-2 purple">
            "Cookies that we use"
          </div>
          <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
            "Below is a detailed list of the cookies we use on our website:"
            <br/>
            <br/>
            <div class="cookies siimple-table siimple-table--border">
              <div class="siimple-table-header">
                <div class="siimple-table-row">
                  <div class="siimple-table-cell">"Cookie name"</div>
                  <div class="siimple-table-cell">"Type"</div>
                  <div class="siimple-table-cell">"Purpose"</div>
                  <div class="siimple-table-cell">"Expiry"</div>
                </div>
              </div>
              <div class="siimple-table-body">
                <div class="siimple-table-row">
                  <div class="siimple-table-cell"><strong>"cookies-consent"</strong></div>
                  <div class="siimple-table-cell">"Essential"</div>
                  <div class="siimple-table-cell">"Used by us to store if you have accepted our cookies usage."</div>
                  <div class="siimple-table-cell">"1 year"</div>
                </div>
                <div class="siimple-table-row">
                  <div class="siimple-table-cell"><strong>"_ga"</strong></div>
                  <div class="siimple-table-cell">"Non-essential"</div>
                  <div class="siimple-table-cell">"Used by <strong>Google Analytics</strong> to distinguish users."</div>
                  <div class="siimple-table-cell">"2 years"</div>
                </div>
                <div class="siimple-table-row">
                  <div class="siimple-table-cell"><strong>"_gat"</strong></div>
                  <div class="siimple-table-cell">"Non-essential"</div>
                  <div class="siimple-table-cell">"Used by "<strong>"Google Analytics"</strong>" to throttle request rate."</div>
                  <div class="siimple-table-cell">"1 minute"</div>
                </div>
                <div class="siimple-table-row">
                  <div class="siimple-table-cell"><strong>"_gid"</strong></div>
                  <div class="siimple-table-cell">"Non-essential"</div>
                  <div class="siimple-table-cell">"Used by "<strong>"Google Analytics"</strong>" to distinguish users."</div>
                  <div class="siimple-table-cell">"24 hours"</div>
                </div>
              </div>
            </div>

          </div>
          <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
            "Certain pages on our site may set other third party cookies. For example, we may embed content, such as videos, from another site that sets a cookie. While we try to minimize these third party cookies, we can’t always control what cookies this third party
            content sets."
          </div>
        </div>

        <div class="siimple--py-4">
          <div class="siimple-h4 siimple--mb-2 purple">
            "Cookies from Google Analytics"
          </div>
          <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
            "We use "<strong>"Google Analytics"</strong>" as a third party analytics service to understand how visitors use and interract with our website. All the information that a cookie from Google Analytics collects is aggregated and therefore anonymous."
          </div>
        </div>

        <div class="siimple--py-4">
          <div class="siimple-h4 siimple--mb-2 purple">
            "Managing cookies"
          </div>
          <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
            "You can disable the acceptance of cookies at any time by changing the preferences in your browser. Follow the links below to change your browser settings:"

            <ul>
              <li><a href="https://support.google.com/chrome/answer/95647?hl=en" class="theme-link" target="_blank">"Google Chrome"</a></li>
              <li><a href="https://support.microsoft.com/en-us/help/278835/how-to-delete-cookie-files-in-internet-explorer" class="theme-link" target="_blank">"Internet Explorer"</a></li>
              <li><a href="https://support.apple.com/guide/safari/manage-cookies-and-website-data-sfri11471/mac" class="theme-link" target="_blank">"Safari"</a></li>
              <li><a href="https://support.mozilla.org/en-US/kb/enable-and-disable-cookies-website-preferences" class="theme-link" target="_blank">"Mozilla Firefox"</a></li>
            </ul>
          </div>

          <div class="theme-siimple-tip theme-siimple-tip--warning theme-siimple-tip--exclamation">
              <strong>"Warning"</strong>": if you choose to disable cookies on your browser you may not be able to use some of the services or features of our website."
          </div>
        </div>
      </div>
    </div>

    <Footer/>
  </div>
  </div>
  }
}
