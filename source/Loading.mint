component Loading {

  style loading {
    position: fixed;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
  }

  style loadingText {
   position: fixed;
   top: 80%;
   left: 50%;
   transform: translate(-50%, -50%);
   color: darkgray;
  }
  
  fun render : Html {
    <div::loading>
    <img src="/assets/images/loading.gif"/>
    <h3::loadingText><{"Loading"}></h3>
    </div>
  }

}
