$(function() {

  var scroll = new SmoothScroll('a[href*="#"]');

  animateConveyor();

  function animateConveyor() {


    TweenMax.to('.wheels', 4, {
      rotation: 360,
      repeat: -1,
      transformOrigin: "50% 50%",
      ease: Linear.easeNone
    })

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

  }
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


});
