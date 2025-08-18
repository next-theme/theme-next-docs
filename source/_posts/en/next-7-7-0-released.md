---
title: NexT 7.7.0 Released
date: 2020-01-01 06:23:21
---

## 💥 Breaking Changes

### Make lazyload & PJAX available for all comment systems ([#1152](https://github.com/theme-next/hexo-theme-next/pull/1152))

```diff
# Multiple Comment System Support
comments:
  # Available values: tabs | buttons
  style: tabs
  # Choose a comment system to be displayed by default.
  # Available values: changyan | disqus | disqusjs | gitalk | livere | valine
  active:
  # Setting `true` means remembering the comment system selected by the visitor.
  storage: true
+  # Lazyload all comment systems.
+  lazyload: false
  # Modify texts or order for any naves, here are some examples.
  nav:
    #disqus:
    #  text: Load Disqus
    #  order: -1
    #gitalk:
    #  order: -2
# Disqus
disqus:
  enable: false
  shortname:
  count: true
-  lazyload: false
  #post_meta_order: 0
```

## 🐞 Bug Fixes

- Fix Gitalk distractionFreeMode invalid bug ([#1326](https://github.com/theme-next/hexo-theme-next/pull/1326))

## 🛠 Improvements

- Use IntersectionObserver to lazyload comments ([#1305](https://github.com/theme-next/hexo-theme-next/pull/1305))
- Drop cheerio ([#1299](https://github.com/theme-next/hexo-theme-next/pull/1299))

***

For full changes, see the [comparison between v7.6.0 and v7.7.0](https://github.com/theme-next/hexo-theme-next/compare/v7.6.0...v7.7.0)

[Detailed changes for NexT v7.7.0](https://github.com/theme-next/hexo-theme-next/releases/tag/v7.7.0)
