---
title: NexT 8.9.0 Released
date: 2022-01-02 08:53:32
---

## 💥 Breaking Changes

- Custom CDN options ([#428](https://github.com/next-theme/hexo-theme-next/pull/428))
```diff
vendors:
  # The CDN provider of NexT internal scripts.
-  # Available values: local | jsdelivr | unpkg | cdnjs
+  # Available values: local | jsdelivr | unpkg | cdnjs | custom
  # Warning: If you are using the latest master branch of NexT, please set `internal: local`
  internal: local
  # The default CDN provider of third-party plugins.
-  # Available values: local | jsdelivr | unpkg | cdnjs
+  # Available values: local | jsdelivr | unpkg | cdnjs | custom
  # Dependencies for `plugins: local`: https://github.com/next-theme/plugins
  plugins: jsdelivr
+  # Custom CDN URL
+  # For example:
+  # custom_cdn_url: https://cdn.jsdelivr.net/npm/${npm_name}@${version}/${minified}
+  # custom_cdn_url: https://cdnjs.cloudflare.com/ajax/libs/${cdnjs_name}/${version}/${cdnjs_file}
+  custom_cdn_url:
```

## 🛠 Improvements

- Optimize changyan comment ([#415](https://github.com/next-theme/hexo-theme-next/pull/415))
- Update CONFIG.quicklink.ignores option ([6092e9e](https://github.com/next-theme/hexo-theme-next/commit/6092e9ec9b5ae6d978e6dd6791751d5dc8f604b2))
- Support codeblock mark option ([b51fedf](https://github.com/next-theme/hexo-theme-next/commit/b51fedfb2db45b9e16cf2344c1dd16ec5ad5e71d))
- Some minor fixes ([be21d5c](https://github.com/next-theme/hexo-theme-next/commit/be21d5c530af9ddf106a113ed7d623e4436f31ca))

## 🌀 External Changes

- Update dependency hexo to v6 ([#426](https://github.com/next-theme/hexo-theme-next/pull/426))
- Update dependency eslint to v8.5.0 ([#419](https://github.com/next-theme/hexo-theme-next/pull/419))

## 🌍 Localization

- New Crowdin updates ([#423](https://github.com/next-theme/hexo-theme-next/pull/423))

***

For full changes, see the [comparison between v8.8.2 and v8.9.0](https://github.com/next-theme/hexo-theme-next/compare/v8.8.2...v8.9.0)

[Detailed changes for NexT v8.9.0](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.9.0)
