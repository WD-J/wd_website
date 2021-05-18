'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/app_images/bmi.png": "92cb62090106562274acd0d0ae70fe97",
"assets/app_images/clima.png": "b5f60778d1c2eb226745e84ca6e62f6c",
"assets/app_images/cointicker.png": "4b3eda0ff95869bf277582048d721579",
"assets/app_images/dicee.png": "457e78b4277c9ec8f4787bfc55c64cf3",
"assets/app_images/flashchat.png": "098f005f0507e8db1b421b1ec2ad9b14",
"assets/app_images/JJBA_Statistics.png": "28f06e1bb09809f48d5238686e4f681e",
"assets/app_images/micard.png": "89f97e1c0d7ae745d367ff666cccfc0b",
"assets/app_images/quizzler.png": "fc042ebc4014245cb1e7e2b6e93aaf05",
"assets/app_images/text.png": "20c2852561dd05a123510af34ffe59e5",
"assets/app_images/todoey.png": "547d48f96f7882cb682aaedae9854ecf",
"assets/app_images/wikileaks_news.png": "99f1ffd3b630cd3b889680046c66fb8b",
"assets/app_images/xylophone.png": "5a9b05f0696af70640e68d81f7ebb1f3",
"assets/AssetManifest.json": "b382ef02ce9289608f996b2c1e3e5f17",
"assets/assets/app_images/bmi.png": "92cb62090106562274acd0d0ae70fe97",
"assets/assets/app_images/clima.png": "b5f60778d1c2eb226745e84ca6e62f6c",
"assets/assets/app_images/cointicker.png": "4b3eda0ff95869bf277582048d721579",
"assets/assets/app_images/dicee.png": "457e78b4277c9ec8f4787bfc55c64cf3",
"assets/assets/app_images/flashchat.png": "098f005f0507e8db1b421b1ec2ad9b14",
"assets/assets/app_images/JJBA_Statistics.png": "28f06e1bb09809f48d5238686e4f681e",
"assets/assets/app_images/micard.png": "89f97e1c0d7ae745d367ff666cccfc0b",
"assets/assets/app_images/quizzler.png": "fc042ebc4014245cb1e7e2b6e93aaf05",
"assets/assets/app_images/text.png": "20c2852561dd05a123510af34ffe59e5",
"assets/assets/app_images/todoey.png": "547d48f96f7882cb682aaedae9854ecf",
"assets/assets/app_images/wikileaks_news.png": "99f1ffd3b630cd3b889680046c66fb8b",
"assets/assets/app_images/xylophone.png": "5a9b05f0696af70640e68d81f7ebb1f3",
"assets/assets/images/certificate.jpg": "4adb2a5a918a4c2335c022cea0966dff",
"assets/assets/images/contact.png": "b92927d7f1d1ea5fbee9fabd5b7329e6",
"assets/assets/images/github_logo_white.png": "fa1196e234096f6f7190a7c086267ecd",
"assets/assets/images/graph.png": "240325bee9407e4afcd8aafae4b77c02",
"assets/assets/images/image_of_me.png": "6a5186e818d86676ae1400b7c614946e",
"assets/assets/images/JJBA_Statistics.png": "28f06e1bb09809f48d5238686e4f681e",
"assets/assets/images/pc.png": "e0c2c2befaf6902c9208f69752156903",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/images/certificate.jpg": "4adb2a5a918a4c2335c022cea0966dff",
"assets/images/contact.png": "b92927d7f1d1ea5fbee9fabd5b7329e6",
"assets/images/github_logo_white.png": "fa1196e234096f6f7190a7c086267ecd",
"assets/images/graph.png": "240325bee9407e4afcd8aafae4b77c02",
"assets/images/image_of_me.png": "6a5186e818d86676ae1400b7c614946e",
"assets/images/JJBA_Statistics.png": "28f06e1bb09809f48d5238686e4f681e",
"assets/images/pc.png": "e0c2c2befaf6902c9208f69752156903",
"assets/NOTICES": "a11157f99ec24a321a880ee1651944c1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/web/assets/app_images/bmi.png": "92cb62090106562274acd0d0ae70fe97",
"assets/web/assets/app_images/clima.png": "b5f60778d1c2eb226745e84ca6e62f6c",
"assets/web/assets/app_images/cointicker.png": "4b3eda0ff95869bf277582048d721579",
"assets/web/assets/app_images/dicee.png": "457e78b4277c9ec8f4787bfc55c64cf3",
"assets/web/assets/app_images/flashchat.png": "098f005f0507e8db1b421b1ec2ad9b14",
"assets/web/assets/app_images/JJBA_Statistics.png": "28f06e1bb09809f48d5238686e4f681e",
"assets/web/assets/app_images/micard.png": "89f97e1c0d7ae745d367ff666cccfc0b",
"assets/web/assets/app_images/quizzler.png": "fc042ebc4014245cb1e7e2b6e93aaf05",
"assets/web/assets/app_images/text.png": "20c2852561dd05a123510af34ffe59e5",
"assets/web/assets/app_images/todoey.png": "547d48f96f7882cb682aaedae9854ecf",
"assets/web/assets/app_images/wikileaks_news.png": "99f1ffd3b630cd3b889680046c66fb8b",
"assets/web/assets/app_images/xylophone.png": "5a9b05f0696af70640e68d81f7ebb1f3",
"assets/web/assets/images/certificate.jpg": "4adb2a5a918a4c2335c022cea0966dff",
"assets/web/assets/images/contact.png": "b92927d7f1d1ea5fbee9fabd5b7329e6",
"assets/web/assets/images/github_logo_white.png": "fa1196e234096f6f7190a7c086267ecd",
"assets/web/assets/images/graph.png": "240325bee9407e4afcd8aafae4b77c02",
"assets/web/assets/images/image_of_me.png": "6a5186e818d86676ae1400b7c614946e",
"assets/web/assets/images/JJBA_Statistics.png": "28f06e1bb09809f48d5238686e4f681e",
"assets/web/assets/images/pc.png": "e0c2c2befaf6902c9208f69752156903",
"favicon.png": "6ce64c0d4427f27fc3c1654ec4f5b5f9",
"index.html": "e5ca071ee1a7e6edec49e6682c9a8033",
"/": "e5ca071ee1a7e6edec49e6682c9a8033",
"main.dart.js": "f5c536cb6514b82785587d750d2a183a",
"manifest.json": "4627e04939ba3ef62bbeb40afdc341e4",
"version.json": "ca84656c48ebbf56173935de337d569e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
