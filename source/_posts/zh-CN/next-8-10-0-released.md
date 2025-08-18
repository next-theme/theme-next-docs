---
title: NexT 8.10.0 Released
date: 2022-02-08 04:18:33
---

## ⭐ Features

- Support customize open_graph information ([#448](https://github.com/next-theme/hexo-theme-next/pull/448))
```diff
+# Open graph settings
+# See: https://hexo.io/docs/helpers#open-graph
+open_graph:
+  enable: true
+  # Add pairs each line to customize
+  options:
+    #twitter_card: <twitter:card>
+    #twitter_id: <twitter:creator>
+    #twitter_site: <twitter:site>
+    #twitter_image: <twitter:image>
+    #google_plus: <g+:profile_link>
+    #fb_admins: <fb:admin_id>
+    #fb_app_id: <fb:app_id>
```
- Replace hexo-related-popular-posts with hexo-related-posts ([#447](https://github.com/next-theme/hexo-theme-next/pull/447))
```diff
# Related popular posts
-# Dependencies: https://github.com/tea3/hexo-related-popular-posts
+# Dependencies: https://github.com/sergeyzwezdin/hexo-related-posts
related_posts:
  ...
-  params:
-     maxCount: 5
-     #PPMixingRate: 0.0
-     #isDate: false
-     #isImage: false
-     #isExcerpt: false
```
- Feat: Add Microsoft clarity as an analytics provider ([#451](https://github.com/next-theme/hexo-theme-next/pull/451))
```diff
+# Microsoft Clarity Analytics
+# See: https://clarity.microsoft.com/
+clarity_analytics: # <project_id>
```

## 🐞 Bug Fixes

- Fix gitter button position ([f70b4bf](https://github.com/next-theme/hexo-theme-next/commit/f70b4bffd6f39e8d67a005b42ff5fbaa4e69dd87))
- Add back `theme.js` ([#439](https://github.com/next-theme/hexo-theme-next/pull/439))
- Change default darkmode codeblock theme ([6fd36d9](https://github.com/next-theme/hexo-theme-next/commit/6fd36d9ab446fcfaf7357ed9f90c5c1e06115046))

## 🛠 Improvements

- Enable meta_generator ([#449](https://github.com/next-theme/hexo-theme-next/pull/449))
- Add back `theme.js` ([#439](https://github.com/next-theme/hexo-theme-next/pull/439))
- Add tidio integration in `minify.js` ([#435](https://github.com/next-theme/hexo-theme-next/pull/435))
- Update docs of utterances ([1b8f1e2](https://github.com/next-theme/hexo-theme-next/commit/1b8f1e217f0dcc98a19a4bd32cc0621177fd4489))
- Refactor CSS parser ([2094a76](https://github.com/next-theme/hexo-theme-next/commit/2094a764d6da6eaac3ce6c36b5910bab1c22193f))

## 🌀 External Changes

- Update dependency hexo-renderer-marked to v5 ([#453](https://github.com/next-theme/hexo-theme-next/pull/453))
- Update dependency chai to v4.3.6 ([#452](https://github.com/next-theme/hexo-theme-next/pull/452))
- Update dependency mocha to v9.2.0 ([#440](https://github.com/next-theme/hexo-theme-next/pull/440))
- Update dependency eslint to v8.8.0 ([#429](https://github.com/next-theme/hexo-theme-next/pull/429))

## 🌍 Localization

- New Crowdin updates ([#436](https://github.com/next-theme/hexo-theme-next/pull/436))

***

For full changes, see the [comparison between v8.9.0 and v8.10.0](https://github.com/next-theme/hexo-theme-next/compare/v8.9.0...v8.10.0)

[Detailed changes for NexT v8.10.0](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.10.0)
