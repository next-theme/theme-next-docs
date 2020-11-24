---
title: NexT 8.0.0-rc.4 Released
date: 2020-07-01 02:47:15
---

## 💥 Breaking Changes

- Add prism highlight support ([#23](https://github.com/next-theme/hexo-theme-next/pull/23))
```diff
codeblock:
  ...
+  # See: https://github.com/PrismJS/prism/tree/master/themes
+  prism:
+    light: prism
+    dark: prism-dark

vendors:
  ...
+  # Prism
+  # prism: //cdn.jsdelivr.net/npm/prismjs@1/prism.min.js
+  # prism: //cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/prism.min.js
+  prism:
```
- Refactor layout ([#31](https://github.com/next-theme/hexo-theme-next/pull/31))

## 🌟 New Features

- Add noscript-warning ([6159874](https://github.com/next-theme/hexo-theme-next/commit/6159874b40d1b11fe730847b4099e373f8ec3ba9))
- Refactor next_js to support jsdelivr & unpkg ([ae21b8b](https://github.com/next-theme/hexo-theme-next/commit/ae21b8b8e00603dd2690d9cb31f92ddf2bf7647d))
```diff
vendors:
-  # Internal path prefix.
-  _internal: lib
+  # Available values: local, jsdelivr, unpkg
+  internal: local
```

## ⭐ Features

-  Optimize copy-btn: always provide feedback ([c7ea1ab](https://github.com/next-theme/hexo-theme-next/commit/c7ea1abe64de55e2b5039650ece20c0b2b2f733b))
```diff
codeblock:
  copy_button:
-    # Show text copy result.
-    show_result: false
```
- Remove `sidebar.onmobile` option ([5d2f92e](https://github.com/next-theme/hexo-theme-next/commit/5d2f92e6b5a9eb77a338eac082d1896945490bd3))
```diff
sidebar:
-  # Enable sidebar on narrow view (only for Muse | Mist).
-  onmobile: false
```
- Refactor motion ([b39ba18](https://github.com/next-theme/hexo-theme-next/commit/b39ba186d90f1e198de2276ada515cda161918aa))

## 🐞 Bug Fixes

- Some minor fixes ([5f6271d](https://github.com/next-theme/hexo-theme-next/commit/5f6271d4b87e0dd760d56eaf7c36ab4b7702b22d))
- Fix invalid selector ([b0d92b7](https://github.com/next-theme/hexo-theme-next/commit/b0d92b7b6cf632753c4fcca2512e01cf006428df))
- Fix footer & pagination size ([413e975](https://github.com/next-theme/hexo-theme-next/commit/413e9759d15d1ac3bbbf8c88858e0df13866d747))
- Fix the missing `url_for` ([52111f7](https://github.com/next-theme/hexo-theme-next/commit/52111f750a1368cdf879423891d79c42dd1fcda6))
- Fix code highlight when copycode disabled ([3e8b35a](https://github.com/next-theme/hexo-theme-next/commit/3e8b35abf1713ea49b92d296b935e46fcf54ec15))
- Some minor fixes ([b01a4ed](https://github.com/next-theme/hexo-theme-next/commit/b01a4ed7d7ff1489e5d030cc87069d18e1160acd))
- Fix link-grid overflow & darkmode note color ([44ba30e](https://github.com/next-theme/hexo-theme-next/commit/44ba30e367a0be6ff8e793d06fbabcb113e721d1))
- Fix Pisces sidebar width ([b2ae986](https://github.com/next-theme/hexo-theme-next/commit/b2ae986c0ba59f8197782ef62ca13d1d10bccb8d))
- Fix compatibility issue with iOS 10-12 ([6e60221](https://github.com/next-theme/hexo-theme-next/commit/6e602213e7b1fb239cc5f177453025e0740ca5af))

## 🛠 Improvements

- Optimize the behavior of `post_meta` when `use_date_for_updated` is enabled ([241fe98](https://github.com/next-theme/hexo-theme-next/commit/241fe980707667b6cf2bed9bd3a7ad3f771d59af))
- Optimize pagination style ([420095b](https://github.com/next-theme/hexo-theme-next/commit/420095bb6f15bb8cf2bdd6124bf960cd81652589))
- Optimize darkmode code color ([f055e38](https://github.com/next-theme/hexo-theme-next/commit/f055e389d30b5ad28402442178589f6004763d3c))
- Optimize darkmode kbd color ([6d5d471](https://github.com/next-theme/hexo-theme-next/commit/6d5d471424d63c9e78c5d3f0b03a809765c87805))
- Optimize the style of custom-logo and sidebar-inner ([d194052](https://github.com/next-theme/hexo-theme-next/commit/d194052d7e40360f972b81172b379310723cfd09))
- Optimize the style of label tag ([8e080e7](https://github.com/next-theme/hexo-theme-next/commit/8e080e7e275487b06b66d1912f4af7c435a1026e))
- Optimize darkmode medium-zoom style ([e57bf45](https://github.com/next-theme/hexo-theme-next/commit/e57bf4558c7667ca0c1e7f68485d34025d386f59))
- Refactor sidebar motion ([45d6e04](https://github.com/next-theme/hexo-theme-next/commit/45d6e0413dcf396ccea3482ed0291ab3239895d4))
- Optimize algolia-pagination style ([701f628](https://github.com/next-theme/hexo-theme-next/commit/701f628b9a497caaa6c56d913ad4a68b5affccca))
- Optimize header-anchor style ([6bd195a](https://github.com/next-theme/hexo-theme-next/commit/6bd195a9b13454bf7fcac5afddac6cc6e4f76ca6))
- Optimize logo-line animation ([b34b8e5](https://github.com/next-theme/hexo-theme-next/commit/b34b8e5b987bc4673fce0d9a21fd7ca4f93567ec))
- Optimize back-to-top style ([b8e2ce8](https://github.com/next-theme/hexo-theme-next/commit/b8e2ce84cbed09e300ddc08dfd36429aebea81c5))
- Optimize sidebar-dimmer & search-popup animation ([8a5643b](https://github.com/next-theme/hexo-theme-next/commit/8a5643b2203fbff580bc40a0f6c57c9ecf7345d5))
- Optimize Gemini & highlight style ([e01a204](https://github.com/next-theme/hexo-theme-next/commit/e01a2043b7101793cfa8972205b37e30ac7084fe))
- Optimize post-reward style ([3535527](https://github.com/next-theme/hexo-theme-next/commit/35355277f8c786a1d95a6275018a9d3bd0af710a))
- Optimize blockquote-center & post-tags style ([0259b95](https://github.com/next-theme/hexo-theme-next/commit/0259b95123b88fd27bf646202afea5154e514fcd))
- Optimize sidebar-panel animation ([327d8bf](https://github.com/next-theme/hexo-theme-next/commit/327d8bf2be787938a63a1ff8cf8af8fdaa5c7482))
- Optimize header animation ([5b72a1d](https://github.com/next-theme/hexo-theme-next/commit/5b72a1de42bbb7b02ad03b37906dcb1add4116f1))

## 🌀 External Changes

- Update dependency eslint to v7.3.1 ([#21](https://github.com/next-theme/hexo-theme-next/pull/21))
- Update dependency eslint-config-theme-next to v1.2.0 ([#32](https://github.com/next-theme/hexo-theme-next/pull/32))
- Update CDN URL ([b9a822c](https://github.com/next-theme/hexo-theme-next/commit/b9a822c4b7f8879810c6b534dc8a705e36dc41d5))
- Update pjax version ([ee3be0a](https://github.com/next-theme/hexo-theme-next/commit/ee3be0a81a768c75a06fdc9b93b4fc9ae7d8cdf9))

## 📖 Documentation

- Update README.md ([073ddc0](https://github.com/next-theme/hexo-theme-next/commit/073ddc094e03c754dd3b6974ada450faaf1a9f7b))
- Update docs in _config.yml ([ee7d13e](https://github.com/next-theme/hexo-theme-next/commit/ee7d13e307505f6de34f9f3f3c8d9da94883f376))
- Update docs ([3aa2a21](https://github.com/next-theme/hexo-theme-next/commit/3aa2a210682f275eaa8d33a394b0fa9cf14a25e4))
- Update ISSUE_TEMPLATE ([40e32d1](https://github.com/next-theme/hexo-theme-next/commit/40e32d18210d3f308755949974bbe7f109d6c92f))
- Update README.md ([7d25c16](https://github.com/next-theme/hexo-theme-next/commit/7d25c16d21d5ed0784cc56b8481fbb0b036b2259))

## 🌍 Localization

- New Crowdin translations ([#22](https://github.com/next-theme/hexo-theme-next/pull/22))

***

For full changes, see the [comparison between v8.0.0-rc.3 and v8.0.0-rc.4](https://github.com/next-theme/hexo-theme-next/compare/v8.0.0-rc.3...v8.0.0-rc.4)

[Detailed changes for NexT v8.0.0-rc.4](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.0.0-rc.4)
