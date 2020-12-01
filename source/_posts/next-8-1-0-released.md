---
title: NexT 8.1.0 Released
date: 2020-12-01 02:08:21
---

## 💥 Breaking Changes

- Drop Hexo 4 ([817ef09](https://github.com/next-theme/hexo-theme-next/commit/817ef092ac4abddf85b3b9dfbc3c1617775daea6))
- Hide options of Valine ([a4a1cdc](https://github.com/next-theme/hexo-theme-next/commit/a4a1cdcf2002276783406093a1653b021bdd043e))

## 🌟 New Features

- New `utterances` comment system ([7e49895](https://github.com/next-theme/hexo-theme-next/commit/7e498954705b9e954c2af4b284cc69d5e66341a2))
```diff
+# Utterances
+# For more information: https://utteranc.es
+utterances:
+  enable: false
+  repo: # Github repository name
+  # Available values: pathname | url | title | og:title
+  issue_term: pathname
+  # Available values: github-light | github-dark | preferred-color-scheme | github-dark-orange | icy-dark | dark-blue | photon-dark | boxy-light
+  theme: github-light
```
- New `isso` comment system ([7a4890f](https://github.com/next-theme/hexo-theme-next/commit/7a4890f1653599514fa6f743075ad7c92692451a))
```diff
+# Isso
+# For more information: https://posativ.org/isso/
+isso: # <data_isso>
```

## ⭐ Features

- Feat: Adds an optional `copyright` in a post's front-matter which allows users to change whether to show CC License notices under a post ([#139](https://github.com/next-theme/hexo-theme-next/pull/139))
- Use PDFObject ([29b8636](https://github.com/next-theme/hexo-theme-next/commit/29b86361b7b6ebef1d7233885d1fe88ab86139e8))
- Use Clipboard.writeText ([ab4fd95](https://github.com/next-theme/hexo-theme-next/commit/ab4fd95ab59be04f1c97ba92abb6ce7120be0d4d))

## 🐞 Bug Fixes

- Fix .post-sticky-flag margin ([b376919](https://github.com/next-theme/hexo-theme-next/commit/b3769198ea6bd8af091a43e3c6cc6e314b041ac6))

## 🛠 Improvements

- Optimize sidebar panel animation ([d19109a](https://github.com/next-theme/hexo-theme-next/commit/d19109a7b4a5f661eec22f20a27198b73747b7d0))
- Optimize note tag ([48a9d13](https://github.com/next-theme/hexo-theme-next/commit/48a9d1330c657c1d3d968865ba06234c790508f4))
- Feat add hyperlink support to group-pictures ([#143](https://github.com/next-theme/hexo-theme-next/pull/143))
- Use window size to determine sidebar display, and unify behaviour for margin and dimmer ([#130](https://github.com/next-theme/hexo-theme-next/pull/130))
- Remove extra blank lines ([2eabd8d](https://github.com/next-theme/hexo-theme-next/commit/2eabd8d8542c37ff04b1c4f95e6c99ef4c987101))
- Optimize Firebase ([2dc4983](https://github.com/next-theme/hexo-theme-next/commit/2dc4983a3a74d67239281c7686be03f0173a5a6c))

## 🌀 External Changes

- Update dependency eslint to v7.14.0 ([#135](https://github.com/next-theme/hexo-theme-next/pull/135))
- Update dependency mocha to v8.2.1 ([#132](https://github.com/next-theme/hexo-theme-next/pull/132))
- Update actions/labeler action to v3 ([#133](https://github.com/next-theme/hexo-theme-next/pull/133))

## 📖 Documentation

- Update jsDelivr badge ([4feb12d](https://github.com/next-theme/hexo-theme-next/commit/4feb12d49bdfd4068334a57a2f3134250cab6535))
- Update preview image ([2767b08](https://github.com/next-theme/hexo-theme-next/commit/2767b08d67e0d420f2c3714e05f737e6976d5bf0))
- Update docs ([9445ba9](https://github.com/next-theme/hexo-theme-next/commit/9445ba93afd426abfded1cb1e17a1fd75fc82810))

***

For full changes, see the [comparison between v8.0.2 and v8.1.0](https://github.com/next-theme/hexo-theme-next/compare/v8.0.2...v8.1.0)

[Detailed changes for NexT v8.1.0](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.1.0)
