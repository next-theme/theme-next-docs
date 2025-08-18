---
title: NexT 8.18.0 Released
date: 2023-08-02 07:57:06
---

<!-- Release notes generated using configuration in .github/release.yml at v8.18.0 -->

## What's Changed
### 💥 Breaking Changes
* Upgrade to fancybox 5 by @stevenjoezhang in https://github.com/next-theme/hexo-theme-next/pull/677
### 🌟 New Features
* Support folding code blocks by @stevenjoezhang in https://github.com/next-theme/hexo-theme-next/pull/679
```diff
codeblock:
+  # Fold code block
+  fold:
+    enable: false
+    height: 500
```
### ⭐ Features
* Remove gitter support ([223ea19](https://github.com/next-theme/hexo-theme-next/commit/223ea199f38eba48fc70c3d28a0a05809948c877))
```diff
-# Gitter is a chat and networking platform.
-# For more information: https://gitter.im
-gitter:
-  enable: false
-  room:
```
* Remove link posts feature ([a24450d](https://github.com/next-theme/hexo-theme-next/commit/a24450d9cfc6a6f7e5f6ddfabd6167fb6c0857d9))
### 🐞 Bug Fixes
* Fix next_url: add new option to decodeURI ([b85201b](https://github.com/next-theme/hexo-theme-next/commit/b85201b9b871ec090274f82d0851285eb6552c43))
### 🛠 Improvements
* Update fa CSS selector ([0624149](https://github.com/next-theme/hexo-theme-next/commit/0624149b055b18fe6a458f940bfe5870fb8f2bc3))
* Create code-container element ([c596155](https://github.com/next-theme/hexo-theme-next/commit/c596155ef956def01a4a739faab6ef16d26ffb36))
### 🌀 External Changes
* Update dependency stylelint to v15 by @renovate in https://github.com/next-theme/hexo-theme-next/pull/611
* Update dependency hexo-renderer-marked to v6.1.1 by @renovate in https://github.com/next-theme/hexo-theme-next/pull/675
* Update dependency eslint to v8.46.0 by @renovate in https://github.com/next-theme/hexo-theme-next/pull/676
* Update dependency c8 to v8.0.1 by @renovate in https://github.com/next-theme/hexo-theme-next/pull/680
* Refactor Pull Request Reminder ([8fd8f92](https://github.com/next-theme/hexo-theme-next/commit/8fd8f9247c51e706290eeb365fb1d0b80f7384a4))
### 📖 Documentation
* Update gitter url ([d3b76a8](https://github.com/next-theme/hexo-theme-next/commit/d3b76a8599e7339e1f9641fe9e4e360dc2895d49))
* Add npm downloads badge ([dc8e5e1](https://github.com/next-theme/hexo-theme-next/commit/dc8e5e17fa9fd433374f0f6746bf317144291687))


**Full Changelog**: https://github.com/next-theme/hexo-theme-next/compare/v8.17.1...v8.18.0

[Detailed changes for NexT v8.18.0](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.18.0)
