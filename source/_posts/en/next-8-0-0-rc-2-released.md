---
title: NexT 8.0.0-rc.2 Released
date: 2020-05-09 02:13:37
---

## 💥 Breaking Changes

- Allow empty menu items ([a527bfd](https://github.com/next-theme/hexo-theme-next/commit/a527bfdf11d558ffd958cd0a0b05416fb1caaa33))
```diff
-override: false

menu:
-  home: / || fa fa-home
+  #home: / || fa fa-home
  #about: /about/ || fa fa-user
  #tags: /tags/ || fa fa-tags
  #categories: /categories/ || fa fa-th
-  archives: /archives/ || fa fa-archive
+  #archives: /archives/ || fa fa-archive
  #schedule: /schedule/ || fa fa-calendar
  #sitemap: /sitemap.xml || fa fa-sitemap
  #commonweal: /404/ || fa fa-heartbeat
```
- Update options of Valine ([6e6fc74](https://github.com/next-theme/hexo-theme-next/commit/6e6fc74ae98a0ef7aa3aeaba3e330ef735698b7b))
```diff
valine:
-  appid: # Your leancloud application appid
-  appkey: # Your leancloud application appkey
+  appId: # Your leancloud application appid
+  appKey: # Your leancloud application appkey
  ...
-  guest_info: nick,mail,link # Custom comment header
+  meta: # Custom comment header
+    - nick
+    - mail
+    - link
```
- Support using highlight.js ([9fdaba2](https://github.com/next-theme/hexo-theme-next/commit/9fdaba295a2c6c707a7d96d331762ab571b89c1a))
- Allow different highlight style for dark mode ([03e50d0](https://github.com/next-theme/hexo-theme-next/commit/03e50d01ac59d136d8d9ccda187d898c0e424332))
```diff
codeblock:
  ...
-  # Available values: normal | night | night eighties | night blue | night bright | solarized | solarized dark | galactic
-  # See: https://github.com/chriskempson/tomorrow-theme
-  highlight_theme: normal
+  # See: https://github.com/highlightjs/highlight.js/tree/master/src/styles
+  theme:
+    light: default
+    dark: dark
```

## 🐞 Bug Fixes

- Fix: bind DOMContentLoaded event on document instead of window ([cd5e541](https://github.com/next-theme/hexo-theme-next/commit/cd5e54193bcbecd47700bf2c98c4d4b2bc735889))
- Fix: bind pjax event on document instead of window ([75695df](https://github.com/next-theme/hexo-theme-next/commit/75695df76a6cafc1958974ee6417a415eb9eb73c))
- Fix tables text align ([00c64cc](https://github.com/next-theme/hexo-theme-next/commit/00c64cce8962c25a0c9ddcf1fe59f932a4caa76c))

## 🛠 Improvements

- Use npm to determine the latest version ([2de50b4](https://github.com/next-theme/hexo-theme-next/commit/2de50b46be88695405b03da9bdc1b9c1c04d6ba8))
- Optimize reward button style ([e61c28d](https://github.com/next-theme/hexo-theme-next/commit/e61c28d0098437bed37c9d9821beda314b44c7f0))
- Remove highlight-container ([9527ef6](https://github.com/next-theme/hexo-theme-next/commit/9527ef6b06bf22ca0b0b63293eecc8000bb5ecab))

## 🌀 External Changes

- Remove canvas_nest ([632768c](https://github.com/next-theme/hexo-theme-next/commit/632768cc1f320ec5eafbb814eb378ca8ad88324f))

## 📖 Documentation

- Update README ([1fd2923](https://github.com/next-theme/hexo-theme-next/commit/1fd29235a6dc040e829fc8006db82741ce9acb35))
- Update docs ([3dcd359](https://github.com/next-theme/hexo-theme-next/commit/3dcd3594d14cf3b15d964f8762f13f948c2f0ad5))

***

For full changes, see the [comparison between v8.0.0-rc.1 and v8.0.0-rc.2](https://github.com/next-theme/hexo-theme-next/compare/v8.0.0-rc.1...v8.0.0-rc.2)

[Detailed changes for NexT v8.0.0-rc.2](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.0.0-rc.2)
