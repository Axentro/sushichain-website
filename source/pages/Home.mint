component Home {

  connect Application exposing { anchor }

  fun componentDidMount : Promise(Never, Void) {
    sequence {

      anchor
      |> Maybe.map(Scrolling.scrollTo)

      `(()=>{

       var scroll = new SmoothScroll('a[href*="#"]');

        TweenMax.to('.wheels', 4, {
          rotation: 360,
          repeat: -1,
          transformOrigin: "50% 50%",
          ease: Linear.easeNone
        });

      var s1 = $('#s1');
      var s2 = $('#s2');
      var s3 = $('#s3');
      var s4 = $('#s4');

      new TimelineMax({
          repeat: -1
        })
        .from(s1, 0, {
          opacity: 0,
          x: 28,
          y: 83,
          ease: Linear.easeNone
        })
        .to(s1, 1, {
          opacity: 1,
          x: 38,
          ease: Linear.easeNone
        })
        .to(s1, 6, {
          x: 600,
          ease: Linear.easeNone
        })
        .to(s1, 1, {
          opacity: 0,
          x: 700,
          ease: Linear.easeNone
        })

      new TimelineMax({
          repeat: -1
        })
        .to(s4, 0, {
          opacity: 0,
          x: 28,
          y: 85,
          ease: Linear.easeNone
        })
        .to(s4, 1, {
          opacity: 1,
          x: 38,
          ease: Linear.easeNone
        })
        .to(s4, 6, {
          x: 600,
          ease: Linear.easeNone
        })
        .to(s4, 1, {
          opacity: 0,
          x: 700,
          ease: Linear.easeNone
        }).delay(2)

      new TimelineMax({
          repeat: -1
        })
        .to(s3, 0, {
          opacity: 0,
          x: 28,
          y: 83,
          ease: Linear.easeNone
        })
        .to(s3, 1, {
          opacity: 1,
          x: 38,
          ease: Linear.easeNone
        })
        .to(s3, 6, {
          x: 600,
          ease: Linear.easeNone
        })
        .to(s3, 1, {
          opacity: 0,
          x: 700,
          ease: Linear.easeNone
        }).delay(4)

      new TimelineMax({
          repeat: -1
        })
        .to(s2, 0, {
          opacity: 0,
          x: 28,
          y: 83,
          ease: Linear.easeNone
        })
        .to(s2, 1, {
          opacity: 1,
          x: 38,
          ease: Linear.easeNone
        })
        .to(s2, 6, {
          x: 600,
          ease: Linear.easeNone
        })
        .to(s2, 1, {
          opacity: 0,
          x: 700,
          ease: Linear.easeNone
        }).delay(6)

      ScrollReveal().reveal('.cpu-mining', {
            delay: 100,
            beforeReveal: cpuMiningCallback,
            reset: true
          });

          ScrollReveal().reveal('.distributed', {
            delay: 200,
            beforeReveal: distributedCallback,
            reset: true
          });

          ScrollReveal().reveal('.wallet', {
            delay: 300,
            beforeReveal: walletCallback,
            reset: true
          });

          ScrollReveal().reveal('.two-factor', {
            delay: 400,
            beforeReveal: twoFactorCallback,
            reset: true
          });

          ScrollReveal().reveal('.node-arch', {
            delay: 300
          });

          ScrollReveal().reveal('.c1', {
      delay: 100
    });
    ScrollReveal().reveal('.c2', {
      delay: 200
    });
    ScrollReveal().reveal('.c3', {
      delay: 300
    });
    ScrollReveal().reveal('.c4', {
      delay: 400
    });
    ScrollReveal().reveal('.c5', {
      delay: 400
    });
    ScrollReveal().reveal('.c6', {
      delay: 500
    });

          function cpuMiningCallback(el) {
            new Vivus('svg-cpu', {
              duration: 200
            }, function() {});
          }

          function distributedCallback(el) {
            new Vivus('svg-distributed', {
              duration: 200
            }, function() {});
          }

          function walletCallback(el) {
            new Vivus('svg-wallet', {
              duration: 200
            }, function() {});
          }

          function twoFactorCallback(el) {
            new Vivus('svg-two-factor', {
              duration: 200
            }, function() {});
          }
        })();`
    }
  }

  fun render : Html {
    <div>
  <div class="siimple-navbar theme-navbar siimple-navbar--large">
    <img class="siimple-brand" src="/images/sc5_animated.svg"/>

    <a class="siimple-navbar-item siimple--float-right siimple--display-sm-none" href="#roadmap">
        "Roadmap"
    </a>

    <a class="siimple-navbar-item siimple--float-right siimple--display-sm-none" href="#specification">
        "Specs"
    </a>

    <a class="siimple-navbar-item siimple--float-right siimple--display-sm-none" href="#team">
        "Team"
    </a>

    <a class="siimple-navbar-item siimple--float-right siimple--display-sm-none" href="https://guide.sushichain.io">
        "Docs"
    </a>

    <a class="siimple-navbar-item siimple--float-right siimple--display-sm-none" href="#smart-assets">
        "Smart Assets"
    </a>

    <a class="siimple-navbar-item siimple--float-right siimple--display-sm-none" href="#dapps">
        "dApps"
    </a>

    <a class="siimple-navbar-item siimple--float-right siimple--display-sm-none" href="#about">
            "About"
        </a>
  </div>

  <div>

    <div class="siimple-jumbotron siimple-jumbotron--large siimple--color-primary dark-bg" align="center">
      <div class="docs-welcome-title1 aqua">
        "An "<strong>"original"</strong>", "<strong>"proof of work"</strong>" Blockchain"</div>
      <div class="docs-welcome-title2">
        "for decentralised "<strong class="siimple-brand">"Apps"</strong>"."
      </div>
      <div class="docs-welcome-buttons">
        <a href="https://github.com/SushiChain/sushichain-website/blob/deploy/sushichain_whitepaper_v.0.0.2.pdf" class="button-margin siimple-btn fg-dark bg-yellow">
            <b>"Read our whitepaper"</b>
        </a>
        <a href="https://twitter.com/sushichainhq" target="_blank" class="button-margin siimple-btn fg-dark bg-blue">
            <b>"Follow on Twitter"</b>
        </a>
        <a href="https://t.me/sushichainhq" target="_blank" class="button-margin siimple-btn fg-dark bg-aqua">
            <b>"Chat on Telegram"</b>
        </a>
      </div>

      <svg class="siimple-grid-col--sm-hide" id="conv" width="600px" height="225px" viewBox="0 0 800 300" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <title>"Conveyor Belt"</title>
    <desc>"Conveyor Belt"</desc>
    <defs>
        <path d="M4.72081395,28.275931 C5.45247287,30.8677931 8.37372868,33.1556552 12.2875659,33.1556552 C17.036624,33.1556552 19.5409419,30.3593793 19.5409419,27.5133103 C19.5933953,24.0553103 16.5147791,22.530069 13.4361628,21.7674483 L8.79201163,20.6497241 C1.1728062,18.8191724 0.0242093023,14.4976552 0.0242093023,11.4982759 C0.0242093023,5.60041379 5.55603488,1.63531034 11.6621589,1.63531034 C17.4011085,1.63531034 21.5247597,4.5337931 22.8280271,9.05841379 C22.9329341,9.41351724 22.9853876,9.82103448 22.9853876,10.2272414 C22.9853876,11.3462759 22.4110891,12.3631034 20.5846318,12.3631034 C19.6983023,12.3631034 18.7057209,12.0066897 18.3412364,10.7356552 C17.453562,7.48206897 14.8967907,6.15993103 11.6097054,6.15993103 C8.1128062,6.15993103 4.87817442,8.24468966 4.87817442,11.4471724 C4.87817442,12.9724138 5.45247287,15.2602759 9.99171705,16.3282069 L14.6883217,17.445931 C20.8455543,18.9213793 24.393562,22.2758621 24.393562,27.0546897 C24.393562,32.6983448 20.0103333,37.5793793 12.2875659,37.5793793 C5.97431783,37.5793793 1.74710465,34.2746897 0.285131783,29.8011724 C0.181569767,29.4447586 0.129116279,29.0883448 0.129116279,28.7843448 C0.129116279,27.36 1.27771318,26.5973793 2.52987209,26.5973793 C3.57356202,26.5973793 4.40878295,27.3088966 4.72081395,28.275931 Z M47.3022868,34.9862069 L47.3022868,33.512069 C45.8416589,36.3594483 42.3447597,37.5793793 39.6830814,37.5793793 C33.6307558,37.5793793 30.2912171,33.7151724 30.2912171,27.0546897 L30.2912171,15.4122759 C30.2912171,14.1425517 31.334907,13.0746207 32.6906279,13.0746207 C33.9952403,13.0746207 35.0389302,14.1425517 35.0389302,15.4122759 L35.0389302,26.7506897 C35.0389302,30.7157931 37.0752016,33.0547586 40.4147403,33.0547586 C43.8578411,33.0547586 47.3022868,31.1731034 47.3022868,26.140069 L47.3022868,15.4122759 C47.3022868,14.1425517 48.3459767,13.0746207 49.7030426,13.0746207 C51.007655,13.0746207 52.051345,14.1425517 52.051345,15.4122759 L52.051345,34.9862069 C52.051345,36.2572414 51.007655,37.3251724 49.7030426,37.3251724 C48.3459767,37.3251724 47.3022868,36.2572414 47.3022868,34.9862069 Z M62.3833372,30.6646897 C63.0611977,32.3930345 64.992562,33.512069 67.4444264,33.512069 C69.8976357,33.512069 71.724093,32.2410345 71.724093,30.3593793 C71.724093,28.6310345 70.3145736,27.7675172 68.4881163,27.36 L65.1485775,26.5973793 C61.0262713,25.5294483 58.574407,23.5468966 58.574407,19.7848966 C58.574407,15.8708966 62.1748682,12.8204138 67.0799419,12.8204138 C70.2634651,12.8204138 73.3420814,13.9381379 74.7502558,16.6833103 C74.9587248,17.0397241 75.0111783,17.445931 75.0111783,17.7512414 C75.0111783,19.2764828 73.4980969,19.836 72.7677829,19.836 C72.0885775,19.836 71.5680775,19.4795862 71.0462326,18.8191724 C69.9500891,17.3961379 68.6979302,16.8366207 67.1835039,16.8366207 C64.887655,16.8366207 63.3745736,18.1587586 63.3745736,19.9382069 C63.3745736,21.4634483 64.887655,22.3269655 66.4531899,22.6833793 L70.0536512,23.5468966 C75.1160853,24.7668276 76.3682442,27.7675172 76.3682442,30.4615862 C76.3682442,34.884 71.9850155,37.5793793 66.9225814,37.5793793 C63.1661047,37.5793793 59.3047209,35.5457241 58.156124,31.8846207 C58.1036705,31.6304138 58.052562,31.3762069 58.052562,31.1731034 C58.052562,29.9531724 59.2522674,29.3425517 60.3484109,29.3425517 C61.1836318,29.3425517 62.0175078,29.750069 62.3833372,30.6646897 Z M104.859903,23.3437931 L104.859903,34.9862069 C104.859903,36.2572414 103.816213,37.3251724 102.459147,37.3251724 C101.154535,37.3251724 100.110845,36.2572414 100.110845,34.9862069 L100.110845,23.6491034 C100.110845,19.7337931 97.7114341,17.3450345 94.3718953,17.3450345 C91.0310116,17.3450345 86.9611589,19.1755862 86.9611589,24.2584138 L86.9611589,34.9862069 C86.9611589,36.2572414 85.917469,37.3251724 84.5604031,37.3251724 C83.2557907,37.3251724 82.2121008,36.2572414 82.2121008,34.9862069 L82.2121008,2.50013793 C82.2121008,1.22910345 83.2557907,0.161172414 84.5604031,0.161172414 C85.917469,0.161172414 86.9611589,1.22910345 86.9611589,2.50013793 L86.9611589,16.8877241 C88.4217868,14.0403448 92.335624,12.8204138 94.9973023,12.8204138 C101.103426,12.8204138 104.912357,16.6833103 104.859903,23.3437931 Z M111.22695,4.63468966 C111.22695,2.90634483 112.740031,1.63531034 114.514035,1.63531034 C116.340492,1.63531034 117.80112,2.90634483 117.80112,4.63468966 C117.80112,6.36303448 116.340492,7.63406897 114.514035,7.63406897 C112.740031,7.63406897 111.22695,6.36303448 111.22695,4.63468966 Z M116.914791,34.9862069 C116.914791,36.2572414 115.871101,37.3251724 114.514035,37.3251724 C113.209422,37.3251724 112.165733,36.2572414 112.165733,34.9862069 L112.165733,15.4122759 C112.165733,14.1425517 113.209422,13.0746207 114.514035,13.0746207 C115.871101,13.0746207 116.914791,14.1425517 116.914791,15.4122759 L116.914791,34.9862069 Z M136.691101,19.5817931 C136.691101,9.61662069 144.727244,1.63531034 154.903221,1.63531034 C159.599826,1.63531034 163.774585,3.26275862 166.853202,6.00793103 C167.791984,6.82034483 167.949345,8.2957931 167.114124,9.31262069 C166.175341,10.3294483 164.660915,10.3792414 163.669678,9.56682759 C161.321376,7.53317241 158.347667,6.21103448 154.903221,6.21103448 C147.388922,6.21103448 141.545066,12.2097931 141.545066,19.6328966 C141.545066,27.0546897 147.388922,33.0036552 154.903221,33.0036552 C158.347667,33.0036552 161.321376,31.6815172 163.669678,29.6478621 C164.660915,28.8341379 166.175341,28.8852414 167.114124,29.902069 C167.949345,30.9188966 167.791984,32.3930345 166.853202,33.2067586 C163.774585,35.951931 159.599826,37.5793793 154.903221,37.5793793 C144.727244,37.5793793 136.691101,29.5469655 136.691101,19.5817931 Z M195.761798,23.3437931 L195.761798,34.9862069 C195.761798,36.2572414 194.718109,37.3251724 193.362388,37.3251724 C192.057775,37.3251724 191.014085,36.2572414 191.014085,34.9862069 L191.014085,23.6491034 C191.014085,19.7337931 188.613329,17.3450345 185.273791,17.3450345 C181.934252,17.3450345 177.863054,19.1755862 177.863054,24.2584138 L177.863054,34.9862069 C177.863054,36.2572414 176.820709,37.3251724 175.463643,37.3251724 C174.159031,37.3251724 173.115341,36.2572414 173.115341,34.9862069 L173.115341,2.50013793 C173.115341,1.22910345 174.159031,0.161172414 175.463643,0.161172414 C176.820709,0.161172414 177.863054,1.22910345 177.863054,2.50013793 L177.863054,16.8877241 C179.325027,14.0403448 183.238864,12.8204138 185.899198,12.8204138 C192.005322,12.8204138 195.814252,16.6833103 195.761798,23.3437931 Z M222.58436,34.9862069 L222.58436,33.4098621 C220.966372,36.1052414 217.418364,37.5793793 214.026372,37.5793793 C207.347295,37.5793793 201.659453,32.6983448 201.659453,25.1743448 C201.659453,17.5992414 207.347295,12.8204138 214.026372,12.8204138 C217.418364,12.8204138 220.966372,14.1923448 222.58436,16.8877241 L222.58436,15.4122759 C222.58436,14.1425517 223.62805,13.0746207 224.932663,13.0746207 C226.289729,13.0746207 227.333419,14.1425517 227.333419,15.4122759 L227.333419,34.9862069 C227.333419,36.2572414 226.289729,37.3251724 224.932663,37.3251724 C223.62805,37.3251724 222.58436,36.2572414 222.58436,34.9862069 Z M222.531907,25.1232414 C222.531907,20.0391034 218.357147,17.3450345 214.44331,17.3450345 C210.060081,17.3450345 206.512074,20.3955172 206.512074,25.1232414 C206.512074,29.8011724 210.060081,33.0547586 214.44331,33.0547586 C218.77543,33.0547586 222.531907,30.1562759 222.531907,25.1232414 Z M233.907589,4.63468966 C233.907589,2.90634483 235.420671,1.63531034 237.196019,1.63531034 C239.022477,1.63531034 240.483105,2.90634483 240.483105,4.63468966 C240.483105,6.36303448 239.022477,7.63406897 237.196019,7.63406897 C235.420671,7.63406897 233.907589,6.36303448 233.907589,4.63468966 Z M239.59543,34.9862069 C239.59543,36.2572414 238.55174,37.3251724 237.196019,37.3251724 C235.891407,37.3251724 234.847717,36.2572414 234.847717,34.9862069 L234.847717,15.4122759 C234.847717,14.1425517 235.891407,13.0746207 237.196019,13.0746207 C238.55174,13.0746207 239.59543,14.1425517 239.59543,15.4122759 L239.59543,34.9862069 Z M251.858787,15.4122759 L251.858787,16.8877241 C253.319415,14.0403448 256.816314,12.8204138 259.477992,12.8204138 C265.530318,12.8204138 268.869857,16.6833103 268.869857,23.3437931 L268.869857,34.9862069 C268.869857,36.2572414 267.826167,37.3251724 266.470446,37.3251724 C265.165833,37.3251724 264.122143,36.2572414 264.122143,34.9862069 L264.122143,23.6491034 C264.122143,19.684 262.087217,17.3450345 258.747678,17.3450345 C255.303233,17.3450345 251.858787,19.2253793 251.858787,24.2584138 L251.858787,34.9862069 C251.858787,36.2572414 250.815097,37.3251724 249.458031,37.3251724 C248.153419,37.3251724 247.109729,36.2572414 247.109729,34.9862069 L247.109729,15.4122759 C247.109729,14.1425517 248.153419,13.0746207 249.458031,13.0746207 C250.815097,13.0746207 251.858787,14.1425517 251.858787,15.4122759 Z" id="path-1"></path>
    </defs>
    <g id="Artboard-8" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <g id="conveyor" transform="translate(9.000000, 178.000000)" fill-rule="nonzero">
            <g class="wheels" id="wheel_left" transform="translate(9.000000, 12.000000)">
                <circle id="Oval-5" fill="#83A598" cx="43.3230769" cy="44.6769231" r="43.3230769"></circle>
                <path d="M43.6615385,87.5963303 L43.6615385,0.403669725" id="Line-32" stroke="#282828" stroke-width="3" stroke-linecap="square"></path>
                <path d="M1.75130558,43.6615385 L87.6025406,43.6615385" id="Line-33" stroke="#282828" stroke-width="3" stroke-linecap="square"></path>
                <path d="M11.2299803,9.88307692 L72.7084813,74.0553846" id="Line-34" stroke="#282828" stroke-width="3" stroke-linecap="square"></path>
                <path d="M11.2289593,75.4126582 L78.1248869,12.5873418" id="Line-35" stroke="#282828" stroke-width="3" stroke-linecap="square"></path>
            </g>
            <g class="wheels" id="wheel_right" transform="translate(684.000000, 11.000000)">
                <circle id="Oval-5" fill="#83A598" cx="44.8" cy="46.2" r="44.8"></circle>
                <path d="M46.9,90.5825688 L46.9,0.417431193" id="Line-32" stroke="#282828" stroke-width="3" stroke-linecap="square"></path>
                <path d="M1.81100917,46.9 L90.5889908,46.9" id="Line-33" stroke="#282828" stroke-width="3" stroke-linecap="square"></path>
                <path d="M11.6128205,10.22 L75.1871795,76.58" id="Line-34" stroke="#282828" stroke-width="3" stroke-linecap="square"></path>
                <path d="M11.6117647,77.9835443 L80.7882353,13.0164557" id="Line-35" stroke="#282828" stroke-width="3" stroke-linecap="square"></path>
            </g>
            <path d="M728.091164,2.67549732 C758.416477,2.67549732 783,27.4766228 783,58.0703615 C783,88.6641003 758.416477,113.465226 728.091164,113.465226 C724.215985,116.918468 63.2649831,113.465226 54.9088359,113.465226 C24.5835232,113.465226 0,88.6641003 0,58.0703615 C0,27.4766228 24.5835232,2.67549732 54.9088359,2.67549732 C68.9315507,2.67549732 617.436602,-3.34437165 728.091164,2.67549732 Z" id="Combined-Shape" stroke="#B06286" stroke-width="3"></path>
        </g>

        <g id="s1" style="opacity:0;" transform="translate(38.000000, 83.000000)" fill-rule="nonzero">
            <circle id="Oval-7" stroke="#B8BB25" stroke-width="12" fill="#EADCB1" cx="43.5" cy="43.5" r="43.5"></circle>
            <circle id="Oval-7" stroke="#CB241C" stroke-width="4" fill="#D79A20" cx="30" cy="30" r="8"></circle>
            <circle id="Oval-7" stroke="#CB241C" stroke-width="4" fill="#D79A20" cx="30" cy="57" r="8"></circle>
            <circle id="Oval-7" stroke="#CB241C" stroke-width="4" fill="#D79A20" cx="57" cy="57" r="8"></circle>
            <circle id="Oval-7" stroke="#CB241C" stroke-width="4" fill="#D79A20" cx="57" cy="30" r="8"></circle>
        </g>
        <g id="s2" style="opacity:0;" transform="translate(357.000000, 83.000000)" fill-rule="nonzero">
            <circle id="Oval-7" stroke="#83A598" stroke-width="12" fill="#EADCB1" cx="43.5" cy="43.5" r="43.5"></circle>
            <circle id="Oval-7" stroke="#8DC07C" stroke-width="4" fill="#FABD2E" cx="43.5" cy="43.5" r="10.5"></circle>
        </g>
        <g id="s3" style="opacity:0;" transform="translate(669.000000, 83.000000)" fill-rule="nonzero">
            <circle id="Oval-7" stroke="#D3869B" stroke-width="12" fill="#282828" cx="43.5" cy="43.5" r="43.5"></circle>
            <circle id="Oval-7" stroke="#8DC07C" stroke-width="4" fill="#FABD2E" cx="43.5" cy="43.5" r="10.5"></circle>
            <g id="s" transform="translate(9.000000, 9.000000)">
                <circle id="Oval-7" stroke="#282828" stroke-width="4" fill="#EADCB1" cx="34.5" cy="34.5" r="34.5"></circle>
                <path d="M36.4813356,40.0710442 C22.1986127,37.5363919 23.1693363,24.0881493 40.9283064,27.3900046 C47.4378205,28.6002929 47.8977397,44.3177277 44.0538194,48.0906228 C37.7046888,54.3224386 25.7569771,49.2599161 20.0048034,44.8439242 C17.8865162,43.2176975 15.8984646,41.1063797 14.9362674,38.5785475 C13.8571677,35.7435957 13.8886344,32.5143617 14.1580475,29.4836458 C14.3147624,27.7207083 15.026173,25.9114097 16.1793978,24.5941644 C24.8639072,14.674478 44.1598809,19.0892479 50.8329231,28.9317329 C54.3389968,34.1030591 50.4154786,41.6021562 56,44.5122583" id="Path-4" stroke="#CB241C" stroke-width="3"></path>
            </g>
        </g>
        <g id="s4" style="opacity:0;" transform="translate(184.000000, 83.000000)" fill-rule="nonzero">
            <rect id="Rectangle-11" stroke="#CB241C" stroke-width="10" fill="#EADCB1" x="5" y="5" width="80" height="80" rx="8"></rect>
            <path d="M54.5,60.5 L65.5,74.5" id="Line-36" stroke="#8DC07C" stroke-width="3" stroke-linecap="square"></path>
            <rect id="Rectangle-11" stroke="#CB241C" stroke-width="3" fill="#EADCB1" x="35.5" y="35.5" width="17" height="17" rx="8"></rect>
            <path d="M18.5,17.5 L29.5,31.5" id="Line-36" stroke="#8DC07C" stroke-width="3" stroke-linecap="square"></path>
            <path d="M60.5,19.5 L71.5,33.5" id="Line-36" stroke="#8DC07C" stroke-width="3" stroke-linecap="square"></path>
            <path d="M18.5,53.5 L29.5,67.5" id="Line-36" stroke="#8DC07C" stroke-width="3" stroke-linecap="square"></path>
        </g>
        <g id="logo" transform="translate(227.000000, 217.000000)">
            <g id="Group-5" transform="translate(0.000000, 7.862069)">
                <path d="M21.7426434,0.678758621 C7.24799612,0.00131034483 0,4.39227586 0,13.8503448 C0,23.3097241 7.24799612,27.6993793 21.7426434,27.021931" id="Stroke-1" stroke="#FB4934" stroke-width="5.376"></path>
                <path d="M35.8754961,27.021931 C50.3714884,27.6993793 57.6181395,23.3097241 57.6181395,13.8503448 C57.6181395,4.39227586 50.3714884,0.00131034483 35.8754961,0.678758621" id="Stroke-3" stroke="#83A598" stroke-width="5.376"></path>
                <path d="M19.7467209,13.8503448 L37.8727636,13.8503448" id="Stroke-4" stroke="#B8BB25" stroke-width="4.032"></path>
            </g>
            <g id="Group-8" transform="translate(78.007752, 0.000000)">
                <g id="Fill-6-Clipped">
                    <mask id="mask-2" fill="white">
                        <use href="#path-1"></use>
                    </mask>
                    <g id="path-1"></g>
                    <polygon id="Fill-6" fill="#EADCB1" fill-rule="nonzero" mask="url(#mask-2)" points="-0.0806976744 37.6068966 268.965349 37.6068966 268.965349 0.0262068966 -0.0806976744 0.0262068966"></polygon>
                </g>
            </g>
        </g>
    </g>
</svg>


    </div>

    <div id="about" class="siimple-grid siimple-content siimple-content--large">
    <div class="siimple-grid-row">
        <div class="siimple-grid-col siimple-grid-col--8 siimple-grid-col--sm-11">

            <div class="siimple-h2 aqua">
              "What is "<strong class="siimple-brand">"SushiChain"</strong>"?"
            </div>
            <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
              "SushiChain is a "<strong>"CPU only proof of work"</strong>" blockchain. We wrote it from scratch using the "<a class="theme-link" href="https://crystal-lang.org/" target="_blank">"Crystal programming language"</a>". Yes! You read that correctly we didn't
              fork another existing blockchain we wrote our own using concepts from "<strong>"Bitcoin"</strong>" and "<strong>"Ethereum"</strong>"."
            </div>
            <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
              "Writing the code ourselves really gave us a great understanding of the inner workings of a blockchain and also gave us the freedom to implement our own ideas as well as take inspiration from other blockchains."
            </div>
            <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
              "We believe that the future is not going to be dominated by a few large blockchains but instead by "<strong>"many smaller chains"</strong>" each with their own "<strong>"specific features and
              solutions"</strong>" to problems."
            </div>

        </div>
        <div class="siimple-grid-col siimple-grid-col--4 siimple-grid-col--sm-12">
            <div class="siimple-paragraph siimple-paragraph--lead fg">
              <a class="twitter-timeline" data-width="300" data-height="800" data-theme="dark" data-link-color="#E95F28" href="https://twitter.com/sushichainhq/timelines/1133070471245778946?ref_src=twsrc%5Etfw">"Latest News - Curated tweets by sushichainhq"</a>
            </div>
          </div>

    </div>
   </div>

    <div class="divider"></div>
    <div class="siimple-content siimple-content--large siimple--py-5" align="center">
      <div class="siimple--py-4">
        <div class="siimple-h2 siimple--mb-2 aqua">
          "Features"
        </div>
        <div class="siimple-paragraph siimple-paragraph--lead siimple--text-center fg">
          "SushiChain has several really "<strong>"great features"</strong>" built-in to the core blockchain."
          <div class="siimple-grid-row">
            <div class="cpu-mining siimple-grid-col siimple-grid-col--3 siimple-grid-col-sm--12">
              <div class="theme-image">
              <svg id="svg-cpu" width="154px" height="154px" viewBox="0 0 308 308" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <title>"CPU only mining"</title>
    <desc>"CPU only mining"</desc>
    <defs></defs>
    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <g id="Artboard" transform="translate(-214.000000, -90.000000)">
            <g id="Group-3" transform="translate(214.000000, 90.000000)">
                <g id="Group" transform="translate(44.000000, 44.000000)">
                    <rect id="Rectangle" stroke="#B06286" stroke-width="16" fill="#D3869B" fill-rule="nonzero" x="8" y="8" width="204" height="204" rx="8"></rect>
                    <rect id="Rectangle-2" stroke="#EADCB1" stroke-width="10" fill-rule="nonzero" x="31.3247863" y="34.3333333" width="158.290598" height="151.333333" rx="8"></rect>
                    <text id="CPU" font-family="Tahoma" font-size="62" font-weight="normal" fill="#EADCB1">
                        <tspan x="53" y="135">"CPU"</tspan>
                    </text>
                </g>
                <g id="Group-2" transform="translate(62.000000, 0.000000)" fill="#B06286" fill-rule="nonzero" stroke="#B06286">
                    <rect id="Rectangle-3" x="34.1" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="0.5" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="67.7" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="101.3" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="134.9" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="168.5" y="0.5" width="15" height="55" rx="7.5"></rect>
                </g>
                <g id="Group-2" transform="translate(62.000000, 252.000000)" fill="#B06286" fill-rule="nonzero" stroke="#B06286">
                    <rect id="Rectangle-3" x="34.1" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="0.5" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="67.7" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="101.3" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="134.9" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="168.5" y="0.5" width="15" height="55" rx="7.5"></rect>
                </g>
                <g id="Group-2" transform="translate(28.000000, 154.000000) rotate(90.000000) translate(-28.000000, -154.000000) translate(-64.000000, 126.000000)" fill="#B06286" fill-rule="nonzero" stroke="#B06286">
                    <rect id="Rectangle-3" x="34.1" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="0.5" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="67.7" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="101.3" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="134.9" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="168.5" y="0.5" width="15" height="55" rx="7.5"></rect>
                </g>
                <g id="Group-2" transform="translate(280.000000, 154.000000) rotate(90.000000) translate(-280.000000, -154.000000) translate(188.000000, 126.000000)" fill="#B06286" fill-rule="nonzero" stroke="#B06286">
                    <rect id="Rectangle-3" x="34.1" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="0.5" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="67.7" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="101.3" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="134.9" y="0.5" width="15" height="55" rx="7.5"></rect>
                    <rect id="Rectangle-3" x="168.5" y="0.5" width="15" height="55" rx="7.5"></rect>
                </g>
            </g>
        </g>
    </g>
</svg>
              </div>
              <div class="website-feature-title">"CPU only mining"</div>
              <div class="siimple-paragraph  fg">
                "We want "<strong>"everyone"</strong>" to benefit from mining and not just those who can afford expensive mining rigs."
              </div>
              <div class="siimple-paragraph  fg">
                "This is why we use the "<strong>"award winning Argon2d"</strong>" hashing algorithm which is "<strong>"ASIC"</strong>" and "<strong>"GPU"</strong>" mining resistant. It means "<strong>"anyone"</strong>" with regular consumer hardware can participate."
              </div>
            </div>


            <div class="distributed siimple-grid-col siimple-grid-col--3 siimple-grid-col-sm--12">
              <div class="theme-image">
              <svg id="svg-distributed" width="154px" height="154px" viewBox="0 0 308 308" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <title>"Distributed"</title>
    <desc>"Distributed"</desc>
    <defs></defs>
    <g id="Artboard-2" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <g id="Group-5" transform="translate(34.000000, 29.000000)" fill-rule="nonzero" stroke="#468488" stroke-linecap="square" stroke-width="3">
            <path d="M1.5,4.5 L241.5,252.5" id="Line"></path>
            <path d="M1.5,250.5 L244.5,0.5" id="Line-2"></path>
            <path d="M121.5,2.5 L121.5,252.5" id="Line-3"></path>
            <path d="M2.5,127.5 L243.5,127.5" id="Line-4"></path>
            <path d="M122.5,2.5 L5.5,129.5" id="Line-5"></path>
            <path d="M121.5,3.5 L245.5,129.5" id="Line-6"></path>
            <path d="M0.5,3.5 L121.5,251.5" id="Line-7"></path>
            <path d="M1.5,250.5 L245.5,128.5" id="Line-8"></path>
            <path d="M242.5,253.5 L120.5,2.5" id="Line-9"></path>
        </g>
        <g id="Group-4" transform="translate(21.000000, 18.000000)" fill="#83A598" fill-rule="nonzero" stroke="#468488" stroke-width="4">
            <g id="Group">
                <circle id="Oval" cx="134" cy="15" r="15"></circle>
                <circle id="Oval" cx="252" cy="15" r="15"></circle>
                <circle id="Oval" cx="15" cy="15" r="15"></circle>
            </g>
            <g id="Group-2" transform="translate(0.000000, 123.000000)">
                <circle id="Oval" cx="134" cy="15" r="15"></circle>
                <circle id="Oval" cx="252" cy="15" r="15"></circle>
                <circle id="Oval" cx="15" cy="15" r="15"></circle>
            </g>
            <g id="Group-3" transform="translate(0.000000, 246.000000)">
                <circle id="Oval" cx="134" cy="15" r="15"></circle>
                <circle id="Oval" cx="252" cy="15" r="15"></circle>
                <circle id="Oval" cx="15" cy="15" r="15"></circle>
            </g>
        </g>
    </g>
</svg>

              </div>

              <div class="website-feature-title">"Decentralised app platform"</div>
              <div class="siimple-paragraph fg">
                "We want to be the "<strong>"go to platform"</strong>" for developing "<strong>"dApps"</strong>
              </div>
              <div class="siimple-paragraph  fg">
                "We will provide a developer portal, tools and tutorials covering everything needed to get started building a range of "<strong>"dApps"</strong>"."
              </div>
            </div>


            <div class="wallet siimple-grid-col siimple-grid-col--3 siimple-grid-col-sm--12">

              <div class="theme-image">
              <svg id="svg-wallet" width="154px" height="154px" viewBox="0 0 308 308" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                  <title>"Wallet"</title>
                  <desc>"Wallet"</desc>
                  <defs></defs>
                  <g id="wallet" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <rect id="Rectangle-4" stroke="#D65D0D" stroke-width="6" fill-rule="nonzero" x="16" y="41" width="261" height="227" rx="8"></rect>
                      <rect id="Rectangle" stroke="#D65D0D" stroke-width="6" fill-rule="nonzero" x="193" y="124" width="99" height="61" rx="8"></rect>
                      <circle id="Oval" stroke="#D65D0D" stroke-width="6" fill-rule="nonzero" cx="228" cy="155" r="15"></circle>
                      <g id="Group-2" transform="translate(15.000000, 85.000000)" fill-rule="nonzero" stroke="#D65D0D" stroke-linecap="square" stroke-width="4">
                          <path d="M2.5,1.5 L55.5,1.5" id="Line-10"></path>
                          <path d="M2.5,49.5 L95.5,49.5" id="Line"></path>
                          <path d="M92.5,93.5 L0.5,93.5" id="Line-2"></path>
                          <path d="M53.5,140.5 L2.5,140.5" id="Line-11"></path>
                      </g>
                      <g id="Group" transform="translate(57.000000, 75.000000)" fill="#FE8018" fill-rule="nonzero" stroke="#D65D0D" stroke-width="6">
                          <circle id="Oval" cx="10" cy="10" r="10"></circle>
                          <circle id="Oval" cx="50" cy="56.6666667" r="10"></circle>
                          <circle id="Oval" cx="50" cy="103.333333" r="10"></circle>
                          <circle id="Oval" cx="10" cy="150" r="10"></circle>
                      </g>
                      <g id="Group-3" transform="translate(146.000000, 208.000000)" fill-rule="nonzero" stroke="#D65D0D" stroke-linecap="square" stroke-width="4">
                          <path d="M1.5,0.5 L1.5,58.5" id="Line-12"></path>
                          <path d="M92.5,16.5 L44.5,16.5" id="Line-13"></path>
                          <path d="M44.5,16.5 L44.5,58.5" id="Line-3"></path>
                      </g>
                      <g id="Group-4" transform="translate(137.000000, 198.000000)" fill="#FE8018" fill-rule="nonzero" stroke="#D65D0D" stroke-width="6">
                          <circle id="Oval" cx="101" cy="27" r="10"></circle>
                          <circle id="Oval" cx="10" cy="10" r="10"></circle>
                      </g>
                      <g id="Group-5" transform="translate(136.000000, 40.000000)" fill-rule="nonzero" stroke="#D65D0D">
                          <g id="Group-6" transform="translate(9.000000, 0.000000)" stroke-linecap="square" stroke-width="4">
                              <path d="M1.5,44.5 L1.5,0.5" id="Line-14"></path>
                              <path d="M92.5,37.5 L48.5,37.5" id="Line-15"></path>
                              <path d="M48.5,35 L48.5,3.5" id="Line-4"></path>
                          </g>
                          <circle id="Oval" stroke-width="6" fill="#FE8018" cx="102" cy="38" r="10"></circle>
                          <circle id="Oval" stroke-width="6" fill="#FE8018" cx="10" cy="45" r="10"></circle>
                      </g>
                  </g>
              </svg>
              </div>

              <div class="website-feature-title">"Human readable addresses"</div>
              <div class="siimple-paragraph  fg">
                "You can optionally acquire a "<strong>"human readable"</strong>" address which is much "<strong>"easier"</strong>" to remember and use. You can also put yours up for sale or buy names that have been put up for sale."
              </div>
            </div>

            <div class="two-factor siimple-grid-col siimple-grid-col--3 siimple-grid-col-sm--12">
              <div class="theme-image">
              <svg id="svg-two-factor" width="154px" height="154px" viewBox="0 0 308 308" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <title>"Two Factor Auth"</title>
    <desc>"Two Factor Auth"</desc>
    <defs></defs>
    <g id="Artboard-4" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <g id="Group-4" transform="translate(24.000000, 24.000000)" fill-rule="nonzero" stroke="#689D6A">
            <circle id="Oval-2" stroke-width="6" cx="130" cy="130" r="130"></circle>
            <g id="Group-3" transform="translate(29.000000, 79.000000)">
                <g id="Group-2" transform="translate(8.000000, 7.000000)" stroke-linecap="square" stroke-width="4">
                    <path d="M0.414893617,1.25229358 L51.0319149,1.25229358" id="Line-16"></path>
                    <path d="M0.414893617,45.2912844 L77.5851064,45.2912844" id="Line-16"></path>
                    <path d="M0.414893617,90.4151376 L51.0319149,90.4151376" id="Line-16"></path>
                    <path d="M52.6914894,1.25229358 L52.6914894,90.5825688" id="Line-17"></path>
                </g>
                <g id="Group" fill="#8DC07C" stroke-width="5">
                    <ellipse id="Oval-3" cx="8.5" cy="8.30645161" rx="8.5" ry="8.30645161"></ellipse>
                    <ellipse id="Oval-3" cx="8.5" cy="51.5" rx="8.5" ry="8.30645161"></ellipse>
                    <ellipse id="Oval-3" cx="8.5" cy="94.6935484" rx="8.5" ry="8.30645161"></ellipse>
                </g>
            </g>
        </g>
        <g id="fingerprint-svgrepo-com-(1)" transform="translate(154.000000, 96.000000)" fill-rule="nonzero">
            <path d="M44,0 C44,0 30.666,16 0,16 L0,54.17 C0,74.102 8.656,93.324 24.328,105.64 C29.874,110 36.416,113.75 44,116 C51.584,113.75 58.124,110 63.672,105.64 C79.344,93.324 88,74.102 88,54.17 L88,16 C57.334,16 44,0 44,0 Z" id="Shape" stroke="#689D6A" stroke-width="5"></path>
            <g id="Group" transform="translate(11.000000, 22.000000)" fill="#8DC07C">
                <path d="M33.7,31.066 C32.686,31.486 32.202,32.652 32.614,33.67 C32.644,33.746 35.676,41.55 34.826,65.93 C34.788,67.036 35.652,67.962 36.756,67.998 C36.78,68 36.804,68 36.828,68 C37.9,68 38.788,67.15 38.826,66.07 C39.716,40.51 36.444,32.456 36.304,32.126 C35.876,31.118 34.718,30.638 33.7,31.066 Z" id="Shape"></path>
                <path d="M64.606,20.154 C59.472,8.02 47.64,0.178 34.464,0.178 C30.112,0.178 25.872,1.028 21.862,2.704 C20.138,3.422 18.7,4.414 17.312,5.376 C16.848,5.696 16.384,6.016 15.91,6.324 C14.984,6.928 14.72,8.166 15.324,9.092 C15.928,10.018 17.164,10.282 18.09,9.68 C18.594,9.352 19.09,9.01 19.586,8.668 C20.862,7.788 22.066,6.954 23.404,6.396 C26.924,4.926 30.646,4.18 34.464,4.18 C46.03,4.18 56.416,11.062 60.922,21.716 C63.292,27.318 64.59,31.92 65.01,36.198 C65.11,37.228 65.98,38 66.998,38 C67.062,38 67.128,37.996 67.194,37.99 C68.294,37.882 69.098,36.904 68.99,35.804 C68.532,31.114 67.138,26.138 64.606,20.154 Z" id="Shape"></path>
                <path d="M5.012,32.756 C5.24,24.312 7.588,18.17 12.404,13.424 C13.19,12.648 13.2,11.382 12.424,10.596 C11.648,9.81 10.382,9.8 9.594,10.576 C3.996,16.094 1.268,23.108 1.012,32.646 L1.012,32.648 C0.86,38.268 1.518,43.326 3.08,48.57 C3.342,49.44 4.138,50 5,50 C5.19,50 5.382,49.972 5.572,49.916 C6.63,49.602 7.234,48.488 6.918,47.43 C5.478,42.602 4.874,37.94 5.012,32.756 Z" id="Shape"></path>
                <path d="M60.758,32.378 C60.372,29.968 59.83,27.758 59.104,25.62 C55.792,15.858 45.158,7.634 35.4,7.286 C31.662,7.148 28.028,7.812 24.592,9.244 C15.096,13.206 8.904,22.406 8.818,32.68 C8.796,35.104 9.122,37.522 9.788,39.872 C10.136,41.106 10.466,42.316 10.644,43.536 C11.066,46.42 11.176,51.484 11,59.958 C10.978,61.062 11.854,61.976 12.958,62 C12.972,62 12.986,62 13,62 C14.084,62 14.976,61.13 15,60.042 C15.18,51.338 15.058,46.07 14.602,42.96 C14.39,41.502 14.008,40.096 13.636,38.784 C13.074,36.802 12.8,34.76 12.818,32.718 C12.892,24.046 18.118,16.282 26.134,12.938 C29.034,11.728 32.09,11.158 35.26,11.284 C43.358,11.574 52.544,18.728 55.32,26.908 C55.972,28.832 56.46,30.83 56.812,33.018 C56.812,33.018 56.812,33.02 56.812,33.02 C57.518,37.404 57.356,42.518 57.134,49.594 L57,53.946 C56.97,55.05 57.84,55.97 58.944,56 C58.962,56 58.982,56 59,56 C60.08,56 60.968,55.14 60.998,54.054 L61.128,49.718 C61.358,42.418 61.522,37.144 60.756,32.38 C60.758,32.38 60.758,32.38 60.758,32.378 Z" id="Shape"></path>
                <path d="M53.542,32.314 C53.084,29.946 52.432,27.776 51.544,25.68 C48.496,18.474 42.156,14 35,14 C33.66,14 32.32,14.144 31.022,14.432 C29.942,14.67 29.262,15.736 29.5,16.816 C29.738,17.894 30.802,18.564 31.884,18.338 C32.9,18.114 33.948,18 35,18 C40.522,18 45.45,21.54 47.86,27.238 C48.636,29.074 49.21,30.982 49.612,33.072 C49.612,33.074 49.612,33.076 49.612,33.078 C50.528,37.828 51.514,45.174 50.998,59.93 C50.96,61.036 51.824,61.962 52.928,61.998 C52.954,62 52.978,62 53,62 C54.072,62 54.96,61.15 54.998,60.07 C55.41,48.242 54.96,39.684 53.54,32.32 C53.542,32.318 53.542,32.316 53.542,32.314 Z" id="Shape"></path>
                <path d="M20.818,37.97 C20.356,36.258 20.146,34.504 20.194,32.76 C20.194,32.758 20.194,32.758 20.194,32.756 C20.32,28.364 22.236,22.384 26.15,19.636 C27.054,19.002 27.272,17.754 26.638,16.85 C26.004,15.946 24.758,15.724 23.852,16.362 C18.782,19.92 16.354,27.102 16.196,32.642 C16.196,32.644 16.196,32.646 16.196,32.648 C16.136,34.782 16.392,36.924 16.952,39.002 C16.978,39.102 17.022,39.244 17.084,39.436 C19.148,45.956 19.266,56.354 19,63.93 C18.962,65.034 19.826,65.962 20.93,65.998 C20.954,66 20.978,66 21,66 C22.072,66 22.96,65.15 22.998,64.07 C23.398,52.594 22.692,43.898 20.896,38.228 L20.818,37.97 Z" id="Shape"></path>
                <path d="M47,58.458 L47,58.01 C47.006,56.906 46.118,56.006 45.012,55.998 C45.008,55.998 45.004,55.998 45,55.998 C43.902,55.998 43.006,56.884 43,57.986 L43,58.456 C43,59.124 43.01,59.712 43.02,60.292 C43.028,60.836 43.038,61.374 43.038,61.996 C43.038,63.102 43.934,63.982 45.038,63.982 C46.142,63.982 47.038,63.072 47.038,61.966 C47.038,61.35 47.03,60.792 47.02,60.226 C47.008,59.67 47,59.102 47,58.458 Z" id="Shape"></path>
                <path d="M45.034,32.184 C44.554,30.388 44.128,29.386 43.924,28.904 C42.314,25.096 38.6,22.634 34.464,22.634 C33.1,22.634 31.768,22.902 30.506,23.426 C26.782,24.978 24.306,28.598 24.196,32.644 C24.158,34.004 24.388,35.336 24.858,36.55 C25.336,38 27.69,46.224 27.002,65.926 C26.964,67.03 27.828,67.958 28.932,67.994 C28.954,68 28.978,68 29,68 C30.072,68 30.96,67.15 30.998,66.07 C31.692,46.196 29.38,37.492 28.608,35.164 C28.31,34.392 28.17,33.582 28.192,32.756 C28.26,30.28 29.772,28.068 32.044,27.12 C32.816,26.798 33.628,26.636 34.462,26.636 C36.988,26.636 39.254,28.138 40.24,30.466 C40.408,30.864 40.76,31.69 41.166,33.216 C41.166,33.216 41.166,33.218 41.166,33.218 C41.968,36.216 42.972,41.884 43.202,51.864 C43.226,52.954 44.118,53.82 45.2,53.82 C45.216,53.82 45.232,53.82 45.246,53.82 C46.35,53.794 47.224,52.878 47.2,51.776 C47.012,43.566 46.262,36.794 45.032,32.19 L45.034,32.184 Z" id="Shape"></path>
            </g>
        </g>
    </g>
</svg>
              </div>
              <div class="website-feature-title">"Two factor authentication"</div>
              <div class="siimple-paragraph  fg">
                "You can optionally turn on "<strong>"distributed"</strong>" two factor authentication which provides more "<strong>"security"</strong>" when sending transactions."
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>

    <div class="divider"></div>
    <div id="dapps" class="siimple-content siimple-content--large siimple--py-5" align="center">
      <div class="siimple--py-4">
        <div class="siimple-h2 siimple--mb-2 aqua">
          "What can you do with it?"
        </div>
        <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">

          "There are already plenty of proof of work blockchains that just allow currency transactions so our focus is on providing a platform for "<strong>"businesses"</strong>" and "<strong>"developers"</strong>" to build decentralised applications ("<strong>"dApps"</strong>") "
          <strong>"quickly"</strong>" and "<strong>"cheaply"</strong>". We have taken a slightly different approach to other chains in this space by "<strong>"not"</strong>" implementing on chain "<strong>"smart contracts"</strong>"."
        </div>

        <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
          "We believe that there are an "<strong>"endless"</strong>" list of products and projects that don't need the kind of functionality that smart contracts were designed for. Instead we have a "<strong>"plugin-style architecture"</strong>" where you run
          your own node connected to the network and you can implement any logic you need in the node."
        </div>

        <div class="siimple-grid-col--sm-hide siimple-paragraph siimple-paragraph--lead siimple--text-center fg">
          <img class="node-arch" src="/images/node-arch.svg" />
        </div>

        <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
          "We also have the concept of "<strong>"Smart Assets"</strong>" which are similar in a way to smart contracts but only allow mutation of an asset - more about this further down. We also have a full public "<strong>"API"</strong>" so you can write "<strong>"dApps"</strong>" in any language."
        </div>

        <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
          "Apps are on the rise - everybody "<strong>"loves"</strong>" apps especially mobile apps and there is an ever "<strong>"increasing demand"</strong>" for new and interesting apps. We would like to be the "<strong>"go to platform"</strong>" for building the
          new breed of apps - "<strong>"decentralised"</strong>", "<strong>"secure"</strong>" and powered by blockchain technology."
        </div>

      </div>
    </div>

    <div class="divider"></div>
    <div id="smart-assets" class="siimple-content siimple-content--large siimple--py-5" align="center">
      <div class="siimple--py-4">
        <div class="siimple-h2 siimple--mb-2 aqua">
          "Smart Assets"
        </div>
        <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
          "SushiChain will feature a "<strong>"Smart Assets"</strong>" system which you can use to create a "<strong>"mutable asset"</strong>" within the immutable blockchain. An asset can be registered on the blockchain and is defined by a set of "<strong>"properties"</strong>"."
          " These properties can be mutated and have logic applied to them via "<strong>"companion code"</strong>"."
        </div>
        <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
          "Our smart asset language is called "<strong>"Taro"</strong>" which compiles down to bytecode and is stored immutably within the blockchain. Using Taro you can write smart asset code which can mutate an assets properties. Smart assets can be invoked "
          "via "<strong>"transactions"</strong>" and queried via an "<strong>"asset API"</strong>"."
        </div>

        <div class="siimple-grid-col--sm-hide siimple-paragraph siimple-paragraph--lead siimple--text-center fg">
          <img class="node-arch" src="/images/assets.svg"/>
        </div>

        <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
          "Imagine a game asset such as a "<strong>"sword"</strong>" which has a set of "<strong>"properties"</strong>". It has attack and defence points. "<strong>"Companion code"</strong>" could be written to "<strong>"increase"</strong>" the swords attack and defence
          points as the asset levels up within a game. The code would be able to impose minimum and maximum values for the properties or cause related properties to change based on "<strong>"specific state"</strong>" within the asset."
        </div>

      </div>
    </div>

    <div class="divider"></div>
    <div class="siimple-content siimple-content--large siimple--py-5" align="center">
      <div class="siimple--py-4">
        <div class="siimple-h2 siimple--mb-2 aqua">
          "Core Platform"
        </div>
        <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
          "The "<strong>"developer portal"</strong>" will be the main gateway into SushiChain for people who want to build dApps. It will have a wide range of "<strong>"support tools"</strong>", "<strong>"tutorials"</strong>" and other helpful materials. In addition
          to the core feature of building dApps we plan to have several related and "<strong>"supporting components"</strong>"."
        </div>

        <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">

          <div class="leaf">
            <ul>
              <li class="c1">
                <img src="/images/sushi1a.svg"/>
                <h1 class="aqua">"dApp store"</h1>
                <p class="fg">"The "<strong>"dApp store"</strong>" will be a "<strong>"one stop location"</strong>" to find new "<strong>"dApps"</strong>" that people have built on the platform. Similar to other popular app stores it will have reviews, comments and ratings."</p>
              </li>

              <li class="c2">
                <img src="/images/sushi2a.svg"/>
                <h1 class="aqua">"Integrated wallet & chat"</h1>
                <p class="fg">"We will build a "<strong>"cross platform GUI light wallet"</strong>" with a built in "<strong>"secure chat"</strong>" capability. Secure chat will also be able to perform "<strong>"wallet functionality"</strong>" such as checking balances and sending
                  transactions."
                </p>
              </li>

              <li class="c3">
                <img height="48" src="/images/sushi1a.svg"/>
                <h1 class="aqua">"Social media integration"</h1>
                <p>"We will provide a set of "<strong>"integrations"</strong>" for well known social media and chat platforms to provide similar but more "<strong>"restricted"</strong>" wallet functionality within the chat."</p>
              </li>

              <li class="c4">
                <img height="48" src="/images/sushi2a.svg"/>
                <h1 class="aqua">"Crypto exchange"</h1>
                <p>"We intend to build a crypto exchange which in phase 1 will facilitate "<strong>"exchange"</strong>" of "<strong>"custom tokens"</strong>" with the default "<strong>"SUSHI"</strong>" token. In later phases more functionality will be added."</p>
              </li>

              <li class="c5">
                <img height="48" src="/images/sushi1a.svg"/>
                <h1 class="aqua">"Payments hub"</h1>
                <p>"This will provide "<strong>"dApp"</strong>" builders with the capability to add "<strong>"shopping baskets"</strong>", "<strong>"stores"</strong>" and "<strong>"simple payment"</strong>" plugins to their dApp to support paying for things in both the default
                  "<strong>"SUSHI"</strong>" token as well as a "<strong>"custom token"</strong>"."</p>
              </li>

              <li class="c6">
                <img height="48" src="/images/sushi2a.svg"/>
                <h1 class="aqua">"Planned dApps"</h1>
                <p>"The SushiChain team also plan to release several of our own "<strong>"dApps"</strong>" which will run on the SushiChain platform. The first dApp we plan to release is an online competitive "<strong>"trading card game"</strong>" called "<strong>"Guardians of Axum"</strong>"."
                  "You can find more information about our "<strong>"Guardians of Axum"</strong>" game at "<a class="theme-link" href="http://www.guardiansofaxum.com">"www.guardiansofaxum.com"</a>"."</p>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="siimple-grid-col--sm-hide divider"></div>
      <div class="siimple-grid-col--sm-hide siimple-content siimple-content--large siimple--py-5" align="center">
        <div class="siimple--py-4">
          <div class="siimple-h2 siimple--mb-2 aqua">
            "Guardians of Axum"
          </div>
          <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
            "Guardians of Axum is an online competitive turn based "<strong>"trading card game"</strong>". Players buy decks of "<strong>"collectible cards"</strong>" and battle them out against each other in tournaments."
          </div>

          <div class="siimple-paragraph siimple-paragraph--lead fg">
            <img class="siimple--rounded" height="280" width="853" src="/images/goa.jpg"/>
          </div>

          <div class="siimple-paragraph siimple-paragraph--lead fg">
            <img src="/images/card_group.png"/>
          </div>

          <div class="siimple-paragraph siimple-paragraph--lead fg">
            "You can find more information about our "<strong>"Guardians of Axum"</strong>" game at "<a class="theme-link" href="http://www.guardiansofaxum.com">"www.guardiansofaxum.com"</a>"."
          </div>

        </div>
      </div>

      <div class="divider"></div>
      <div id="team" class="siimple-content siimple-content--large" align="center">
        <div>
          <div class="siimple-h2 siimple--mb-2 aqua">
            "Team"
          </div>
          <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
            "The team behind SushiChain consists of "<strong>"highly experienced professional developers"</strong>" who have spent "<strong>"decades"</strong>" working for high profile blue chip clients in the financial and banking sectors.
            The team is distributed across United Kingdom, USA, Australia and Israel"
          </div>

          <div class="siimple-grid">
            <div class="siimple-grid-row">
              <TeamMember
                name="Kingsley Hendrickse"
                role="Founder & Lead developer"
                image="/images/kingsley.png"
                description="Highly skilled developer with decades of experience. Expert in Blockchain technology and also loves
                to eat Sushi - which is one of the main reasons he loves working on SushiChain!
                "
              />

              <TeamMember
                name="John Feras"
                role="Core developer"
                image="/images/jferas.png"
                description="Software development professional with 40 years of experience in the fields of mobile applications, cable TV, compiler/interpreter design and implementation, and data security."
              />
            </div>


            <div class="siimple-grid-row">
              <TeamMember
                name="Raymond Barlow"
                role="Core developer"
                image="/images/raymond.png"
                description="Raymond is a polyglot developer who loves technology and looks forward to what it will do for society."
              />

              <TeamMember
                name="Kostas Mamalis"
                role="Core developer"
                image="/images/kostas.png"
                description="A versatile Dev with AWS skills and passionate about Ethereum, Solidity and generally Blockchain. Admittedly, quite partial to Sushi too."
              />
            </div>

            <div class="siimple-grid-row">

            <TeamMember
              name="Chris Watson"
              role="Core developer"
              image="/images/watson.png"
              description="Chris is a designer and developer with a passion for open source software and sushi."
            />

              <TeamMember
                name="Bar Hofesh"
                role="Security advisor"
                image="/images/bar.png"
                description="A cyber security veteran with more than a decade of experience acting as a Security Officer, Researcher, Hacker, Developer and Software architect."
              />
            </div>

          </div>


        </div>
      </div>

      <div class="siimple-grid-col--sm-hide divider"></div>
      <div id="roadmap" class="siimple-grid-col--sm-hide siimple-content siimple-content--large siimple--py-5" align="center">
        <div class="siimple--py-4">
          <div class="siimple-h2 siimple--mb-2 aqua">
            "Roadmap"
          </div>

          <div align="center" class="siimple-paragraph siimple-paragraph--lead fg">
            <img src="/images/Roadmap.svg"/>
          </div>

        </div>
      </div>

      <div class="divider"></div>
      <div id="specification" class="siimple-content siimple-content--large siimple--py-5" align="center">
        <div class="siimple--py-4">
          <div class="siimple-h2 siimple--mb-2 aqua">
            "Coin Specification"
          </div>
          <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
            "Each miner that is mining against a node which mints a new block receives a "<strong>"prorated"</strong>" amount of SUSHI based on their "<strong>"contribution"</strong>" to finding hashes. The total block reward is "<strong>"0.5 SUSHI"</strong>" from
            which miners and the node itself receive their rewards."
          </div>

          <div class="siimple-paragraph siimple-paragraph--lead siimple--text-justify fg">
            "The "<strong>"block spacing"</strong>" is determined using a custom algorithm that ensures a new block is minted between "<strong>"10"</strong>" and "<strong>"40"</strong>" seconds. Initially the block spacing is calculated on a per block basis until"
            <strong>" 720 blocks"</strong>" are reached after which the spacing is determined by the "<strong>"average elapsed time"</strong>" across the 720 blocks."
          </div>

          <div class="siimple-paragraph siimple-paragraph--lead fg">
            <div class="siimple-table spec siimple-table--border">
              <div class="siimple-table-header">
                <div class="siimple-table-row">
                  <div class="siimple-table-cell spec-row">"Coin name"</div>
                  <div class="siimple-table-cell spec-val">"Sushi"</div>
                </div>
              </div>
              <div class="siimple-table-body">
                <div class="siimple-table-row">
                  <div class="siimple-table-cell spec-row"><b>"Coin ticker"</b></div>
                  <div class="siimple-table-cell spec-val">"SUSHI"</div>
                </div>
                <div class="siimple-table-row">
                  <div class="siimple-table-cell spec-row"><b>"Consensus"</b></div>
                  <div class="siimple-table-cell spec-val">"PoW"</div>
                </div>
                <div class="siimple-table-row">
                  <div class="siimple-table-cell spec-row"><b>"Block reward"</b></div>
                  <div class="siimple-table-cell spec-val">"0.5 SUSHI"</div>
                </div>
                <div class="siimple-table-row">
                  <div class="siimple-table-cell spec-row"><b>"Miner reward"</b></div>
                  <div class="siimple-table-cell spec-val">"Prorated on contribution"</div>
                </div>
                <div class="siimple-table-row">
                  <div class="siimple-table-cell spec-row"><b>"Block spacing"</b></div>
                  <div class="siimple-table-cell spec-val">"10 to 40 seconds"</div>
                </div>
                <div class="siimple-table-row">
                  <div class="siimple-table-cell spec-row"><b>"Pre-mine"</b></div>
                  <div class="siimple-table-cell spec-val">"2,000,000 SUSHI (10%)"</div>
                </div>
                <div class="siimple-table-row">
                  <div class="siimple-table-cell spec-row"><b>"Total supply"</b></div>
                  <div class="siimple-table-cell spec-val">"20,000,000 SUSHI"</div>
                </div>
                <div class="siimple-table-row">
                  <div class="siimple-table-cell spec-row"><b>"Maturity"</b></div>
                  <div class="siimple-table-cell spec-val">"20 Blocks"</div>
                </div>
                <div class="siimple-table-row">
                  <div class="siimple-table-cell spec-row"><b>"Minimum txn fee"</b></div>
                  <div class="siimple-table-cell spec-val">"0.0001 SUSHI"</div>
                </div>
                <div class="siimple-table-row">
                  <div class="siimple-table-cell spec-row"><b>"PoW mining algorithm"</b></div>
                  <div class="siimple-table-cell spec-val">"Argon2d"</div>
                </div>
                <div class="siimple-table-row">
                  <div class="siimple-table-cell spec-row"><b>"Port"</b></div>
                  <div class="siimple-table-cell spec-val">"3000"</div>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>

    </div>
    <Footer/>
  </div>
</div>
  }
}
