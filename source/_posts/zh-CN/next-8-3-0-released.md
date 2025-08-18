---
title: NexT 8.3.0 Released
date: 2021-04-01 07:36:21
---

## ⭐ Features

- New reversed reading progress bar option ([#221](https://github.com/next-theme/hexo-theme-next/pull/221))
```diff
# Reading progress bar
reading_progress:
  enable: false
+  # Available values: left | right
+  start_at: left
  # Available values: top | bottom
  position: top
+  reversed: false
  color: "[#37](https://github.com/next-theme/hexo-theme-next/pull/37)c6c0"
  height: 3px
```

## 🐞 Bug Fixes

- Fix mermaid preformatted issue ([9ef3a63](https://github.com/next-theme/hexo-theme-next/commit/9ef3a635522aad42b6eaeb1dc75c6b1ed9975a11))

## 🛠 Improvements

- Use CSS transitions to animate `site-nav` ([#223](https://github.com/next-theme/hexo-theme-next/pull/223))

## 🌀 External Changes

- Update dependency eslint to v7.23.0 ([#230](https://github.com/next-theme/hexo-theme-next/pull/230))
- Update dependency mocha to v8.3.2 ([#219](https://github.com/next-theme/hexo-theme-next/pull/219))
- Update dependency chai to v4.3.4 ([#216](https://github.com/next-theme/hexo-theme-next/pull/216))

## 🌍 Localization

- New Crowdin updates ([#238](https://github.com/next-theme/hexo-theme-next/pull/238))
- Add aria-label for buttons and selects ([#234](https://github.com/next-theme/hexo-theme-next/pull/234))

***

For full changes, see the [comparison between v8.2.2 and v8.3.0](https://github.com/next-theme/hexo-theme-next/compare/v8.2.2...v8.3.0)

[Detailed changes for NexT v8.3.0](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.3.0)
