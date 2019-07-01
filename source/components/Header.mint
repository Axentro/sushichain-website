component Header {
    property full : String = "true"
    
    fun renderFull : Html {
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
    }

    fun renderPartial : Html {
        <div class="siimple-navbar theme-navbar siimple-navbar--large">
            <img class="siimple-brand" src="/images/sc5_animated.svg"/>

            <a class="siimple-navbar-item siimple--float-right siimple--display-sm-none" href="/">
                "Home"
            </a>
        </div>
    }

    fun render : Html {
        if (full == "true") {
            renderFull()
        } else {
            renderPartial()
        }
    }
}