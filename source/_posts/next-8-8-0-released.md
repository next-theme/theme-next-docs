---
title: NexT 8.8.0 Released
date: 2021-10-01 03:52:46
---

## ⭐ Features

- Dark mode support for theme_color ([#378](https://github.com/next-theme/hexo-theme-next/pull/378))
```diff
-# Android Chrome header panel color ($brand-bg / $headband-bg => $black-deep).
-android_chrome_color: #222
+# Browser header panel color.
+theme_color:
+  light: #222
+  dark: #222
```
- Make the nav bar of tabs with long content stick to the top ([#361](https://github.com/next-theme/hexo-theme-next/pull/361))
```diff
tabs:
+  # Make the nav bar of tabs with long content stick to the top.
+  sticky: false
```
- Fix darkmode mermaid theme ([debbe5b](https://github.com/next-theme/hexo-theme-next/commit/debbe5bdc9b523b84071c0e421210b0c620b3d65))
```diff
mermaid:
-  theme: forest
+  theme:
+    light: default
+    dark: dark
```
- Add an option to disable banner ([9a313b2](https://github.com/next-theme/hexo-theme-next/commit/9a313b23c38c545d6b29ca7f7805d0b8857864fd))

## 🐞 Bug Fixes

- Execute unescapeHTML before encoding exturl ([d1bf101](https://github.com/next-theme/hexo-theme-next/commit/d1bf101cc101bff43a536df926bb66b549902cb0))
- Do not restart Pace on every pushState event ([0005c03](https://github.com/next-theme/hexo-theme-next/commit/0005c0367f5695c9762f4d63611989e3830cf247))
- Fix calendar ([53e540b](https://github.com/next-theme/hexo-theme-next/commit/53e540bc3b7f2601cf9abeb086f214e119e58099))

## 🛠 Improvements

- Move local-search.js to hexo-generator-searchdb ([#369](https://github.com/next-theme/hexo-theme-next/pull/369))
- Calculate `--sidebar-wrapper-height` in pure CSS ([#360](https://github.com/next-theme/hexo-theme-next/pull/360))

## 🌀 External Changes

- Update dessant/lock-threads action to v3 ([#380](https://github.com/next-theme/hexo-theme-next/pull/380))
- Update dependency mocha to v9.1.2 ([#379](https://github.com/next-theme/hexo-theme-next/pull/379))

## 📖 Documentation

- Typo fix ([#381](https://github.com/next-theme/hexo-theme-next/pull/381))

***

For full changes, see the [comparison between v8.7.1 and v8.8.0](https://github.com/next-theme/hexo-theme-next/compare/v8.7.1...v8.8.0)

[Detailed changes for NexT v8.8.0](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.8.0)
