---
title: NexT 6.0.2 Released
date: 2018-01-20 16:46:25
---

## Breaking changes

### MathJax ([#32](https://github.com/theme-next/hexo-theme-next/pull/32)) [See [docs](/docs/third-party-services/math-equations.html) for details]

#### Old configuration:
```diff
-# MathJax Support
-mathjax:
-  enable: false
-  per_page: false
- cdn: //cdn.bootcss.com/mathjax/2.7.1/latest.js?config=TeX-AMS-MML_HTMLorMML
```

#### New configuration:
```yml
# Math Equations Render Support
math:
  enable: false

  # Default(false) will load mathjax/katex script EVERY PAGE
  # If you set to true, you need to add 'mathjax: true' in Front Matter of post
  # in order to render math equations in post
  per_page: false

  engine: mathjax
  #engine: katex

  # hexo-rendering-pandoc (or hexo-renderer-kramed) needed to full MathJax support.
  mathjax:
    # For newMathJax CDN (cdnjs.cloudflare.com) with fallback to oldMathJax (cdn.mathjax.org).
    cdn: //cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
    # For direct link to MathJax.js with CloudFlare CDN (cdnjs.cloudflare.com).
    #cdn: //cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-MML-AM_CHTML
    # For automatic detect latest version link to MathJax.js and get from CloudFlare.
    #cdn: //cdn.bootcss.com/mathjax/2.7.1/latest.js?config=TeX-AMS-MML_HTMLorMML

  # hexo-renderer-markdown-it-plus (or hexo-renderer-markdown-it with markdown-it-katex plugin)
  # needed to full Katex support.
  katex:
    # Use Katex 0.7.1 as default
    cdn: //cdnjs.cloudflare.com/ajax/libs/KaTeX/0.7.1/katex.min.css
    # If you want to try the latest version of Katex, use one below instead
    #cdn: //cdn.jsdelivr.net/katex/latest/katex.min.css
```

## Features

- Added `katex` support ([#32](https://github.com/theme-next/hexo-theme-next/pull/32)) (See breaking changes above)
- Added: Support to lazy load the disqus comments ([#34](https://github.com/theme-next/hexo-theme-next/pull/34))
  ```yml
  disqus:
    lazyload: true
  ```
- Added `cheers_enabled` config option ([#43](https://github.com/theme-next/hexo-theme-next/pull/43))
  ```yml
  # Enable "cheers" for archive page.
  cheers_enabled: true
  ```
- Added `pangu.js` instead of auto_spacing in hexo ([#51](https://github.com/theme-next/hexo-theme-next/pull/51), [#56](https://github.com/theme-next/hexo-theme-next/pull/56))
  ```yml
  # Pangu Support
  # Dependencies: https://github.com/theme-next/theme-next-pangu
  # For more information: https://github.com/vinta/pangu.js
  pangu: true
  ```
- Added `updated_diff` option to `post_meta` ([#50](https://github.com/theme-next/hexo-theme-next/pull/50))
  ```yml
  post_meta:
    created_at: true
    updated_at: true
    updated_diff: true
  ```
- Added: Load custom files from outside the theme ([#31](https://github.com/theme-next/hexo-theme-next/pull/31), [f968ffc](http://github.com/theme-next/hexo-theme-next/commit/f968ffc1f4e68da53ff199be6fea4b5198ff4367), [12fe131](http://github.com/theme-next/hexo-theme-next/commit/12fe131159089e0dc0e26251b27f3d2f75d46940), [1cb4d08](http://github.com/theme-next/hexo-theme-next/commit/1cb4d086bd31c061764ceadddc82a729e4dc3fd5), [8744238](http://github.com/theme-next/hexo-theme-next/commit/8744238cc574e2b3e9c334330aa5f4a7d863af96))
  ```yml
  # Redefine custom file paths. Introduced in NexT v6.0.2.
  # If commented, will be used default custom file paths.

  # For example, you want to put your custom styles file
  # outside theme directory in root `source/_data`, set
  # `styles: source/_data/styles.styl`
  custom_file_path:
    #head: source/_data/head.swig
    header: source/_data/header.swig
    #sidebar: source/_data/sidebar.swig

    styles: source/_data/styles.styl
    #mixins: source/_data/mixins.styl
    variables: source/_data/variables.styl
  ```

## Optimizations

- Updated google-analytics.swig ([#45](https://github.com/theme-next/hexo-theme-next/pull/45))
- Updated translation for the DATA-FILES.md changes. ([#47](https://github.com/theme-next/hexo-theme-next/pull/47))
- Updated `<img src="/image-url" class="full-image" />` BUG ([#52](https://github.com/theme-next/hexo-theme-next/pull/52), [5a70fd3](http://github.com/theme-next/hexo-theme-next/commit/5a70fd32c5565771e93de5c364b4596c5a197e07))

## Bug Fixes

- Fixed misleading description of gitment ([#22](https://github.com/theme-next/hexo-theme-next/pull/22))
- Fixed: move needmoreshare_css to head ([#26](https://github.com/theme-next/hexo-theme-next/pull/26))
- Fixed: Turn OFF javascript with motion enable result in a blank page [fix added] ([#27](https://github.com/theme-next/hexo-theme-next/pull/27), [d2be4fa](http://github.com/theme-next/hexo-theme-next/commit/d2be4fade1fc6818373463cf3a6e31e82935b453))
- Fixed a position bug of the github_banner on the mobile layout. ([#29](https://github.com/theme-next/hexo-theme-next/pull/29), [3337b50](http://github.com/theme-next/hexo-theme-next/commit/3337b50574f9334ee9124135d6fad90bfd1e05b3))
- Fixed underlined category under title ends in an extra blank [fix added] ([#36](https://github.com/theme-next/hexo-theme-next/pull/36), [08d35be](http://github.com/theme-next/hexo-theme-next/commit/08d35be1c92b4596e6a3c672dcb0c0fb32088a31))
- Fixed: Add comment.enable to switch comment conveniently ([#39](https://github.com/theme-next/hexo-theme-next/pull/39))
- Fixed: `<link rel="canonical" href="URL"/>` is wrong! [fix added] ([#40](https://github.com/theme-next/hexo-theme-next/pull/40), [bad4334](http://github.com/theme-next/hexo-theme-next/commit/bad433475a3cdcc420807ac8008a5018558e0622))
- Fixed an issue about the categories/tags count. ([#42](https://github.com/theme-next/hexo-theme-next/pull/42))
- **Fixed**: Override theme's `scheme` from main config [fix added] ([#44](https://github.com/theme-next/hexo-theme-next/pull/44), [1b0b53a](http://github.com/theme-next/hexo-theme-next/commit/1b0b53a355184db65b2f19349c7b1372f1825174))
- Fixed `reading_progress` appear in index ([#55](https://github.com/theme-next/hexo-theme-next/pull/55))

***

For full changes, see the [comparison between 6.0.1 and 6.0.2](https://github.com/theme-next/hexo-theme-next/compare/v6.0.1...v6.0.2)

[Detailed changes for NexT v6.0.2](https://github.com/theme-next/hexo-theme-next/releases/tag/v6.0.2)
