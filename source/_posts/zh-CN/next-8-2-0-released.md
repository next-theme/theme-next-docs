---
title: NexT 8.2.0 Released
date: 2021-01-01 02:10:00
---

## 💥 Breaking Changes

- Remove Valine ([6c94cfb](https://github.com/next-theme/hexo-theme-next/commit/6c94cfb45fd8958c78e3532b32efdfb03efafc54))
- Use Hexo integrated nunjucks renderer ([589fc87](https://github.com/next-theme/hexo-theme-next/commit/589fc8721e5a8ec51eabfee115f606da925e0849))
- Remove swiftype ([f1aa098](https://github.com/next-theme/hexo-theme-next/commit/f1aa09877360f9e2a9e471b41bac22c34936c8dd))
```diff
-# Swiftype Search API Key
-swiftype_key:
```
- Remove baidu_push and disable_baidu_transformation ([d65b03c](https://github.com/next-theme/hexo-theme-next/commit/d65b03c3e134d422ff7156995f6807c72584dd12))
```diff
-# Disable Baidu transformation on mobile devices.
-disable_baidu_transformation: false

-# Enable baidu push so that the blog will push the url to baidu automatically which is very helpful for SEO.
-baidu_push: false
```
- Remove cnzz ([1dd1c71](https://github.com/next-theme/hexo-theme-next/commit/1dd1c71fdde61e8af7eaeb153d51a1506581408d))
```diff
-# CNZZ count
-cnzz_siteid:
```

## 🌟 New Features

- Support Cloudflare Web Analytics ([12a7328](https://github.com/next-theme/hexo-theme-next/commit/12a7328f3f1e113f5ee864dbf4a26116d486ded7))
```diff
+# Cloudflare Web Analytics
+# See: https://www.cloudflare.com/web-analytics/
+cloudflare_analytics:
```

## ⭐ Features

- New option mathjax.tags ([ff3b957](https://github.com/next-theme/hexo-theme-next/commit/ff3b9571c0779c0ba583ee650c6fa647e3f6fef8))
```diff
math:
  ...
  mathjax:
    enable: false
+    # Available values: none | ams | all
+    tags: none
```

## 🐞 Bug Fixes

- Fix not loading disqusjs ([#150](https://github.com/next-theme/hexo-theme-next/pull/150))

## 🛠 Improvements

- Code style update ([20002f2](https://github.com/next-theme/hexo-theme-next/commit/20002f2d2a757df5fcc26c3557f0080ff788eaaf))
- Fix redundant values in shorthand properties ([37ac8da](https://github.com/next-theme/hexo-theme-next/commit/37ac8dac9fe79443127a5d899aecaaf09e67b117))
- Remove the style of span.exturl ([8b3cd82](https://github.com/next-theme/hexo-theme-next/commit/8b3cd82c0d53595b9230a610b45a0884d736afaa))
- Refactor getQueryParameters ([e627bcb](https://github.com/next-theme/hexo-theme-next/commit/e627bcb2cbcddfc969f5ba8007e2f10ade9ae79b))
- Fix illegal character in query ([d3dc791](https://github.com/next-theme/hexo-theme-next/commit/d3dc791145d4a8c2665fd26c9b1672963410d17b))
- Set `role="button"` ([b99c7cb](https://github.com/next-theme/hexo-theme-next/commit/b99c7cbdb46a32df62496a43fb4f25754e2fb0f3))
- Simplify the `.comments` element ([d6f7c51](https://github.com/next-theme/hexo-theme-next/commit/d6f7c51f6c13882986b1f51a2f673aa89bbd6d25))

## 🌀 External Changes

- Migrate from probot/stale to GitHub Actions ([68fb198](https://github.com/next-theme/hexo-theme-next/commit/68fb198dcdeb2ac33c316d901d95c6e34822de4c))
- Update dependency eslint to v7.16.0 ([#152](https://github.com/next-theme/hexo-theme-next/pull/152))
- Update dependency husky to v4.3.6 ([#155](https://github.com/next-theme/hexo-theme-next/pull/155))
- Update dependency js-yaml to v3.14.1 ([#156](https://github.com/next-theme/hexo-theme-next/pull/156))
- Update dependency @next-theme/eslint-config to v0.0.2 ([#159](https://github.com/next-theme/hexo-theme-next/pull/159))
- Update actions/setup-node action to v2 ([#161](https://github.com/next-theme/hexo-theme-next/pull/161))
- Update dependency hexo to v5.3.0 ([#163](https://github.com/next-theme/hexo-theme-next/pull/163))
- Bump peaceiris/actions-label-commenter to 1.9.0 ([#165](https://github.com/next-theme/hexo-theme-next/pull/165))

## 📖 Documentation

- Update docs ([8f56e35](https://github.com/next-theme/hexo-theme-next/commit/8f56e35f44f42572c536decdee9587e814478b6c))
- Update docs ([ce0569c](https://github.com/next-theme/hexo-theme-next/commit/ce0569cfa3c86e0e3e0add469934a2f75031851a))
- Update docs ([5e8876d](https://github.com/next-theme/hexo-theme-next/commit/5e8876d5779e7be35738b47eeeb305c0d71db2f6))

## 🌍 Localization

- New Crowdin updates ([#160](https://github.com/next-theme/hexo-theme-next/pull/160))

***

For full changes, see the [comparison between v8.1.0 and v8.2.0](https://github.com/next-theme/hexo-theme-next/compare/v8.1.0...v8.2.0)

[Detailed changes for NexT v8.2.0](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.2.0)
