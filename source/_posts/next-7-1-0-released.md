---
title: NexT 7.1.0 Released
date: 2019-04-01 11:19:46
---

> Happy April Fools' Day Guys \\(^_^)/

## 💥 Breaking Changes

### Usage of `quicklink` ([#642](https://github.com/theme-next/hexo-theme-next/pull/642))

- Now quicklink will load on demand by default.
- Add `quicklink: true` in Front-matter for those pages or posts you want.
- Home page and archive page can be controlled through `home` and `archive` option.

```diff
quicklink:
  enable: true
- per_page: true
+ home: true # enable or disable quicklink on home page
+ archive: true # enable or disable quicklink on archive page
# Add `quicklink: true` in Front-matter to enable quicklink on special page or post
```
### Some options look more uniform in `_config.yml` ([#643](https://github.com/theme-next/hexo-theme-next/pull/643))

```diff
- #github_banner: https://github.com/yourname || Follow me on GitHub
+ github_banner:
+  enable: false
+  permalink: https://github.com/yourname
+  title: Follow me on GitHub

post_meta:
  updated_at:
-    enabled: true
+    enable: true

wechat_subscriber:
-  #enabled: true
+  enable: false

custom_logo:
-  enabled: false
+  enable: false

-cheers_enabled: true
+cheers: true
```

### Usage of `back2top` button ([#657](https://github.com/theme-next/hexo-theme-next/pull/657))

```diff
sidebar:
-  # Back to top in sidebar.
-  b2t: false
-  # Scroll percent label in b2t button.
-  scrollpercent: false
```

```diff
+back2top:
+  enable: true
+  # Back to top in sidebar.
+  sidebar: false
+  # Scroll percent label in b2t button.
+  scrollpercent: false
```

## 🌟 New Features

