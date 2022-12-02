---
title: NexT 8.14.0 Released
date: 2022-12-02 06:14:16
---

<!-- Release notes generated using configuration in .github/release.yml at v8.14.0 -->

## What's Changed
### 🌟 New Features
* Add Umami and Plausible Analytics by @leirock in https://github.com/next-theme/hexo-theme-next/pull/569
```diff
+# Umami Analytics
+# See: https://umami.is/
+umami:
+  enable: false
+  script_url: # https://umami.example.com/script.js
+  website_id: # <your website id>

+# Plausible Analytics
+# See: https://plausible.io/
+plausible:
+  enable: false
+  script_url: # https://plausible.io/js/script.js
+  site_domain: # www.example.com
```
### ⭐ Features
* Putting blogroll and related-posts in separate sidebar-inner elements by @stevenjoezhang in https://github.com/next-theme/hexo-theme-next/pull/593
* Move custom text settings to language file ([de453da](https://github.com/next-theme/hexo-theme-next/commit/de453da84073855b849f4fda798efd7e84b40a16))
Options for string translation are removed from `_config.yml`, to support multilingual websites. To customize the translations, you need to create a `languages.yml` file in `source/_data` directory, then add codes like this:
```yml
zh-CN:
  sidebar:
    links: 链接
  widget:
    github: 在 GitHub 上关注我
    chat: 聊天
  reward:
    comment: 支持一根棒棒糖！

en:
  sidebar:
    links: Friends
```
* Remove widgetpack rating ([179176e](https://github.com/next-theme/hexo-theme-next/commit/179176e3eddf95c1b87f5e8b902d6a94a40895e4))
```diff
-# Star rating support to each article.
-# To get your ID visit https://widgetpack.com
-rating:
-  enable: false
-  id:     # <app_id>
-  color:  "#fc6423"
```
* Add cc icon in post-copyright ([f9dd986](https://github.com/next-theme/hexo-theme-next/commit/f9dd9869de5a82424452ab77796f240e3f594b97))
* Add motion.transition.menu_item ([705201b](https://github.com/next-theme/hexo-theme-next/commit/705201bde3fff01bc95ea07514c2b1dfb3f0c74e))
```diff
motion:
  transition:
+    menu_item: fadeInDown
```
### 🐞 Bug Fixes
* Fix URL of related posts ([243d81e](https://github.com/next-theme/hexo-theme-next/commit/243d81ed8ead93eac404b7df81bd0cbb0d68d2bb))
* Fix span.social-link color ([c09c78c](https://github.com/next-theme/hexo-theme-next/commit/c09c78c36cac623a88ecf065b1b880438f4139ee))
* Fix body.sidebar-active content width ([0e79d30](https://github.com/next-theme/hexo-theme-next/commit/0e79d308edfd935085977ed6db51fa4c11ea52ff))
### 🛠 Improvements
* Create issue forms by @njzjz in https://github.com/next-theme/hexo-theme-next/pull/595
* Improve accessibility by @stevenjoezhang in https://github.com/next-theme/hexo-theme-next/pull/597
* Refactor sidebar-toggle, sidebar-dimmer & back-to-top ([c7b92c3](https://github.com/next-theme/hexo-theme-next/commit/c7b92c3af8e8c40545464c2de0f272f7ff7ac40a))
* Optimize semantic elements' name ([b78fb3a](https://github.com/next-theme/hexo-theme-next/commit/b78fb3ac907d283655a3efef3c1e4b503d66a138))
* Refactor header & sidebar style ([25eb0bc](https://github.com/next-theme/hexo-theme-next/commit/25eb0bce33cdc13e598a6498729ad06aa3966ede))
* Adjust back2top style ([29cb5eb](https://github.com/next-theme/hexo-theme-next/commit/29cb5ebf39d59d1c397136c1ec772d6995ba6e89))
* Update addthis share ([4b41762](https://github.com/next-theme/hexo-theme-next/commit/4b417629d13845e1a943205c921d44a2d6d67626))
### 🌀 External Changes
* Add CodeQL workflow for GitHub code scanning by @lgtm-com in https://github.com/next-theme/hexo-theme-next/pull/590
* Update dependency eslint to v8.28.0 by @renovate in https://github.com/next-theme/hexo-theme-next/pull/585
* Update dependency chai to v4.3.7 by @renovate in https://github.com/next-theme/hexo-theme-next/pull/588
* Migrate to stylelint ([3763e0d](https://github.com/next-theme/hexo-theme-next/commit/3763e0d5883c0d07423f1a0166573f5b8271be57))
### 📖 Documentation
* Add license scan report and status by @fossabot in https://github.com/next-theme/hexo-theme-next/pull/594
* Update darkmode README ([d686890](https://github.com/next-theme/hexo-theme-next/commit/d6868907ecb0df91b606a6726cfa2c3c04abbd68))
### 🌍 Localization
* New Crowdin updates by @stevenjoezhang in https://github.com/next-theme/hexo-theme-next/pull/586

## New Contributors
* @lgtm-com made their first contribution in https://github.com/next-theme/hexo-theme-next/pull/590
* @fossabot made their first contribution in https://github.com/next-theme/hexo-theme-next/pull/594

**Full Changelog**: https://github.com/next-theme/hexo-theme-next/compare/v8.13.2...v8.14.0

[Detailed changes for NexT v8.14.0](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.14.0)
