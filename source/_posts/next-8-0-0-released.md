---
title: NexT 8.0.0 Released
date: 2020-08-31 16:21:37
---

## ⭐ Features

- Support reprint statement ([#89](https://github.com/next-theme/hexo-theme-next/pull/89))
- Refactor vendors ([#72](https://github.com/next-theme/hexo-theme-next/pull/72))
```diff
vendors:
+  # The default CDN provider of third-party plugins.
+  # Available values: local, jsdelivr, unpkg, cdnjs
+  # Dependencies for `plugins: local`: https://github.com/next-theme/plugins
+  plugins: jsdelivr
```
- Image thumbnails in archive page ([7b91f8e](https://github.com/next-theme/hexo-theme-next/commit/7b91f8ee74ebdb417f2b508962224b3d653ad5ca))
- Rename `per_page` to `every_page` ([a3dcac5](https://github.com/next-theme/hexo-theme-next/commit/a3dcac5f334edddecd3de176175c56d4379a0f21))
```diff
math:
-  per_page: true
+  every_page: false
```

## 🐞 Bug Fixes

- Fix pjax scroll restoration ([#74](https://github.com/next-theme/hexo-theme-next/pull/74))
- Fix .post-title-link position ([#76](https://github.com/next-theme/hexo-theme-next/pull/76))
- Fix darkmode post-gallery image opacity ([04ced15](https://github.com/next-theme/hexo-theme-next/commit/04ced15d8aaaa2925dad8758df7283d35b8dcb07))
- Fix id conflict with markdown headerlink ([523e39e](https://github.com/next-theme/hexo-theme-next/commit/523e39e9d669b79a9cd0fbb823666b80cc656e1a))
- Fix .tabs-comment style ([8d57b6d](https://github.com/next-theme/hexo-theme-next/commit/8d57b6d980696775f41a0fd94f7434a589cbde11))
- Fix mermaid background color ([376d718](https://github.com/next-theme/hexo-theme-next/commit/376d71878ff372226f10a40e87266a7a8283ac7c))
- Fix search result position ([bc89931](https://github.com/next-theme/hexo-theme-next/commit/bc89931452b6c7021aea885617ef5527d78b1def))

## 🛠 Improvements

- Optimize prism: support copy_button ([04da779](https://github.com/next-theme/hexo-theme-next/commit/04da779212bc7647c90ad406c60e6a118a0baed4))
- Refactor layout ([f76c0d8](https://github.com/next-theme/hexo-theme-next/commit/f76c0d8a97910096f8ebe4075bd719b35b1f737c))
- Optimize canonical URL ([219adff](https://github.com/next-theme/hexo-theme-next/commit/219adffe10b40b4f652de1535df4037d0ab2f869))
- Optimize Algolia Search ([92bdb32](https://github.com/next-theme/hexo-theme-next/commit/92bdb32a294d3e16119099832932e7769509bb48))
- Refactor Gemini style ([19160b8](https://github.com/next-theme/hexo-theme-next/commit/19160b8a15c4a2c8e110993e271d285ca603f63f))
- Separate the styles of different schemes ([bdf59f1](https://github.com/next-theme/hexo-theme-next/commit/bdf59f187cad860aae6acb14a5b0ea9aebf2f3d8))
- Refactor post-footer using flex layout ([23d9163](https://github.com/next-theme/hexo-theme-next/commit/23d9163a2dc2a329a6a150d0be3bb528d8fd096d))
- Optimize figcaption style ([90d0a5f](https://github.com/next-theme/hexo-theme-next/commit/90d0a5f966e08dada0d19d15bbbe7359209478e5))
- Optimize box-shadow of .site-brand-container ([402c34e](https://github.com/next-theme/hexo-theme-next/commit/402c34e9bbf14aef95905eb304b2be67cf0e2f9a))
- Optimize the path setting of LiveRe & Valine ([5e1b0d0](https://github.com/next-theme/hexo-theme-next/commit/5e1b0d0e8c0985c4c4bbe3e7370758145f80fa8e))
- Update ICP link ([#96](https://github.com/next-theme/hexo-theme-next/pull/96))
- Uniform hexadecimal color ([#93](https://github.com/next-theme/hexo-theme-next/pull/93))

## 🌀 External Changes

- Use @next-theme/eslint-config ([a96d112](https://github.com/next-theme/hexo-theme-next/commit/a96d1126a9418e5fcf763fc22abc56ba545fde0d))
- CDN settings for Firebase ([ee5b41f](https://github.com/next-theme/hexo-theme-next/commit/ee5b41f41c403832f98f75cdbc5dbb4623d68d0f))
- Update MathJax CDN URL ([09f0f7b](https://github.com/next-theme/hexo-theme-next/commit/09f0f7ba3ddb12db98bd36eb7c08647ed08f55cc))
- Update dependency hexo-renderer-marked to v3.1.0 ([#94](https://github.com/next-theme/hexo-theme-next/pull/94))
- Update dependency hexo to v5.1.1 ([#85](https://github.com/next-theme/hexo-theme-next/pull/85))
- Update dependency mocha to v8.1.3 ([#82](https://github.com/next-theme/hexo-theme-next/pull/82))
- Update dependency eslint to v7.7.0 ([#69](https://github.com/next-theme/hexo-theme-next/pull/69))
- Update _vendors.yml ([7e8458f](https://github.com/next-theme/hexo-theme-next/commit/7e8458fe18d03ccd68f5a39eccb53316786ec0fc))

## 📖 Documentation

- Update docs ([7cd83a4](https://github.com/next-theme/hexo-theme-next/commit/7cd83a4b8c0b4ff0fc3d992b0549600a6442efdc))
- Update docs ([1bbe8f4](https://github.com/next-theme/hexo-theme-next/commit/1bbe8f4101d8eb118b8707456ac535d71a205738))

## 🌍 Localization

- New Crowdin updates ([#91](https://github.com/next-theme/hexo-theme-next/pull/91))

***

For full changes, see the [comparison between v8.0.0-rc.5 and v8.0.0](https://github.com/next-theme/hexo-theme-next/compare/v8.0.0-rc.5...v8.0.0)

[Detailed changes for NexT v8.0.0](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.0.0)
