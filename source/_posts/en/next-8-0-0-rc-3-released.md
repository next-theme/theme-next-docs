---
title: NexT 8.0.0-rc.3 Released
date: 2020-06-01 03:33:43
---

## 💥 Breaking Changes

- Fix darkmode tag-cloud color ([cbcd3f0](https://github.com/next-theme/hexo-theme-next/commit/cbcd3f04abfbc15c82f1cf430eca15591015fadc))
```diff
# TagCloud settings for tags page.
tagcloud:
-  # All values below are same as default, change them by yourself.
  min: 12 # Minimum font size in px
  max: 30 # Maximum font size in px
-  start: "#ccc" # Start color (hex, rgba, hsla or color keywords)
-  end: "#111" # End color (hex, rgba, hsla or color keywords)
-  amount: 200 # Amount of tags, change it if you have more than 200 tags
+  amount: 200 # Total amount of tags
+  orderby: name # Order of tags
+  order: 1 # Sort order
```
- Update Valine CDN URL ([390058e](https://github.com/next-theme/hexo-theme-next/commit/390058e8a118f08a62e70350d0b6fcbab1f33c53))
```diff
valine:
  ...
-  notify: false # Mail notifier
-  verify: false # Verification code
```

## 🐞 Bug Fixes

- Some minor fixes ([bf3666f](https://github.com/next-theme/hexo-theme-next/commit/bf3666fd19ac45053dc79ad1e4a53cfe94c60966))
- Fix darkmode pagination & badge style ([721e5b9](https://github.com/next-theme/hexo-theme-next/commit/721e5b9bd405c6311abd82d40e141ec1ca49dd58))
- Fix figcaption text overflow ([4be820a](https://github.com/next-theme/hexo-theme-next/commit/4be820a49f193e95c647c831353c6489ebee829d))
- Fix pandoc rendering error ([17502da](https://github.com/next-theme/hexo-theme-next/commit/17502dacf4b38ba3ef3dd21852e4d05f12e6a01a))
- Fix json filter ([4013450](https://github.com/next-theme/hexo-theme-next/commit/401345040333e2975d415b3a6b2058f25369bd43))
- Decode TOC link ([0d2b3af](https://github.com/next-theme/hexo-theme-next/commit/0d2b3af50b3b597fb3d0ecd6a6ffdfbf6b92745b))

## 🛠 Improvements

- Optimize copy-btn & post-edit icon ([73dff7c](https://github.com/next-theme/hexo-theme-next/commit/73dff7cb8577ae1fa06a64779495efe4d86ecff5))
- Run lebab ([74fa9ec](https://github.com/next-theme/hexo-theme-next/commit/74fa9ecc05f9b88c582f451d9beb4d92f9843a38))
- Optimize link-grid ([ade4f44](https://github.com/next-theme/hexo-theme-next/commit/ade4f44faa40abb5ed5eb56d30dc21fc3e60f20b))

## 🌀 External Changes

- Update dependency eslint to v7.1.0 ([#11](https://github.com/next-theme/hexo-theme-next/pull/11))
- Update dependency js-yaml to v3.14.0 ([#10](https://github.com/next-theme/hexo-theme-next/pull/10))

## 📖 Documentation

- Update docs for i18n ([36808b9](https://github.com/next-theme/hexo-theme-next/commit/36808b95ea694cfae34f01e1925cef786fb2a94e))

## 🌍 Localization

- New Crowdin translations ([#8](https://github.com/next-theme/hexo-theme-next/pull/8))

***

For full changes, see the [comparison between v8.0.0-rc.2 and v8.0.0-rc.3](https://github.com/next-theme/hexo-theme-next/compare/v8.0.0-rc.2...v8.0.0-rc.3)

[Detailed changes for NexT v8.0.0-rc.3](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.0.0-rc.3)
