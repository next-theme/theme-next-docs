---
title: NexT 7.4.0 Released
date: 2019-09-01 02:08:13
---

## 💥 Breaking Changes

### Add order for theme_inject ([#1136](https://github.com/theme-next/hexo-theme-next/pull/1136))

Redesigned the sequential configuration of the multi-comment system, which was originally introduced in #1048 of `New Features` section below.

<details><summary>Click to see configuration's changes</summary><p>

```diff
# Multiple Comment System Support
comments:
  # Available values: tabs | buttons
  style: tabs
  # Choose a comment system to be displayed by default.
  # Available values: changyan | disqus | disqusjs | facebook_comments_plugin | gitalk | livere | valine | vkontakte
  active:
  # Setting `true` means remembering the comment system selected by the visitor.
  storage: true
  # Modify texts or order for any naves, here are some examples.
  nav:
-    #disqus: disqus
-    #facebook_comments_plugin: <i class="fa fa-facebook-official" aria-hidden="true"></i> facebook
-    #gitalk: Load Gitalk
+    #disqus:
+    #  text: Load Disqus
+    #  order: -1
+    #facebook_comments_plugin:
+    #  text: <i class="fa fa-facebook-official" aria-hidden="true"></i> facebook
+    #gitalk:
```

</p></details>

### Extract all share systems to plugins ([#1104](https://github.com/theme-next/hexo-theme-next/pull/1104))

> See the [diff][diff-1104] (mostly deletion) of `_config.yml`

[diff-1104]: https://github.com/theme-next/hexo-theme-next/pull/1104/files?file-filters%5B%5D=.yml#diff-aeb42283af8ef8e9da40ededd3ae2ab2

Now share systems come with plugin [hexo-next-share][hexo-next-share].

[hexo-next-share]: https://github.com/theme-next/hexo-next-share "theme-next/hexo-next-share: Content sharing services for NexT."

Latest docs can be found at [Post Widgets][post-widgets] and [Statistics and Analytics][statistics-and-analytics].

[post-widgets]: /docs/third-party-services/post-widgets.html "Post Widgets | NexT"

[statistics-and-analytics]: /docs/third-party-services/statistics-and-analytics.html "Statistics and Analytics | NexT"

### Refactor vendors ([#1081](https://github.com/theme-next/hexo-theme-next/pull/1081))

<details><summary>Click to see configuration's changes</summary><p>

```diff
math:
-  engine: mathjax
-  #engine: katex
  mathjax:
-    cdn: //cdn.jsdelivr.net/npm/mathjax@2/MathJax.js?config=TeX-AMS-MML_HTMLorMML
-    #cdn: //cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-MML-AM_CHTML
+    enable: false
-    #mhchem: //cdn.jsdelivr.net/npm/mathjax-mhchem@3
-    #mhchem: //cdnjs.cloudflare.com/ajax/libs/mathjax-mhchem/3.3.0
+    mhchem: false
  katex:
-    cdn: //cdn.jsdelivr.net/npm/katex@0/dist/katex.min.css
-    #cdn: //cdnjs.cloudflare.com/ajax/libs/KaTeX/0.7.1/katex.min.css
+    enable: false
-    copy_tex:
-      enable: false
-      copy_tex_js: //cdn.jsdelivr.net/npm/katex@0/dist/contrib/copy-tex.min.js
-      copy_tex_css: //cdn.jsdelivr.net/npm/katex@0/dist/contrib/copy-tex.min.css
+    copy_tex: false

pdf:
-  pdfobject:
-    cdn: //cdn.jsdelivr.net/npm/pdfobject@2/pdfobject.min.js
-    #cdn: //cdnjs.cloudflare.com/ajax/libs/pdfobject/2.1.1/pdfobject.min.js

mermaid:
-  cdn: //cdn.jsdelivr.net/npm/mermaid@8/dist/mermaid.min.js
-  #cdn: //cdnjs.cloudflare.com/ajax/libs/mermaid/8.0.0/mermaid.min.js

vendors:
+  mathjax:
+  mhchem:
+  katex:
+  copy_tex_js:
+  copy_tex_css:
+  pdfobject:
+  mermaid:
```

</p></details>

### Remove full-image tag ([#1053](https://github.com/theme-next/hexo-theme-next/pull/1053))

## 🌟 New Features

