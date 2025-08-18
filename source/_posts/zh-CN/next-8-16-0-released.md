---
title: NexT 8.16.0 Released
date: 2023-05-06 01:57:22
---

<!-- Release notes generated using configuration in .github/release.yml at v8.16.0 -->

## What's Changed
### 🌟 New Features
* Support AddToAny share by @stevenjoezhang in https://github.com/next-theme/hexo-theme-next/pull/633
```diff
+# AddToAny Share. See: https://www.addtoany.com
+addtoany:
+  enable: false
+  buttons:
+    - facebook
+    - twitter
```
### ⭐ Features
* Update umami to use cdn by @LeenHawk in https://github.com/next-theme/hexo-theme-next/pull/638
```diff
# Umami Analytics
# See: https://umami.is/
umami:
  enable: false
  script_url: # https://umami.example.com/script.js
  website_id: # <your website id>
+  host_url: # <your umami site url>
```
* Add new inject point - postBodyStart by @ImSingee in https://github.com/next-theme/hexo-theme-next/pull/646
```diff
# Define custom file paths.
# Create your custom files in site directory `source/_data` and uncomment needed files below.
custom_file_path:
  #head: source/_data/head.njk
  #header: source/_data/header.njk
  #sidebar: source/_data/sidebar.njk
  #postMeta: source/_data/post-meta.njk
+  #postBodyStart: source/_data/post-body-start.njk
  ...
```
### 🐞 Bug Fixes
* Fix header class name conflict with pandoc ([ed4bb2b](https://github.com/next-theme/hexo-theme-next/commit/ed4bb2b413f55ef082309cb49b0e9b73c78c100d))
* Fix figcaption position when mobile_layout_economy enabled ([c8b8456](https://github.com/next-theme/hexo-theme-next/commit/c8b84567cc6ffff6105f152b7c1e98c713293fe4))
### 🌀 External Changes
* Update dependency eslint to v8.40.0 by @renovate in https://github.com/next-theme/hexo-theme-next/pull/636

## New Contributors
* @LeenHawk made their first contribution in https://github.com/next-theme/hexo-theme-next/pull/638
* @ImSingee made their first contribution in https://github.com/next-theme/hexo-theme-next/pull/646

**Full Changelog**: https://github.com/next-theme/hexo-theme-next/compare/v8.15.1...v8.16.0

[Detailed changes for NexT v8.16.0](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.16.0)
