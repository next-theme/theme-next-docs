---
title: NexT 6.5.0 Released
date: 2018-11-01 02:25:05
---

## Breaking Changes

### Add options for canvas-nest ([#441](https://github.com/theme-next/hexo-theme-next/pull/441))

#### Old configuration:

```diff
-canvas_nest: false
```
#### New configuration:

```yml
canvas_nest:
  enable: false
  onmobile: true # display on mobile or not
  color: '0,0,255' # RGB values, use ',' to separate
  opacity: 0.5 # the opacity of line: 0~1
  zIndex: -1 # z-index property of the background
  count: 99 # the number of lines
```

## Features

- Feat: Add sina weibo option to social block in sidebar settings ([#456](https://github.com/theme-next/hexo-theme-next/pull/456))
- Add beian option at footer for Chinese website owner ([#438](https://github.com/theme-next/hexo-theme-next/pull/438))
- Add growingio analytics ([#354](https://github.com/theme-next/hexo-theme-next/pull/354))
- Add enable option for `read_more_btn` ([#446](https://github.com/theme-next/hexo-theme-next/pull/446))

## Bug Fixes

- Fix bugs turn on the future of google calendar ([#407](https://github.com/theme-next/hexo-theme-next/pull/407))
- Delete Bootcss settings and docs ([#439](https://github.com/theme-next/hexo-theme-next/pull/439))
- Fixes for `b2t` & variables refactoring. ([#434](https://github.com/theme-next/hexo-theme-next/pull/434))
- Fix for `offset` option. [2] ([#433](https://github.com/theme-next/hexo-theme-next/pull/433))
- Fixed resize filter & affix & back to top for sidebar ([#431](https://github.com/theme-next/hexo-theme-next/pull/431), [#432](https://github.com/theme-next/hexo-theme-next/pull/432))

***

For full changes, see the [comparison between 6.4.2 and 6.5.0](https://github.com/theme-next/hexo-theme-next/compare/v6.4.2...v6.5.0)

[Detailed changes for NexT v6.5.0](https://github.com/theme-next/hexo-theme-next/releases/tag/v6.5.0)
