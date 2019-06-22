const CACHE = '06551d1d0e74d77229ad89497f883fbe63c932a1fe03643e0157e4fd1f4fee4e';
const RUNTIME = 'runtime';
const PRECACHE_URLS = ['/icon-76x76.png',
'/icon-192x192.png',
'/raymond.png',
'/icon-32x32.png',
'/sushichain_whitepaper_v.0.0.2.pdf',
'/icon-120x120.png',
'/icon-256x256.png',
'/favicon.ico',
'/theme.css',
'/jferas.png',
'/index.html',
'/conveyor.svg',
'/kostas.png',
'/sushi1a.svg',
'/icon-57x57.png',
'/sushi3.svg',
'/icon-180x180.png',
'/sushi2.svg',
'/animations.js',
'/icon-72x72.png',
'/icon-36x36.png',
'/icon-96x96.png',
'/sushi1.svg',
'/two-factor.svg',
'/sc5_animated.svg',
'/wallet.svg',
'/icon-152x152.png',
'/goa.jpg',
'/index.js',
'/cpu.svg',
'/main.css',
'/icon-48x48.png',
'/Roadmap.svg',
'/assets.svg',
'/siimple-icons.svg',
'/siimple.css.map',
'/kings.jpeg',
'/watson.png',
'/siimple.css',
'/sc5.svg',
'/siimple-icons.min.css',
'/manifest.json',
'/icon-512x512.png',
'/distributed.svg',
'/siimple-icons.css',
'/sitemap.xml',
'/siimple-icons.css.map',
'/robots.txt',
'/icon-144x144.png',
'/kingsley.png',
'/node-arch.svg',
'/fonts/siimple-icons.font.woff',
'/fonts/siimple-icons.font.svg',
'/fonts/siimple-icons.font.ttf',
'/fonts/siimple-icons.font.woff2',
'/sushi2a.svg',
'/bar.png',
'/card_group.png',
'/siimple-colors.min.css',
'/icon-167x167.png',
'/icon-196x196.png',
'/siimple.min.css',
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