const CACHE = '4dd2af2a93a55383e0d44592815b02561dd9697f5a16c490fbd09fe0dadc70b6';
const RUNTIME = 'runtime';
const PRECACHE_URLS = ['/icon-76x76.png',
'/icon-192x192.png',
'/icon-32x32.png',
'/sushichain_whitepaper_v.0.0.2.pdf',
'/icon-120x120.png',
'/icon-256x256.png',
'/favicon.ico',
'/index.html',
'/css/theme.css',
'/css/main.css',
'/css/siimple.css.map',
'/css/siimple.css',
'/css/siimple-icons.min.css',
'/css/siimple-icons.css',
'/css/siimple-icons.css.map',
'/css/siimple-colors.min.css',
'/css/siimple.min.css',
'/icon-57x57.png',
'/images/raymond.png',
'/images/jferas.png',
'/images/conveyor.svg',
'/images/kostas.png',
'/images/sushi1a.svg',
'/images/sushi3.svg',
'/images/sushi2.svg',
'/images/sushi1.svg',
'/images/two-factor.svg',
'/images/sc5_animated.svg',
'/images/wallet.svg',
'/images/goa.jpg',
'/images/cpu.svg',
'/images/Roadmap.svg',
'/images/assets.svg',
'/images/siimple-icons.svg',
'/images/kings.jpeg',
'/images/watson.png',
'/images/sushichain-card.png',
'/images/sc5.svg',
'/images/distributed.svg',
'/images/kingsley.png',
'/images/node-arch.svg',
'/images/sushi2a.svg',
'/images/bar.png',
'/images/card_group.png',
'/js/animations.js',
'/icon-180x180.png',
'/icon-72x72.png',
'/icon-36x36.png',
'/icon-96x96.png',
'/icon-152x152.png',
'/index.js',
'/icon-48x48.png',
'/manifest.json',
'/icon-512x512.png',
'/sitemap.xml',
'/robots.txt',
'/icon-144x144.png',
'/fonts/siimple-icons.font.woff',
'/fonts/siimple-icons.font.svg',
'/fonts/siimple-icons.font.ttf',
'/fonts/siimple-icons.font.woff2',
'/icon-167x167.png',
'/icon-196x196.png',
'/icon-128x128.png',
'/icon-16x16.png'];

// On install precache all static resources
self.addEventListener('install', event => {
  event.waitUntil(
    caches
      .open(CACHE)
      .then(cache =>  {
        const promises =
          PRECACHE_URLS.map((url) =>
            cache
              .add(url)
              .catch(error => console.log(`Could not cache: ${url} - ${error}!`))
          )

        return Promise.all(promises)
      })
      .then(self.skipWaiting())
  );
});

// On activate remove all unused caches
self.addEventListener('activate', function(event) {
  event.waitUntil(
    caches.keys().then(cacheNames => {
      return cacheNames.filter(cacheName => cacheName !== CACHE);
    }).then(cachesToDelete => {
      return Promise.all(cachesToDelete.map(cacheToDelete => {
        return caches.delete(cacheToDelete);
      }));
    }).then(() => self.clients.claim())
  );
});

self.addEventListener('fetch', event => {
  const url = event.request.url
  const origin = self.location.origin
  const isSameOrigin = url.startsWith(origin)
  let response = null

  // If we are on the same origin
  if (isSameOrigin) {
    // resolve the path
    const path = url.slice(origin.length)

    // Try to get the response from the cache if not available fall back to
    // the "index.html" file.
    response =
      caches
        .match(event.request)
        .then(cachedResponse => cachedResponse || caches.match("/index.html"))
  } else {
    response = fetch(event.request)
  }

  event.respondWith(response)
});