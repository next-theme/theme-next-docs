---
title: NexT 6.0.6 Released
date: 2018-03-15 13:12:22
---

Since more and more contributors joined to NexT, version 6.0.6 got more improvements, additions and bugfixes. Here are some important of them:

### Version 6.0.6

- {% label warning@REMOVED %} Duplicated meta tag keywords (Hexo v3.3.5 or higher needed).
- {% label info@IMPROVED %} Accessibility for mobile devices.
- {% label success@ADDED %} Support for [hexo-leancloud-counter-security][] plugin.
- {% label success@ADDED %} Sub-Menu feature.
- {% label danger@FIXED %} `svg` confict in Algolia.
- {% label danger@FIXED %} GitHub banner under tablet devices and adapted with `mobile_layout_economy` option.
- {% label danger@FIXED %} Margin settings consistence for Mist scheme.

[Detailed changes for NexT v6.0.6][v6.0.6]

### Version 6.0.5

- {% label info@IMPROVED %} Allow to set custom CDN for Valine.
- {% label success@ADDED %} BreadCrumbs feature.
- {% label success@ADDED %} `include_raw` tag.
- {% label danger@FIXED %} Syntax issue about IE compatible for Valine.

[Detailed changes for NexT v6.0.5][v6.0.5]

### Version 6.0.4

- {% label primary@CHANGED %} Busuanzi Count.
- {% label info@IMPROVED %} Used title as url in `exturl` tag if no arguments exists as title.
- {% label success@ADDED %} External urls in sidebar author links.
- {% label success@ADDED %} Vendor configurations (CDN) for [theme-next-bookmark][] and [theme-next-reading-progress][].
- {% label success@ADDED %} Support for `hexo-related-popular-posts` plugin.
- {% label danger@FIXED %} Missing `data-fancybox` attribute for fancybox.
- {% label danger@FIXED %} Use `.length` instead of `.size()` in `motion.js` and `utils.js` to make it work with jQuery 3.1.

[Detailed changes for NexT v6.0.4][v6.0.4]

### Version 6.0.3

- {% label primary@CHANGED %} Language codes: `fr-FR` to `fr`, `nl-NL` to `nl` and `zh-Hans` to `zh-CN`.
- {% label primary@CHANGED %} `math.per_page` by default to `true` to make math lazyloaded.
- {% label info@IMPROVED %} Make social, creative commons and footer powered links sensitive by `seo` option.
- {% label success@ADDED %} Bookmark feature as separated module: [theme-next-bookmark][].
- {% label success@ADDED %} Switch to choice whether it will unescape the HTML strings for local searching.
- {% label success@ADDED %} Support to set whether the sidebar will be shown in each single post.
- {% label danger@FIXED %} Load math script in homepage for posts or pages contained `mathjax: true` in Front-matter.
- {% label danger@FIXED %} Algolia search overlay on mobile devices.

[Detailed changes for NexT v6.0.3][v6.0.3]

### Version 6.0.2

- {% label info@IMPROVED %} MathJax feature.
- {% label success@ADDED %} KaTeX support ([usage][katex-usage]).
- {% label success@ADDED %} Support for lazy load the Disqus comments.
- {% label success@ADDED %} `cheers_enabled` option.
- {% label success@ADDED %} `pangu` option instead of `auto_spacing` in Hexo as separated module: [theme-next-pangu][].
- {% label success@ADDED %} Load custom files from outside the theme.
- {% label danger@FIXED %} Refactored `head.swig` to right rendering pathes with `cache` option.
- {% label danger@FIXED %} Issue about the categories/tags count in `_drafts` directory.
- {% label danger@FIXED %} `theme_config` option in NexT for Hexo config.

[Detailed changes for NexT v6.0.2][v6.0.2]

### Version 6.0.1

- {% label warning@REMOVED %} Duoshuo.
- {% label success@ADDED %} Reading progress feature as separated module: [theme-next-reading-progress][].
- {% label success@ADDED %} Badges to menu.
- {% label success@ADDED %} «Follow me on GitHub» banner option.

[Detailed changes for NexT v6.0.1][v6.0.1]

[v6.0.6]:                          https://github.com/theme-next/hexo-theme-next/releases/tag/v6.0.6
[v6.0.5]:                          https://github.com/theme-next/hexo-theme-next/releases/tag/v6.0.5
[v6.0.4]:                          https://github.com/theme-next/hexo-theme-next/releases/tag/v6.0.4
[v6.0.3]:                          https://github.com/theme-next/hexo-theme-next/releases/tag/v6.0.3
[v6.0.2]:                          https://github.com/theme-next/hexo-theme-next/releases/tag/v6.0.2
[v6.0.1]:                          https://github.com/theme-next/hexo-theme-next/releases/tag/v6.0.1
[hexo-leancloud-counter-security]: https://github.com/theme-next/hexo-leancloud-counter-security
[theme-next-reading-progress]:     https://github.com/theme-next/theme-next-reading-progress
[theme-next-pangu]:                https://github.com/theme-next/theme-next-pangu
[theme-next-bookmark]:             https://github.com/theme-next/theme-next-bookmark
[katex-usage]:                     /docs/third-party-services/math-equations.html#Render-Engines
