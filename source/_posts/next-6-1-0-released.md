---
title: NexT 6.1.0 Released
date: 2018-04-01 04:59:41
---

## Breaking Changes

### Refactor footer icon with animation ([#195](https://github.com/theme-next/hexo-theme-next/pull/195))

#### Old configuration:

```diff
footer:
  # Specify the date when the site was setup.
  # If not defined, current year will be used.
  # since: 2015
  # Icon between year and copyright info.
-  icon: user
```

#### New configuration:

```diff
footer:
  # Specify the date when the site was setup.
  # If not defined, current year will be used.
  # since: 2015
  # Icon between year and copyright info.
+  icon:
+    # Icon name in fontawesome, see: https://fontawesome.com/v4.7.0/icons
+    # `heart` is recommended with animation in red (#ff0000).
+    name: user
+    # If you want to animate the icon, set it to true.
+    animated: false
+    # Change the color of icon, using Hex Code.
+    color: "[#808](https://github.com/theme-next/hexo-theme-next/pull/808)080"
```

## Features

- Added comment count on mobile. ([#185](https://github.com/theme-next/hexo-theme-next/pull/185))
- Added caption for comment. ([#186](https://github.com/theme-next/hexo-theme-next/pull/186))
- Added border-radius settings of code block and updated its style with a caption. ([#194](https://github.com/theme-next/hexo-theme-next/pull/194))
  ```diff
  +# Manual define the border radius in codeblock, using a space indent.
  +# Leave it empty for the default 1
  +codeblock:
  +  border_radius:
  +
  ```
- Added `backlog` label to exclude labels. ([2a841a9](http://github.com/theme-next/hexo-theme-next/commit/2a841a9904962cd4d1d55689c4b0a0449cb18b3a))
- Added English document for LeanCloud Counter Security Plugin. ([#174](https://github.com/theme-next/hexo-theme-next/pull/174))
- Added English and Chinese document for contributing.md. ([#192](https://github.com/theme-next/hexo-theme-next/pull/192))
- Added English and Chinese document for code-of-couduct.md. ([#198](https://github.com/theme-next/hexo-theme-next/pull/198))

## Improvements

- Reverted the beta version of LeanCloud Counter Security Plugin. The option `leancloud_visitors.security: true` by default at present. ([d297cf5](http://github.com/theme-next/hexo-theme-next/commit/d297cf55c16c902420f4b28798ff0f1463489f95))
- Updated English document for LeanCloud Counter Security Plugin. ([#175](https://github.com/theme-next/hexo-theme-next/pull/175), [#177](https://github.com/theme-next/hexo-theme-next/pull/177), [#204](https://github.com/theme-next/hexo-theme-next/pull/204))
- Updated Chinese document for LeanCloud Counter Security Plugin. ([#177](https://github.com/theme-next/hexo-theme-next/pull/177), [#204](https://github.com/theme-next/hexo-theme-next/pull/204))
- Optimized symbol colon in item text of post meta. ([#188](https://github.com/theme-next/hexo-theme-next/pull/188))
- Updated translations for core languages. ([c6aaa42](http://github.com/theme-next/hexo-theme-next/commit/c6aaa426078a8b3c2925f2c0736914cc069ab9b7), [#189](https://github.com/theme-next/hexo-theme-next/pull/189))
- Updated links in README.md. ([bd6c789](http://github.com/theme-next/hexo-theme-next/commit/bd6c789c43945c318b6913300f3da666d4a9445e))
- Updated CDN instructions in Chinese README.md. ([ca2554b](http://github.com/theme-next/hexo-theme-next/commit/ca2554bcfe766a01def2cb723c52a020d94a2060))

## Bug Fixes

- Fixed a bug in `utils.js` to prevent the error of `i is not defined`. ([#205](https://github.com/theme-next/hexo-theme-next/pull/205))

***

For full changes, see the [comparison between 6.0.6 and 6.1.0](https://github.com/theme-next/hexo-theme-next/compare/v6.0.6...v6.1.0)

[Detailed changes for NexT v6.1.0](https://github.com/theme-next/hexo-theme-next/releases/tag/v6.1.0)
