---
title: NexT 7.6.0 Released
date: 2019-12-01 09:30:19
---

## 💥 Breaking Changes

### Remove rss button ([#1291](https://github.com/theme-next/hexo-theme-next/pull/1291))

```diff
-# hexo-generator-feed required for rss support. Leave rss as blank to use site's feed link.
-# Set rss to false to disable feed link. Set rss to specific value if you have burned your feed already.
-rss:
...
# Social Links
# Usage: `Key: permalink || icon`
# Key is the link label showing to end users.
# Value before `||` delimiter is the target permalink, value after `||` delimiter is the name of Font Awesome icon.
social:
...
-  #VK Group: https://vk.com/yourname || vk
...
+  #RSS: /atom.xml || rss
```
### Remove cheers and auto_excerpt ([#1284](https://github.com/theme-next/hexo-theme-next/pull/1284))

```diff
-# Automatically excerpt (Not recommend).
-# Use <!-- more --> in the post to control excerpt accurately.
-auto_excerpt:
-  enable: false
-  length: 150
...
-# Enable \"cheers\" for archive page.
-cheers: true
```
### Drop NodeJs 8 support & Require NodeJs >= 10 ([#1269](https://github.com/theme-next/hexo-theme-next/pull/1269))

### Refactor front-matter: make it has the same key as the configuration file ([#1211](https://github.com/theme-next/hexo-theme-next/pull/1211))

In **post front-matter**:

```diff
toc:
  enable: true
  number: false
  max_depth: 3
reward_settings:
  enable: true
  comment: Donate comment here.
quicklink:
  enable: true
  delay: true
  timeout: 3000
  priority: true

# Some deprecated
-  toc_max_depth: 4
-  toc_number: true
-  reward: true
-  quicklink: true
```

In theme's **_config.yml**:

```diff
quicklink:
  # Home page and archive page can be controlled through home and archive options below.
-  home: true
-  archive: true
+  # This configuration item is independent of `enable`.
+  home: false
+  archive: false
```

## ⭐ Features

- Set inject default extname from file's extname ([#1281](https://github.com/theme-next/hexo-theme-next/pull/1281))
- Adjust copy-button style ([#1277](https://github.com/theme-next/hexo-theme-next/pull/1277))
- Remove include-raw tag ([#1268](https://github.com/theme-next/hexo-theme-next/pull/1268))

## 🐞 Bug Fixes

- Allow decoding post link ([#1247](https://github.com/theme-next/hexo-theme-next/pull/1247))

## 🛠 Improvements

- Make author image optional ([#1263](https://github.com/theme-next/hexo-theme-next/pull/1263))
- Update CDN URLs ([#1252](https://github.com/theme-next/hexo-theme-next/pull/1252))

## 🌍 Localization

- New Crowdin translations ([#1073](https://github.com/theme-next/hexo-theme-next/pull/1073))
- New Crowdin translations ([#1151](https://github.com/theme-next/hexo-theme-next/pull/1151))

***

For full changes, see the [comparison between v7.5.0 and v7.6.0](https://github.com/theme-next/hexo-theme-next/compare/v7.5.0...v7.6.0)

[Detailed changes for NexT v7.6.0](https://github.com/theme-next/hexo-theme-next/releases/tag/v7.6.0)
