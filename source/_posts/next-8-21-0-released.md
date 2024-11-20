---
title: NexT 8.21.0 Released
date: 2024-09-21 03:09:49
---

<!-- Release notes generated using configuration in .github/release.yml at v8.21.0 -->

## What's Changed
### 💥 Breaking Changes
* Remove local_search.trigger option ([659e82b](https://github.com/next-theme/hexo-theme-next/commit/659e82b4528507ff65ae39b10f8fd4b49589cdec))
```diff
local_search:
-  # If auto, trigger search by changing input.
-  # If manual, trigger search by pressing enter key or search button.
-  trigger: auto
```
### 🌟 New Features
* Trigger Search Event when user presses Ctrl + K by @penxian in https://github.com/next-theme/hexo-theme-next/pull/804
### ⭐ Features
* Refactor Algolia search: drop instantsearch.js by @stevenjoezhang in https://github.com/next-theme/hexo-theme-next/pull/795
* Support dark mode for note tags in modern style by @sghuang19 in https://github.com/next-theme/hexo-theme-next/pull/828
* Add dark color scheme for text selection by @sghuang19 in https://github.com/next-theme/hexo-theme-next/pull/829
### 🐞 Bug Fixes
* Fix mermaid folding ([6742735](https://github.com/next-theme/hexo-theme-next/commit/6742735db4ae77a73d7068fe1936217b5368cd31))
* Fix .menu-item-active::after ([07acb27](https://github.com/next-theme/hexo-theme-next/commit/07acb27cc94db66fb081d14a54ebf93faaef438f))
* Fix mermaid copy button ([5c02480](https://github.com/next-theme/hexo-theme-next/commit/5c024800e6b484f844783ad379758e3e57f7a4b3))
* Fix empty innerText ([ddecbe3](https://github.com/next-theme/hexo-theme-next/commit/ddecbe36283bf7be2634ab1f83abaff0ac9f791e))
* Fix muse.js 404 ([0708dc7](https://github.com/next-theme/hexo-theme-next/commit/0708dc7e18cc06a80204c0d173799dabcc45a084))
### 🛠 Improvements
* Prefer object-shorthand ([524c369](https://github.com/next-theme/hexo-theme-next/commit/524c3693f21b7fd3d3ee75e7e614afe7217a0d7e))
* Better use of parseInt and Number ([17259c0](https://github.com/next-theme/hexo-theme-next/commit/17259c001830688e7cfa775a3abff9519183a8a3))
* Specify transition-property ([da8db69](https://github.com/next-theme/hexo-theme-next/commit/da8db69422bdbbc39f871b3ad79c60bad5800756))
* Use `Array.flat` in motion.js ([783b6ff](https://github.com/next-theme/hexo-theme-next/commit/783b6ffe8c69ce34429e8620ebc03a5efeac92c0))
### 🌀 External Changes
* Update dependency stylelint to v16.9.0 by @renovate in https://github.com/next-theme/hexo-theme-next/pull/792
* Update dependency eslint to v9.10.0 - autoclosed by @renovate in https://github.com/next-theme/hexo-theme-next/pull/800
* Update dependency c8 to v10 by @renovate in https://github.com/next-theme/hexo-theme-next/pull/807
* Update dependency mocha to v10.7.3 by @renovate in https://github.com/next-theme/hexo-theme-next/pull/814
* Update dependency hexo to v7.3.0 by @renovate in https://github.com/next-theme/hexo-theme-next/pull/821
* Update dependency chai to v4.5.0 by @renovate in https://github.com/next-theme/hexo-theme-next/pull/825
### 📖 Documentation
* Update pull request template ([263841b](https://github.com/next-theme/hexo-theme-next/commit/263841bd7abafb1afdc7eb84a68a3dad8555c9d9))
### 🌍 Localization
* New Crowdin updates by @stevenjoezhang in https://github.com/next-theme/hexo-theme-next/pull/796

## New Contributors
* @penxian made their first contribution in https://github.com/next-theme/hexo-theme-next/pull/804
* @sghuang19 made their first contribution in https://github.com/next-theme/hexo-theme-next/pull/828

**Full Changelog**: https://github.com/next-theme/hexo-theme-next/compare/v8.20.0...v8.21.0

[Detailed changes for NexT v8.21.0](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.21.0)
