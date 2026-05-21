// SpiritPet Service Worker v7 — network-first para HTML, cache-first para assets
const CACHE = 'spiritpet-v7';
const PRECACHE = [
  './',
  './index.html',
  './manifest.json',
  './icon-192.png',
  './icon-512.png',
  './icon-192-maskable.png',
  './icon-512-maskable.png'
];

self.addEventListener('install', e => {
  e.waitUntil(
    caches.open(CACHE).then(c => c.addAll(PRECACHE).catch(err => {
      console.warn('SW: some assets failed to precache', err);
    })).then(() => self.skipWaiting())
  );
});

self.addEventListener('activate', e => {
  e.waitUntil(
    caches.keys().then(keys =>
      Promise.all(keys.filter(k => k !== CACHE).map(k => caches.delete(k)))
    ).then(() => self.clients.claim())
  );
});

function isHTMLRequest(req) {
  if (req.mode === 'navigate') return true;
  const accept = req.headers.get('accept') || '';
  if (accept.includes('text/html')) return true;
  const url = new URL(req.url);
  if (url.pathname.endsWith('.html') || url.pathname === '/' || url.pathname.endsWith('/')) return true;
  return false;
}

async function networkFirst(req, timeoutMs = 3500) {
  const cache = await caches.open(CACHE);
  try {
    const networkPromise = fetch(req);
    const timeoutPromise = new Promise((_, reject) => setTimeout(() => reject(new Error('timeout')), timeoutMs));
    const res = await Promise.race([networkPromise, timeoutPromise]);
    if (res && res.ok) {
      cache.put(req, res.clone()).catch(() => {});
      return res;
    }
    throw new Error('bad response');
  } catch (e) {
    const cached = await cache.match(req);
    if (cached) return cached;
    const fallback = await cache.match('./index.html');
    if (fallback) return fallback;
    throw e;
  }
}

async function staleWhileRevalidate(req) {
  const cache = await caches.open(CACHE);
  const cached = await cache.match(req);
  const networkPromise = fetch(req).then(res => {
    if (res && res.ok) cache.put(req, res.clone()).catch(() => {});
    return res;
  }).catch(() => null);
  return cached || networkPromise || fetch(req);
}

self.addEventListener('fetch', e => {
  if (e.request.method !== 'GET') return;
  const url = new URL(e.request.url);
  if (url.origin !== self.location.origin) return; // dejar pasar externos
  if (isHTMLRequest(e.request)) {
    e.respondWith(networkFirst(e.request));
  } else {
    e.respondWith(staleWhileRevalidate(e.request));
  }
});

self.addEventListener('message', e => {
  if (e.data === 'skipWaiting') self.skipWaiting();
});
