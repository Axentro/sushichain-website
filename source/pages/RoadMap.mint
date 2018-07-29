component Roadmap.Version {
  property children : Array(Html) = []
  property version : String = ""

  style title {
    border-bottom: 2px solid #EEE;
    padding-bottom: 5px;
    margin-bottom: 15px;

    /* font-family: Amiko; */

    /* margin-top: 40px; */
    font-size: 24px;
    color: #222;
  }

  style features {
    & > * + * {
      margin-top: 20px;
    }
  }

  fun render : Html {
    <div>
      <div::title>
        <{ version }>
      </div>

      <div::features>
        <{ children }>
      </div>
    </div>
  }
}

component RoadMap {
  state : Page.State { ready = false }

  fun componentDidMount : Void {
    do {
      AssetLoader.loadScript(
        "https://code.jquery.com/jquery-3.3.1.min.js")

      AssetLoader.unloadAllStyles()
      AssetLoader.loadMisc()
      next { state | ready = true }
    }
  }

  get checkmark : Html {
    <svg
      xmlns="http://www.w3.org/2000/svg"
      width="24"
      height="24"
      viewBox="0 0 24 24">

      <path
        d={
          "M20.285 2l-11.285 11.567-5.286-5.011-3.714 3.716 9 8.728" \
          " 15-15.285z"
        }/>

    </svg>
  }

  get diamond : Html {
    <svg
      xmlns="http://www.w3.org/2000/svg"
      viewBox="0 0 24 24"
      fillRule="evenodd"
      clipRule="evenodd"
      height="24"
      width="24">

      <path
        d={
          "M12 0l-12 12.001 12 11.999 12.001-11.999-12.001-12.001zm" \
          "-9.171 12.001l9.171-9.172 9.172 9.172-9.172 9.172-9.171-" \
          "9.172z"
        }/>

    </svg>
  }

  fun render : Html {
    if (state.ready) {
      <MiscLayout name="roadmap">
        <div class="content">
          <h2 class="content-head is-center">
            <{ "Roadmap" }>
          </h2>

          <p class="is-center">
            <{
              "This page contains planned and shipped high level feaure" \
              "s of the SushiChain platform."
            }>
          </p>
        </div>

        <div class="content">
          <div class="pure-g">
            <div class="pure-u-1-24 pure-u-md-1-24"/>

            <div class="pure-u-22-24 pure-u-md-22-24">
              <Roadmap.Version version="Planned Features">
                <Pages.Roadmap.Feature
                  name="Two factor authentication"
                  icon={diamond}
                  description={
                    "Provides google auth/authy optional two factor authentic" \
                    "ation for transactions"
                  }/>
                  <Pages.Roadmap.Feature
                    name="Proof of Stake Consensus for dApps"
                    icon={diamond}
                    description={
                      "To enable super fast dApps we will implement PoS only for dApp transactions while the rest of the blockchain operates on PoW"
                    }/>
                    <Pages.Roadmap.Feature
                      name="Yescrypt PoW algorithm"
                      icon={diamond}
                      description={
                        "To retain our CPU only mining promise we need to implement Yescrypt in place of the current Scrypt-N algorithm"
                      }/>
                      <Pages.Roadmap.Feature
                        name="Hierarchical Deterministic Wallet"
                        icon={diamond}
                        description={
                          "Implement HD Wallet for better privacy and security"
                        }/>
              </Roadmap.Version>

              <br/>
              <br/>

              <Roadmap.Version version="Implemented Features">
                <Pages.Roadmap.Feature
                  description="The core blockchain components"
                  name="Blockchain Basics"
                  icon={checkmark}>

                  <Pages.Roadmap.Feature
                    name="Non-Deterministic Wallet"
                    description="Provides ECDSA based private/public key pair wallet"/>

                  <Pages.Roadmap.Feature
                    name="Blocks, Transactions, Senders, Recipients"
                    description="The core building blocks of the chain"/>

                  <Pages.Roadmap.Feature
                    name="Proof of Work Consensus"
                    description="Scrypt-N based PoW consensus algorithm"/>

                </Pages.Roadmap.Feature>

                <Pages.Roadmap.Feature
                  description="Core components build as internal dApps"
                  name="Internal dApps"
                  icon={checkmark}>

                  <Pages.Roadmap.Feature
                    name="UTXO"
                    description="Provides unspent transaction handling"/>

                  <Pages.Roadmap.Feature
                    name="Transactions"
                    description="Validation and handling of transactions"/>

                  <Pages.Roadmap.Feature
                    name="Blockchain info"
                    description={
                      "Indices, node info and general info about the authoritat" \
                      "ive chain"
                    }/>

                  <Pages.Roadmap.Feature
                    name="Tokens"
                    description="Creation and management of user defined custom tokens"/>

                  <Pages.Roadmap.Feature
                    name="Rejected transactions"
                    description="Handling of rejected transactions"/>

                    <Pages.Roadmap.Feature
                      name="Fees"
                      description="Transaction fees system"/>

                  <Pages.Roadmap.Feature
                    name="Human readable addresses (SCARS)"
                    description="Buy, sell, trade human readable addresses"/>

                </Pages.Roadmap.Feature>

                <Pages.Roadmap.Feature
                  name="Peer-to-Peer Node System"
                  icon={checkmark}
                  description="Blockchain network nodes with peer-to-peer chain syncing"/>

                  <Pages.Roadmap.Feature
                    name="Public API"
                    icon={checkmark}
                    description="Public JSON REST API (with documentation) running on nodes and the testnet"/>

                  <Pages.Roadmap.Feature
                    name="Command line clients"
                    icon={checkmark}
                    description={
                      "Command line clients for the blockchain, node and miner"
                    }>

                <Pages.Roadmap.Feature
                  name="Sushi Client (CLI)"
                  description={
                    "Sushi main user command line client - provides all opera" \
                    "tions for interacting with the blockchain"
                  }/>

                <Pages.Roadmap.Feature
                  name="Miner (CLI)"
                  description="Command line Miner"/>

                <Pages.Roadmap.Feature
                  name="Sushi node (CLI)"
                  description="Command line blockchain network node"/>

                </Pages.Roadmap.Feature>

                <Pages.Roadmap.Feature
                  description="External decentralized apps system"
                  name="External dApps"
                  icon={checkmark}>

                  <Pages.Roadmap.Feature
                    name="Crystal dApps"
                    description="Plugin style architecture for writing dApps in Crystal"/>

                  <Pages.Roadmap.Feature
                    name="Real-time communications"
                    description="Real-time peer-to-peer communications system - capable of token transfer and messaging"/>

                </Pages.Roadmap.Feature>

              </Roadmap.Version>
            </div>

            <div class="pure-u-1-24 pure-u-md-1-24"/>
          </div>
        </div>
      </MiscLayout>
    } else {
      <Loading/>
    }
  }
}
