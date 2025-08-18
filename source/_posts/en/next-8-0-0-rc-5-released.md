---
title: NexT 8.0.0-rc.5 Released
date: 2020-08-01 01:09:14
---

## 💥 Breaking Changes

- Replace Velocity.js with Animate.css ([#41](https://github.com/next-theme/hexo-theme-next/pull/41))

## 🌟 New Features

- Unit testing using Mocha and Chai ([#59](https://github.com/next-theme/hexo-theme-next/pull/59))

## ⭐ Features

- Remove console reminder ([533fea7](https://github.com/next-theme/hexo-theme-next/commit/533fea7777f725063e3e45de29a2ea10aa7ad24a))
```diff
-# Console reminder if new version released.
-reminder: false
```
- Include additional themes for prism ([2e4e1bc](https://github.com/next-theme/hexo-theme-next/commit/2e4e1bc16fa3cd311e9e7f9e25cdf228c7819e0b))
- Extract hexo-next-three to plugins ([31298d0](https://github.com/next-theme/hexo-theme-next/commit/31298d003e4e30cbf6d904eacca9d99a171742cc))
```diff
-# JavaScript 3D library.
-# Dependencies: https://github.com/next-theme/theme-next-three
-three:
-  enable: false
-  three_waves: false
-  canvas_lines: false
-  canvas_sphere: false

vendors:
  ...
-  # JavaScript 3D library
-  # three: //unpkg.com/three@0/build/three.min.js
-  # three_waves: //cdn.jsdelivr.net/gh/next-theme/theme-next-three@1/three-waves.min.js
-  # canvas_lines: //cdn.jsdelivr.net/gh/next-theme/theme-next-three@1/canvas_lines.min.js
-  # canvas_sphere: //cdn.jsdelivr.net/gh/next-theme/theme-next-three@1/canvas_sphere.min.js
-  three:
-  three_waves:
-  canvas_lines:
-  canvas_sphere:
```
- New plugin `@next-theme/plugins` ([cb05848](https://github.com/next-theme/hexo-theme-next/commit/cb05848d11c71ee51fb2bbf743c227659556d5b1))
- Support `event.description` in schedule page ([e1beb71](https://github.com/next-theme/hexo-theme-next/commit/e1beb71f6ee5eef40e1e05a715d43e2766377951))

## 🐞 Bug Fixes

- The search button is invisible when search service was enabled but menu was empty ([#42](https://github.com/next-theme/hexo-theme-next/pull/42))
- Fix id conflict with markdown headerlink ([7f3e4b1](https://github.com/next-theme/hexo-theme-next/commit/7f3e4b16c13e5df3eb224820eff024ed84817d08))
- Fix sidebar animation issue ([79bb4c9](https://github.com/next-theme/hexo-theme-next/commit/79bb4c9ebecd89bdeec52be13cc805e177066ec0))
- Fix null value of `.search-input` selector ([dca900a](https://github.com/next-theme/hexo-theme-next/commit/dca900aa7aad2aba1f176091c50aee0febb21e4b))
- Disable cache when language_switcher is enabled ([5d521ca](https://github.com/next-theme/hexo-theme-next/commit/5d521cab59a1456937cd897980b0c161a1ad8907))
- Reset animation-fill-mode ([582ce74](https://github.com/next-theme/hexo-theme-next/commit/582ce74e93631fb8f97ca33c45933ca2698a7c0f))
- Use `@require` instead of `@import` ([33723be](https://github.com/next-theme/hexo-theme-next/commit/33723be6ad6419b562d0f92583d9e6ffcbb84e8c))
- Fix mermaid tag ([10b577c](https://github.com/next-theme/hexo-theme-next/commit/10b577cc7f88cd2e361afc25e465fe062ecdddac))

## 🛠 Improvements

- Optimize language selector ([#52](https://github.com/next-theme/hexo-theme-next/pull/52))
- Update CDN URL ([#61](https://github.com/next-theme/hexo-theme-next/pull/61))
- Optimize local search ([#64](https://github.com/next-theme/hexo-theme-next/pull/64))
- Rename json to safedump ([1905443](https://github.com/next-theme/hexo-theme-next/commit/19054432babdd440c76abc6e3e1e2490417c59cd))
- Refactor site-nav animation: drop Velocity ([659347c](https://github.com/next-theme/hexo-theme-next/commit/659347cc1e6ff00eea00eceeff3bfd1677450350))
- Optimize sidebar-panel animation ([1b00414](https://github.com/next-theme/hexo-theme-next/commit/1b004149876d83edf5461b16c24799306a20ca01))
- Use `classList.replace` ([e9addc9](https://github.com/next-theme/hexo-theme-next/commit/e9addc90ca7f3002602224f59472b671bcd98ef4))
- Use Math.hypot & destructure ([96406e7](https://github.com/next-theme/hexo-theme-next/commit/96406e79ae2bcbf366fdf2194cbc82fb58c6cb63))
- Run lebab ([924318a](https://github.com/next-theme/hexo-theme-next/commit/924318a19d78e70a99cd3da7928b76b3905df5e0))
- Update changyan comments ([bfa9a75](https://github.com/next-theme/hexo-theme-next/commit/bfa9a754407e51e30b7f356127e885790e829b81))
- Refactor next_font helper & NexT.utils.loadComments ([e953cbf](https://github.com/next-theme/hexo-theme-next/commit/e953cbf4b0d31c7c1f317ca48fcf096010f92168))
- Optimize toggle-line ([c954bc2](https://github.com/next-theme/hexo-theme-next/commit/c954bc29c9e95ae22a4029e7e90d820cad142c98))
- Refactor tags ([b6c1aba](https://github.com/next-theme/hexo-theme-next/commit/b6c1aba4d59ba2c7f2ef3fdba8106dbf2a2fb329))
- Optimize post-gallery style ([5883e29](https://github.com/next-theme/hexo-theme-next/commit/5883e29ad324d6540486f7cee689dab10d88dde0))
- Refactor group-pictures using flex layout ([fc68fbe](https://github.com/next-theme/hexo-theme-next/commit/fc68fbe9a32261a51220b6a936e5fb421343a342))

## 🌀 External Changes

- Update dependency eslint to v7.5.0 ([#43](https://github.com/next-theme/hexo-theme-next/pull/43))
- Update dependency eslint-config-theme-next to v1.2.1 ([#53](https://github.com/next-theme/hexo-theme-next/pull/53))
- Update dependency mocha to v8.1.0 ([#68](https://github.com/next-theme/hexo-theme-next/pull/68))
- Install husky ([78da9ab](https://github.com/next-theme/hexo-theme-next/commit/78da9ab59058e7e59e981f13cc1718c94d2f7337))

## 📖 Documentation

- Update for Hexo 5.0 ([#58](https://github.com/next-theme/hexo-theme-next/pull/58))
- New Valine options ([#62](https://github.com/next-theme/hexo-theme-next/pull/62))
- Update README.md ([b8b3f17](https://github.com/next-theme/hexo-theme-next/commit/b8b3f17aefc58e5ebcae04caa55921e6b4d81020))
- Remove Required Node version ([f148857](https://github.com/next-theme/hexo-theme-next/commit/f1488575e1d5dee0f515722134540f217203ebd5))

***

For full changes, see the [comparison between v8.0.0-rc.4 and v8.0.0-rc.5](https://github.com/next-theme/hexo-theme-next/compare/v8.0.0-rc.4...v8.0.0-rc.5)

[Detailed changes for NexT v8.0.0-rc.5](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.0.0-rc.5)
