---
title: NexT 6.3.0 Released
date: 2018-05-16 12:28:16
---

## Breaking Changes

### Added avatar rounded & opacity & rotated feature ([#267](https://github.com/theme-next/hexo-theme-next/pull/267))

#### Old configuration:

```diff
 # Sidebar Avatar
-# in theme directory(source/images): /images/avatar.gif
-# in site  directory(source/uploads): /uploads/avatar.gif
-#avatar: /images/avatar.gif
```

#### New configuration:

```diff
 # Sidebar Avatar
+avatar:
+  # in theme directory(source/images): /images/avatar.gif
+  # in site  directory(source/uploads): /uploads/avatar.gif
+  # You can also use other linking images.
+  url: #/images/avatar.gif
+  # If true, the avatar would be displayed in circle.
+  rounded: false
+  # The value of opacity should be choose from 0 to 1 to set the opacity of the avatar.
+  opacity: 1
+  # If true, the avatar would be rotated with the cursor.
+  rotated: false
```

## Features

- Added Hexo and NexT environment variables. ([#240](https://github.com/theme-next/hexo-theme-next/pull/240))
- Added the support for copy result in code block. ([#282](https://github.com/theme-next/hexo-theme-next/pull/282))
- Added the support for automatic equation numbering with Mathjax. ([#275](https://github.com/theme-next/hexo-theme-next/pull/275))
- Added custom language support feature. ([#253](https://github.com/theme-next/hexo-theme-next/pull/253))
- ~~Allow customized copyright contents ([#254](https://github.com/theme-next/hexo-theme-next/pull/254))~~ Feature already exists in [#253](https://github.com/theme-next/hexo-theme-next/pull/253)

## Improvements

- Updated translations for core languages. ([#239](https://github.com/theme-next/hexo-theme-next/pull/239) , [#243](https://github.com/theme-next/hexo-theme-next/pull/243) , [#252](https://github.com/theme-next/hexo-theme-next/pull/252) , [#285](https://github.com/theme-next/hexo-theme-next/pull/285))
- Updated the Telegram links in README.md. (a99777e)
- Aligned badges in README.md. (0fec1e6)
- Updated the badges in README.md. ([#250](https://github.com/theme-next/hexo-theme-next/pull/250) , d599c4e)
- Changed the copy-button position to absolute. ([#242](https://github.com/theme-next/hexo-theme-next/pull/242) )
- Removed `author` translated key introduced by Duoshuo. (20ece25)
- Fixed errors in document for LeanCloud Counter Security Plugin. ([#255](https://github.com/theme-next/hexo-theme-next/pull/255) )
- Removed Houndy and JSHint linter files. (e383523)
- Updated the rss annotation using site's feed link. (d2c74b3)
- Temporarily changed the `node_js` to LTS node version. (2eacca2)

## Bug Fixes

- Fixed text font of the Mist scheme on mobile. ([#262](https://github.com/theme-next/hexo-theme-next/pull/262))
- Fixed logic bug in Han. ([#260](https://github.com/theme-next/hexo-theme-next/pull/260))
- Fixed the incorrect URL decoding of `more` with `scroll_to_more`. ([#293](https://github.com/theme-next/hexo-theme-next/pull/293), [4cacb10](http://github.com/theme-next/hexo-theme-next/commit/4cacb103b1350b8e3805f343d2c86932a9de383d))

***

For full changes, see the [comparison between 6.2.0 and 6.3.0](https://github.com/theme-next/hexo-theme-next/compare/v6.2.0...v6.3.0)

[Detailed changes for NexT v6.3.0](https://github.com/theme-next/hexo-theme-next/releases/tag/v6.3.0)
