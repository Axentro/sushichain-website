record Page.State {
  ready : Bool
}
component Home {

  state : Page.State { ready = false }

  fun scrollOnLoad() : Void {
    `(()=>{
      try {
       var loc = window.location.hash
       var id = loc.substr(1);
       var donate = document.getElementById(id);
        zenscroll.to(donate, 400);
      } catch (err) {

      }
    })()
    `
  }

  fun componentDidMount : Void {
        do {
          AssetLoader.loadScript("https://code.jquery.com/jquery-3.3.1.min.js")
          AssetLoader.unloadAllStyles()
          AssetLoader.loadScript("/dist/js/zenscroll-min.js")
          AssetLoader.loadStyle("/dist/css/style.min.css")
          AssetLoader.loadScript("https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.4/TweenMax.min.js")
          AssetLoader.loadScript("/dist/js/mirai.min.js")


          next { state | ready = true}
            scrollOnLoad()
      }
    }

  style autoWidth {
    width:auto;
  }

  fun render : Html {
    if(state.ready){
    <div class="wrapper">

          <header class="header" role="banner">
              <div class="container">
                  <div class="row">
                      <picture>
                          <source media="(min-width: 800px)" srcset="assets/images/logo.svg"/>
                          <img::autoWidth src="assets/images/logo-white.svg" alt="Flowers"/>
                      </picture>
                      <nav class="nav-primary">
                          <a href="#home"><{"Home"}></a>
                          <a href="#about"><{"About"}></a>
                          <a href="#team"><{"Team"}></a>
                          <a href="#contact"><{"Contact"}></a>
                          <a href="http://blog.sushichain.io/" target="_blank"><{"Blog"}></a>
                          <a href="/roadmap"><{"Roadmap"}></a>
                          <a href="/donations"><{"Donations"}></a>
                      </nav>

                      <div class="mobile-trigger">
                          <span></span>
                      </div>
                  </div>
              </div>
          </header>

          <main id="main" role="main">

              <div class="container">

                  <section class="sc__hero">

                      <div class="sc__hero--conveyor">
                          <img src="assets/images/conveyor.svg" alt="" />

                          <div class="maki">
                              <div id="maki--1" class="maki--green"></div>
                              <div id="maki--2" class="maki--red"></div>
                              <div id="maki--3" class="maki--green"></div>
                              <div id="maki--4" class="maki--red"></div>
                          </div>
                      </div>

                      <div class="sc__hero--people">
                          <img class="sc__hero--people__customer" src="assets/images/customer.svg" alt="Sushi Customer" />
                          <img class="sc__hero--people__itamae" src="assets/images/itamae.svg" alt="Itamae" />
                      </div>

                      <div class="sc__hero--overlay"></div>

                  </section>

                  <section id="home" class="sc__home">
                      <div class="row">
                          <div class="column column-m-12 column-t-5">
                              <span><{"Blockchain"}></span>
                              <h1><{"Decentralized applications with off-chain smart contracts"}></h1>
                              <p><{"SushiChain is an open source blockchain platform developed from scratch using the Crystal programming language. The core technology takes inspiration mostly from Bitcoin and Ethereum."}></p>
                              <p><{"SushiChain aims to provide developers with a platform to build complex decentralized applications using simple and easy to use tools."}></p>
                          </div>
                      </div>
                  </section>

                  <section id="about" class="sc__about">
                      <div class="row row--end">
                          <div class="column colum-m-12 column-t-5">
                              <span><{"About"}></span>
                              <h2><{"Why Sushi Chain"}></h2>
                              <p><{"The name SushiChain comes from our collective love of Sushi and a reminder of our Japanese roots."}></p>
                              <p><{"We believe we are the first blockchain platform to empower developers to create amazing decentralized apps with simplicity and ease. dApps that run in browers and on mobile phones."}></p>
                          </div>
                      </div>
                  </section>

                  <section id="features" class="sc__features">
                      <div class="row row--center">
                          <div class="column column-m12 column-t-8">
                              <span><{"Features"}></span>
                              <h2><{"What problems does it solve"}></h2>
                              <ul class="features">
                                  <li>
                                      <h3><{"Decentralized applications with off-chain smart contracts"}></h3>
                                      <p><{"We think embedding code into the blockchain is still a bit risky and there are so many ways to build great decentralized applications without using embedded smart contracts."}></p>
                                  </li>
                                  <li>
                                      <h3><{"Built-in human readable addresses"}></h3>
                                      <p><{"Optionally create your own human readable address to make sending and receiving coins much easier. These can be bought and sold within the blockchain as well"}></p>
                                  </li>
                                  <li>
                                      <h3><{"CPU only mining"}></h3>
                                      <p><{"We want to give everyone a chance to participate in our blockchain using consumer grade equipment. We don't want to restrict it only to people who can afford to buy custom mining rigs."}></p>
                                  </li>
                                  <li>
                                      <h3><{"Two Factor Auth"}></h3>
                                      <p><{"Optionally secure your transactions right at the blockchain level. This also makes any wallet much more secure and increases the overall level of security for users."}></p>
                                  </li>
                              </ul>
                          </div>
                      </div>
                  </section>

                  <section id="team" class="sc__team">
                      <div class="row row--center">
                          <div class="column column-m-12 column-t-8">
                              <span><{"Team"}></span>
                              <h2><{"Who is Sushi Chain"}></h2>
                              <p><{"SushiChain was founded at the start of 2018. The team is organically growing as required. Meet the core members!"}></p>

                              <div class="row row--justified team__members">
                                  <div class="column column-m-12 column-t-6">
                                      <img src="assets/images/taichiro2.png" alt="Taichiro Suzuki" />
                                      <h3><{"Taichiro Suzuki"}></h3>
                                      <span><{"Founder/Core Developer"}></span>
                                      <p><{"Taichiro Suzuki is the founder of SushiChain. He is a backend software engineer. He has merged 3 things he really likes - Sushi, Blockchain and Crystal. That's a SushiChain."}></p>
                                  </div>

                                  <div class="column column-m-12 column-t-6">
                                      <img src="assets/images/kingsley2.png" alt="Kingsley Hendrickse" />
                                      <h3><{"Kingsley Hendrickse"}></h3>
                                      <span><{"Co-Creator/Core Developer"}></span>
                                      <p><{"Kingsley is an agile software developer and technology enthusiast. He is very interested in blockchain and cryptocurrency technologies. He also loves to eat Sushi - which is one of the main reasons he loves working on SushiChain!"}></p>
                                  </div>
                              </div>

                              <div class="row row--justified team__members">
                                  <div class="column column-m-12 column-t-6">
                                      <img src="assets/images/minesh2.png" alt="Minesh Patel" />
                                      <h3><{"Minesh Patel"}></h3>
                                      <span><{"Product Manager"}></span>
                                      <p><{"Minesh is an agile business analyst with a passion for solving problems through technology. Takes ideas from conception to launch. Excited about how Blockchain will reinvigorate the internet as we know it. Often found savouring sashimi!"}></p>
                                  </div>
                              </div>

                          </div>
                      </div>
                  </section>

                  <section id="contact" class="sc__contact">
                      <div class="row row--center">
                          <div class="column column-m-12 column-t-8">
                              <span><{"Join the discussion"}></span>
                              <h2><{"Contact Us"}></h2>
                              <p><{"Join our Slack Channel to get involved or follow us on Social Media"}></p>
                              <a href="https://bit.ly/2HJBu1z" class="button"><{"Join Our Slack Channel"}></a>
                              <ul class="social">
                                  <li class="github"><a href="https://github.com/sushichain"><{"Github"}></a></li>
                                  <li class="telegram"><a href="https://t.me/joinchat/Inebcg83C4ccxydPkzTdSw"><{"Telegram"}></a></li>
                                  <li class="discord"><a href="https://discord.gg/qBqfJPv"><{"Discord"}></a></li>
                                  <li class="gitter"><a href="https://gitter.im/SushiChain/Lobby"><{"Gitter"}></a></li>
                                  <li class="twitter"><a href="https://www.twitter.com/sushichainhq"><{"Twitter"}></a></li>
                              </ul>
                          </div>
                      </div>
                  </section>

              </div>

          </main>
          <footer class="site-footer" role="contentinfo">

              <div class="site-footer__bottom">
                  <div class="container">

                      <div class="row">

                          <div class="legal column column-m-12 column-d-6">
                              <p><{"© SushiChain 2018. All Rights Reserved."}></p>
                          </div>

                          <div class="site-by column column-m-12 column-d-6">
                              <p><a href="https://www.thelonelypixel.co.uk"><{"Freelance Web Designer"}></a><{"The Lonely Pixel"}>
                              </p>
                          </div>

                      </div>

                  </div>

              </div>
          </footer>

          <div class="offcanvas">
              <div class="row row--collapse row--middle row--justified">
                  <div class="column column-m-12-nest">
                      <nav class="nav-mobile">
                          <ul>
                              <li><a href="#home"><{"Home"}></a></li>
                              <li><a href="#about"><{"About"}></a></li>
                              <li><a href="#team"><{"Team"}></a></li>
                              <li><a href="#contact"><{"Contact"}></a></li>
                              <li><a href="http://blog.sushichain.io/" target="_blank"><{"Blog"}></a></li>
                              <li><a href="/roadmap"><{"Roadmap"}></a></li>
                              <li><a href="/donations"><{"Donations"}></a></li>
                          </ul>
                      </nav>
                  </div>
              </div>
          </div>

      </div>
    } else {
      <div/>
    }
  }
}
