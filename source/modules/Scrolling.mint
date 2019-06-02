module Scrolling {

  fun scrollTo(item : String) : Promise(Never, Void) {
    sequence {
      `(()=>{
        var scroll = new SmoothScroll();
        var anchor = document.querySelector(#{item});
        scroll.animateScroll(anchor, null, {speed: 0});
        })()`
    }
  }

  fun jumpToTop() : Promise(Never, Void) {
    sequence {
      `$('html,body').scrollTop(0);`
    }
  }

}
