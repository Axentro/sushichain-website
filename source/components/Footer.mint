component Footer {
  fun render : Html {
    <div class="theme-footer siimple-footer--large">
      <div class="siimple-grid-row">
        <div class="siimple-grid-col siimple-grid-col--3 siimple-grid-col--sm-12">
            <a href="#top"><img class="theme-footer-title siimple-brand" src="/images/sc5.svg" width="150" /></a>
        </div>

        <div class="siimple-grid-col siimple-grid-col--3 siimple-grid-col--sm-12">
          <div class="theme-footer-group">"Get started"</div>

          <a href="https://guide.sushichain.io" class="theme-footer-link" target="_blank">"Documentation"
            <div class="theme-footer-link-description">"Read the official docs for "<strong>"SushiChain"</strong></div>
        </a>

        </div>

        <div class="siimple-grid-col siimple-grid-col--3 siimple-grid-col--sm-12">
          <div class="theme-footer-group">"Community"</div>

          <a href="https://github.com/SushiChain" class="theme-footer-link" target="_blank">"GitHub"
            <div class="theme-footer-link-description">"Our repositories on GitHub"</div>
        </a>

          <a href="https://twitter.com/sushichainhq" class="theme-footer-link" target="_blank">"Twitter"
            <div class="theme-footer-link-description">"Follow "<strong>"@sushichainhq"</strong>" on Twitter"</div>
        </a>

          <a href="https://t.me/sushichainhq" class="theme-footer-link" target="_blank">"Telegram"
            <div class="theme-footer-link-description">"Join our chat room on Telegram"</div>
        </a>

        </div>

        <div class="siimple-grid-col siimple-grid-col--3 siimple-grid-col--sm-12">
          <div class="theme-footer-group">"Support"</div>

          <a href="https://github.com/SushiChain/SushiChain/issues" class="theme-footer-link" target="_blank">"Report bug"
            <div class="theme-footer-link-description">"Create a report for a bug"</div>
        </a>

          <a href="https://github.com/SushiChain/SushiChain/issues" class="theme-footer-link" target="_blank">"Request a feature"
            <div class="theme-footer-link-description">"Suggest an idea for "<strong>"SushiChain"</strong></div>
        </a>

        </div>

      </div>


      <div class="theme-footer-rule"></div>
      <div class="siimple-grid-row">
        <div class="siimple-grid-col siimple-grid-col--6 siimple-grid-col--sm-12" align="left">
        "© 2018-present "<strong>"SushiChain"</strong>
        </div>
        <div class="siimple-grid-col siimple-grid-col--6 siimple-grid-col--sm-hide" align="right">
          <a href="/privacy" class="theme-footer-link theme-footer-link--inline">"Privacy Policy"</a>
          <a href="/cookies" class="theme-footer-link theme-footer-link--inline">"Cookies Policy"</a>
        </div>
      </div>
    </div>

  }
}
