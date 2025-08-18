---
title: NexT 8.4.0 Released
date: 2021-05-01 03:27:19
---

## 💥 Breaking Changes

- Separate third party inline scripts ([#241](https://github.com/next-theme/hexo-theme-next/pull/241))

## ⭐ Features

- New body scrollbar style option ([#248](https://github.com/next-theme/hexo-theme-next/pull/248))
```diff
+# Override browsers' default behavior.
+body_scrollbar:
+  # Place the scrollbar over the content.
+  overlay: false
+  # Present the scrollbar even if the content is not overflowing.
+  stable: false
```

## 🐞 Bug Fixes

- Fix scroll restoration ([#256](https://github.com/next-theme/hexo-theme-next/pull/256))
- Fix changyan on Pjax sites ([#252](https://github.com/next-theme/hexo-theme-next/pull/252))
- Disable `margin` animation of `<body>` ([#236](https://github.com/next-theme/hexo-theme-next/pull/236))

## 🛠 Improvements

- Remove internal scripts if `minify` is true and the CDN provider is not `local` ([#251](https://github.com/next-theme/hexo-theme-next/pull/251))
- Use ImgBot to optimize images ([#242](https://github.com/next-theme/hexo-theme-next/pull/242))
- Separate NexT inline scripts and styles ([#226](https://github.com/next-theme/hexo-theme-next/pull/226))

## 🌀 External Changes

- Update dependency js-yaml to v4.1.0 ([#249](https://github.com/next-theme/hexo-theme-next/pull/249))
- Update dependency eslint to v7.25.0 ([#244](https://github.com/next-theme/hexo-theme-next/pull/244))

## 🌍 Localization

- New Crowdin updates ([#245](https://github.com/next-theme/hexo-theme-next/pull/245))

***

For full changes, see the [comparison between v8.3.0 and v8.4.0](https://github.com/next-theme/hexo-theme-next/compare/v8.3.0...v8.4.0)

[Detailed changes for NexT v8.4.0](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.4.0)