- Add multi-comments ([#1048](https://github.com/theme-next/hexo-theme-next/pull/1048))
- PJAX support ([#1024](https://github.com/theme-next/hexo-theme-next/pull/1024))

## ⭐ Features

- Expand beian options for users in mainland China ([#1121](https://github.com/theme-next/hexo-theme-next/pull/1121))
- Add color option for bookmark ([#1112](https://github.com/theme-next/hexo-theme-next/pull/1112))
- Extract bookmark / save_scroll to plugins ([#1106](https://github.com/theme-next/hexo-theme-next/pull/1106))
- Refactor reading-progress ([#1100](https://github.com/theme-next/hexo-theme-next/pull/1100))
- Remove post type quote & picture ([#1099](https://github.com/theme-next/hexo-theme-next/pull/1099))
- Show year devision in category or tag page ([#1061](https://github.com/theme-next/hexo-theme-next/pull/1061))

## 🛠 Improvements

- Refactor sidebar motion ([#1128](https://github.com/theme-next/hexo-theme-next/pull/1128))
- Reimplement Bootstrap Affix ([#1130](https://github.com/theme-next/hexo-theme-next/pull/1130))
- Make CSS selectors and dimensional calculations more robust ([#1124](https://github.com/theme-next/hexo-theme-next/pull/1124))
- Refactor links-of-blogroll-item ([#1119](https://github.com/theme-next/hexo-theme-next/pull/1119))
- Make sidebar toc & PJAX loading faster ([#1113](https://github.com/theme-next/hexo-theme-next/pull/1113))
- New helper next-vendors ([#1105](https://github.com/theme-next/hexo-theme-next/pull/1105))
- Add next_inject helper ([#1098](https://github.com/theme-next/hexo-theme-next/pull/1098))
- Add next_js helper ([#1096](https://github.com/theme-next/hexo-theme-next/pull/1096))
- Refactor auto excerpt ([#1080](https://github.com/theme-next/hexo-theme-next/pull/1080))
- Fix several bugs reported in v7.3 ([#1060](https://github.com/theme-next/hexo-theme-next/pull/1060))
- Optimize the loading of exturl ([#1076](https://github.com/theme-next/hexo-theme-next/pull/1076))
- Optimize the rendering of post ([#1075](https://github.com/theme-next/hexo-theme-next/pull/1075))
- Improve the style of firebase analytics and post-meta ([#1056](https://github.com/theme-next/hexo-theme-next/pull/1056))
- Need more cache 2 ([#1051](https://github.com/theme-next/hexo-theme-next/pull/1051))
- Refactor custom pages ([#1045](https://github.com/theme-next/hexo-theme-next/pull/1045))
- Reorganize the structure of `generateBefore` ([#1043](https://github.com/theme-next/hexo-theme-next/pull/1043))
- Obey Stylint rules ([#1037](https://github.com/theme-next/hexo-theme-next/pull/1037))
- Arrow function expression ([#1003](https://github.com/theme-next/hexo-theme-next/pull/1003))
- Refactor lint / tests / bower ([#1041](https://github.com/theme-next/hexo-theme-next/pull/1041))

## 🐞 Bug Fixes

- IntersectionObserver about TOC ([#1125](https://github.com/theme-next/hexo-theme-next/pull/1125))
- Fix PJAX refresh bugs when search / fancybox enabled ([#1111](https://github.com/theme-next/hexo-theme-next/pull/1111))
- Fix space after comment count ([#1101](https://github.com/theme-next/hexo-theme-next/pull/1101))
- Use insertAdjacentHTML instead of appendChild ([#1102](https://github.com/theme-next/hexo-theme-next/pull/1102))
- Fix leancloud counter bug ([#1093](https://github.com/theme-next/hexo-theme-next/pull/1093))
- Strange bug with symlinked `next` dir ([#1062](https://github.com/theme-next/hexo-theme-next/pull/1062))
- Fix issues caused by PJAX ([#1057](https://github.com/theme-next/hexo-theme-next/pull/1057))
- Fix codeblock diff highlight bug ([#1047](https://github.com/theme-next/hexo-theme-next/pull/1047))
- Refactor inject style path ([#1044](https://github.com/theme-next/hexo-theme-next/pull/1044))
- Fix bugs caused by `this` and optimize the loading of cheerio ([#1042](https://github.com/theme-next/hexo-theme-next/pull/1042))
- Fix affix bug ([#1039](https://github.com/theme-next/hexo-theme-next/pull/1039))

## 🌍 Localization

- New Crowdin translations ([#1117](https://github.com/theme-next/hexo-theme-next/pull/1117))
- Removed `comments_count` ([#1079](https://github.com/theme-next/hexo-theme-next/pull/1079))

***

For full changes, see the [comparison between v7.3.0 and v7.4.0](https://github.com/theme-next/hexo-theme-next/compare/v7.3.0...v7.4.0)

[Detailed changes for NexT v7.4.0](https://github.com/theme-next/hexo-theme-next/releases/tag/v7.4.0)
