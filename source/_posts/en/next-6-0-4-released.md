---
title: NexT 6.0.4 Released
date: 2018-02-10 15:03:13
---

## Breaking Changes

### Busuanzi Count ([#129](https://github.com/theme-next/hexo-theme-next/pull/129))

#### Old configuration:

```diff
-# Show PV/UV of the website/page with busuanzi.
 # Get more information on http://ibruce.info/2015/04/04/busuanzi/	
 busuanzi_count:	
-  # count values only if the other configs are false	
   enable: false	
-  # custom uv span for the whole site
-  site_uv: true	
-  site_uv_header: <i class="fa fa-user"></i>
-  site_uv_footer:
-  # custom pv span for the whole site	
-  site_pv: true
-  site_pv_header: <i class="fa fa-eye"></i>	
-  site_pv_footer:	
-  # custom pv span for one page only	
-  page_pv: true	
-  page_pv_header: <i class="fa fa-file-o"></i>	
-  page_pv_footer:
```

#### New configuration:

```diff
+# Show Views/Visitors of the website/page with busuanzi.
 # Get more information on http://ibruce.info/2015/04/04/busuanzi/
 busuanzi_count:
   enable: false
+  total_visitors: true
+  total_visitors_icon: user
+  total_views: true
+  total_views_icon: eye
+  post_views: true
+  post_views_icon: eye
```

### Remove `signature` option and stay only `description` for exclude users confused when `seo: true` ([#125](https://github.com/theme-next/hexo-theme-next/pull/125))

## Features

- Added extlinks on sidebar author links. ([#99](https://github.com/theme-next/hexo-theme-next/pull/99))
  ```yml
  social_icons:
    ...
    exturl: false
  ```
- Added Turkish translation by https://crowdin.com/profile/intelligencer ([#95](https://github.com/theme-next/hexo-theme-next/pull/95))
- Added vendor config for bookmark ([#106](https://github.com/theme-next/hexo-theme-next/pull/106)) and reading_progress ([#107](https://github.com/theme-next/hexo-theme-next/pull/107))
  ```yml
  vendors:
    ...
    bookmark: 
    reading_progress:
  ```
- Added `max_content_width` config for Gemini Scheme ([#103](https://github.com/theme-next/hexo-theme-next/pull/103))
  ```yml
  # Manual define the max content width
  # !Only available for Gemini Scheme currently
  # Leave it empty for the default 75% (suggest not less than 1000px)
  max_content_width: 1000px # or 90% for more wide, etc.
  ```
- Added `sidebar_width` config for Gemini Scheme ([#111](https://github.com/theme-next/hexo-theme-next/pull/111))
  ```yml
  # Manual define the sidebar width
  # !!Only available for Gemini Scheme currently
  # Leave it empty for the default 240
  sidebar_width:
  ```
- Added Related Posts ([#109](https://github.com/theme-next/hexo-theme-next/pull/109))
  ```yml
  # Related popular posts
  # Dependencies: https://github.com/tea3/hexo-related-popular-posts
  related_posts:
    enable: false
    title: # custom header, leave empty to use the default one
    display_in_home: false
    params:
      maxCount: 5
      #PPMixingRate: 0.0
      #isDate: false
      #isImage: false
      #isExcerpt: false
  ```

## Optimizations

- Update translations for core languages.
- Update Math and related docs: 
    1. Add bootcdn as optional CDN of math engine ([#98](https://github.com/theme-next/hexo-theme-next/pull/98))
    2. Use [jsDelivr](https://www.jsdelivr.com/) as the default math engine CDN ([#101](https://github.com/theme-next/hexo-theme-next/pull/101))
    3. Add docs about [CDNJS](https://cdnjs.com/) blocked by some parts of China.
- Update: exturl tag — If no arguments exists as title, set title as url ([#122](https://github.com/theme-next/hexo-theme-next/pull/122))
- Update: Change default font size to 14px for Code Block ([#123](https://github.com/theme-next/hexo-theme-next/pull/123))
- Update algolia search docs with vendors ([#119](https://github.com/theme-next/hexo-theme-next/pull/119))
- Update creative commons license ([#116](https://github.com/theme-next/hexo-theme-next/pull/116))
- Update description for fonts and `highlight_theme` ([470f026](http://github.com/theme-next/hexo-theme-next/commit/470f02671cee3c1aad0af9d49c0a73934cbf98b4) [82ac7af](http://github.com/theme-next/hexo-theme-next/commit/82ac7afd3fae2f59dd35d2314d192249c1496bff))

## Bug Fixes

- Fixed needmoreshare2 vendors ([#104](https://github.com/theme-next/hexo-theme-next/pull/104))
- Fixed: Add missing `data-fancybox` attribute for fancybox ([#126](https://github.com/theme-next/hexo-theme-next/pull/126))
- Fixed justify TOC items in sidebar ([#131](https://github.com/theme-next/hexo-theme-next/pull/131))
- Fixed unworked transition in sidebar author links on Mist & Muse ([#99](https://github.com/theme-next/hexo-theme-next/pull/99))
- Fixed: Use `.length` instead of `.size()` to make it work with jquery 3.1 ([#120](https://github.com/theme-next/hexo-theme-next/pull/120))

***

For full changes, see the [comparison between 6.0.3 and 6.0.4](https://github.com/theme-next/hexo-theme-next/compare/v6.0.3...v6.0.4)

[Detailed changes for NexT v6.0.4](https://github.com/theme-next/hexo-theme-next/releases/tag/v6.0.4)