- Range of font size and color to `tagcloud` ([#648](https://github.com/theme-next/hexo-theme-next/pull/648))
- New `video` and warn when use `exturl` or `extlink` ([#652](https://github.com/theme-next/hexo-theme-next/pull/652))
- Mermaid ([#649](https://github.com/theme-next/hexo-theme-next/pull/649))
- Likely share ([#678](https://github.com/theme-next/hexo-theme-next/pull/678))
- Chatra and Tidio chats service ([#681](https://github.com/theme-next/hexo-theme-next/pull/681))
- `safari_rainbow` and `custom_scrollbar` ([#686](https://github.com/theme-next/hexo-theme-next/pull/686))
- DisqusJS comment system ([#705](https://github.com/theme-next/hexo-theme-next/pull/705))

## ⭐ Features

- Load `quicklink` on demand ([#637](https://github.com/theme-next/hexo-theme-next/pull/637))
- Force language options to Gitalk comment system ([#653](https://github.com/theme-next/hexo-theme-next/pull/653))
- New `pdf` tag ([#659](https://github.com/theme-next/hexo-theme-next/pull/659))
- Amount option to `tagcloud` ([#662](https://github.com/theme-next/hexo-theme-next/pull/662))
- Fancybox for group-picture and post-gallery ([#667](https://github.com/theme-next/hexo-theme-next/pull/667))
- English support for Valine comment system ([#676](https://github.com/theme-next/hexo-theme-next/pull/676))
- Expand all level option of post TOC ([#679](https://github.com/theme-next/hexo-theme-next/pull/679))
- Icon option to sidebar chat button ([#688](https://github.com/theme-next/hexo-theme-next/pull/688))
- New `text_align` option ([#682](https://github.com/theme-next/hexo-theme-next/pull/682))
- Dynamic unlimited `reward` additions and `animation` option ([#695](https://github.com/theme-next/hexo-theme-next/pull/695))

## 🛠 Improvements

- Fix bootstrap filename ([#640](https://github.com/theme-next/hexo-theme-next/pull/640))
- Change the spacing between sidebar elements ([#638](https://github.com/theme-next/hexo-theme-next/pull/638))
- Rename loader script for prevent wrong boostrap detection in Wappalyzer ([#641](https://github.com/theme-next/hexo-theme-next/pull/641))
- Update CDN url in `_config.yml` ([#664](https://github.com/theme-next/hexo-theme-next/pull/664))
- Remove `ua_parser` excess library ([#671](https://github.com/theme-next/hexo-theme-next/pull/671))
- Make a few documentational edits ([#672](https://github.com/theme-next/hexo-theme-next/pull/672))
- Move stylesheets from `.swig` to `.styl` files ([#680](https://github.com/theme-next/hexo-theme-next/pull/680))
- Remove unnecessary CSS prefix & Update normalize.css ([#683](https://github.com/theme-next/hexo-theme-next/pull/683))
- Make `site-state-item` centered using `flex` ([#700](https://github.com/theme-next/hexo-theme-next/pull/700))
- Refactor Mist & Muse menu bar using `flex` ([#702](https://github.com/theme-next/hexo-theme-next/pull/702))
- Remove `qihu_site_verification` and move some options to `SEO Settings` ([#706](https://github.com/theme-next/hexo-theme-next/pull/706))
- Make CSS cleaner using `tablet-mobile()` ([#724](https://github.com/theme-next/hexo-theme-next/pull/724))
- Remove redundant styles ([#728](https://github.com/theme-next/hexo-theme-next/pull/728))
- Make CSS simpler using macro ([#738](https://github.com/theme-next/hexo-theme-next/pull/738))
- Improve canonical path for vision in Google ([#748](https://github.com/theme-next/hexo-theme-next/pull/748))
- Merge note.styl and note-modern.styl ([#750](https://github.com/theme-next/hexo-theme-next/pull/750))
- Reduce the use of `!important` for GitHub banner ([#744](https://github.com/theme-next/hexo-theme-next/pull/744))
- From now release drafts will maked automatically ([#765](https://github.com/theme-next/hexo-theme-next/pull/765))
- Improve console warning for non-supporting ([#766](https://github.com/theme-next/hexo-theme-next/pull/766))
- Change comparison for Release Drafter Bot

## 🐞 Bug Fixes

- Diff code hightlight problem ([#665](https://github.com/theme-next/hexo-theme-next/pull/665))
- Lost `tracking_id` in `google_analytics` ([#668](https://github.com/theme-next/hexo-theme-next/pull/668))
- For long mathjax equations with short viewport horizontal scrollbar will appear ([#669](https://github.com/theme-next/hexo-theme-next/pull/669))
- Colored link for modern notes with `exturl` ([#685](https://github.com/theme-next/hexo-theme-next/pull/685))
- `reward` button vertical align text ([#693](https://github.com/theme-next/hexo-theme-next/pull/693))
- `back2top` button on mobile, sidebar item margin and sidebar `exturl` link color ([#684](https://github.com/theme-next/hexo-theme-next/pull/684))
- Right margin bug on mobile devices ([#709](https://github.com/theme-next/hexo-theme-next/pull/709))
- Typo in Baidu transformation in `_config.yml` ([#714](https://github.com/theme-next/hexo-theme-next/pull/714))
- Sidebar button style on Pisces and Gemini ([#735](https://github.com/theme-next/hexo-theme-next/pull/735))
- Mathjax `li` style issue ([#752](https://github.com/theme-next/hexo-theme-next/pull/752))
- Remove `no-wrap` style from label tag ([#763](https://github.com/theme-next/hexo-theme-next/pull/763))
- Breadcrumbs now work with both `*.html` and `index.html` pages ([#769](https://github.com/theme-next/hexo-theme-next/pull/769))

## 📖 Documentation

- Add more contributors to contributors list ([#639](https://github.com/theme-next/hexo-theme-next/pull/639))
- Make ISSUE and PR template more readable ([#644](https://github.com/theme-next/hexo-theme-next/pull/644))
- Add CII badge. ([#729](https://github.com/theme-next/hexo-theme-next/pull/729))
- Move some docs from `_config.yml` to official website ([#725](https://github.com/theme-next/hexo-theme-next/pull/725))
- Update README.md, remove unused URLs ([#727](https://github.com/theme-next/hexo-theme-next/pull/727))
- Add «Reporting Security Bugs» sections. ([#730](https://github.com/theme-next/hexo-theme-next/pull/730))
- Change Riot chat link. ([#733](https://github.com/theme-next/hexo-theme-next/pull/733))
- Add stevenjoezhang as a contributor ([#741](https://github.com/theme-next/hexo-theme-next/pull/741))
- Add «Thanks» section ([#739](https://github.com/theme-next/hexo-theme-next/pull/739))
- Add 1v9 as a contributor ([#742](https://github.com/theme-next/hexo-theme-next/pull/742))
- Add JiangTJ as a contributor ([#743](https://github.com/theme-next/hexo-theme-next/pull/743))
- Update labels and Chinese translation of CONTRIBUTING.md ([#747](https://github.com/theme-next/hexo-theme-next/pull/747))
- Add liolok as a contributor ([#755](https://github.com/theme-next/hexo-theme-next/pull/755))
- Contributors per line: 6 instead of 7 ([#756](https://github.com/theme-next/hexo-theme-next/pull/756))
- Add ivan-nginx as a contributor ([#757](https://github.com/theme-next/hexo-theme-next/pull/757))
- Add `Improvement Need` label ([#768](https://github.com/theme-next/hexo-theme-next/pull/768))

## 🌍 Localization

- New Crowdin translations ([#647](https://github.com/theme-next/hexo-theme-next/pull/647))
- New Crowdin translations ([#650](https://github.com/theme-next/hexo-theme-next/pull/650))

***

For full changes, see the [comparison between 7.0.1 and 7.1.0](https://github.com/theme-next/hexo-theme-next/compare/v7.0.1...v7.1.0)

[Detailed changes for NexT v7.1.0](https://github.com/theme-next/hexo-theme-next/releases/tag/v7.1.0)
