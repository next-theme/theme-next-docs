---
title: NexT 8.0.1 Released
date: 2020-10-01 03:10:53
---

## 🌟 New Features

- Add NProgress ([#79](https://github.com/next-theme/hexo-theme-next/pull/79))
```diff
+# Progress bar in the top during page loading.
+# For more information: https://github.com/rstacruz/nprogress
+nprogress:
+  enable: false
+  spinner: true

vendors:
  ...
+  # NProgress.js
+  nprogress_js:
+  nprogress_css:
```

## ⭐ Features

- Support cdnjs ([96c68a9](https://github.com/next-theme/hexo-theme-next/commit/96c68a93211088ec50ab1c324148b24187b73529))

## 🐞 Bug Fixes

- Fix post-meta position in scheme Mist ([c9cdf1c](https://github.com/next-theme/hexo-theme-next/commit/c9cdf1c695fc763be41a167a6f061a233d51a416))
- Fix site-state-item padding ([4b8a17b](https://github.com/next-theme/hexo-theme-next/commit/4b8a17b8e8194508b33c8d0ea7b646568030d411))
- Fix: handle invalid config ([d51ca0e](https://github.com/next-theme/hexo-theme-next/commit/d51ca0e2e8c3c19a4cd0f06bfd24e86e66425a8b))
- Use `textContent` instead of `innerText` ([52234e5](https://github.com/next-theme/hexo-theme-next/commit/52234e5fdaeb59ee4c2e25e0d28a753e7012b589))

## 🛠 Improvements

- Refactor sidebar-panel using flex layout ([d6f344f](https://github.com/next-theme/hexo-theme-next/commit/d6f344fd9d1f5b9d00e5a0e02493889907bc9538))
- Fix serverURLs of Valine ([9919fb5](https://github.com/next-theme/hexo-theme-next/commit/9919fb5c4956315e51d7eeaec32a416f76b06edb))

## 🌀 External Changes

- Update dependency hexo to v5.2.0 ([#111](https://github.com/next-theme/hexo-theme-next/pull/111))
- Update dependency husky to v4.3.0 ([#107](https://github.com/next-theme/hexo-theme-next/pull/107))
- Update dependency hexo-renderer-marked to v3.3.0 ([#105](https://github.com/next-theme/hexo-theme-next/pull/105))
- Update dependency eslint to v7.10.0 ([#99](https://github.com/next-theme/hexo-theme-next/pull/99))
- Update _vendors.yml ([35d1e68](https://github.com/next-theme/hexo-theme-next/commit/35d1e683fde6b0a2d0242aa5aab710e4254f8065))

***

For full changes, see the [comparison between v8.0.0 and v8.0.1](https://github.com/next-theme/hexo-theme-next/compare/v8.0.0...v8.0.1)

[Detailed changes for NexT v8.0.1](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.0.1)
