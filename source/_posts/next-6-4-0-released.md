---
title: NexT 6.4.0 Released
date: 2018-08-01 15:52:48
---

## Breaking Changes

### Removed HyperComments because for now only paid. =( ([#342](https://github.com/theme-next/hexo-theme-next/pull/342))

### Custom sidebar width & content width for all schemes. ([#339](https://github.com/theme-next/hexo-theme-next/pull/339))

#### Old configuration:

```diff
-# Manual define the max content width
-# !!Only available for Gemini Scheme currently
-# Leave it empty for the default 75% (suggest not less than 1000px)
-#max_content_width: 1000px

-# Manual define the sidebar width
-# !!Only available for Gemini Scheme currently
-# Leave it empty for the default 240
-sidebar_width:
```

#### New configuration:

```yml
sidebar:
  # Manual define the sidebar width.
  # If commented, will be default for:
  # Muse | Mist: 320
  # Pisces | Gemini: 240
  width: 300
```

## Features

- Update valine comment system version. ([#345](https://github.com/theme-next/hexo-theme-next/pull/345))

## Improvements

- Add Labels Rules guideline ([#355](https://github.com/theme-next/hexo-theme-next/pull/355))
- Simplify post-reward.styl ([#359](https://github.com/theme-next/hexo-theme-next/pull/359))
- New Crowdin translations ([#362](https://github.com/theme-next/hexo-theme-next/pull/362))
- Delete youyan comment ([#360](https://github.com/theme-next/hexo-theme-next/pull/360))
- Update UPDATE-FROM-5.1.X.md ([#324](https://github.com/theme-next/hexo-theme-next/pull/324))
- Add CDN examples for `theme-next-three` ([#335](https://github.com/theme-next/hexo-theme-next/pull/335))

## Bug Fixes

- Refactor add baidu_site_verification in _config.yml ([#322](https://github.com/theme-next/hexo-theme-next/pull/322))
- Replaced `&mdash;` with `&ndash;` for better visibility. ([#368](https://github.com/theme-next/hexo-theme-next/pull/368), [#341](https://github.com/theme-next/hexo-theme-next/pull/341))
- Fixes indentation for `note` and `tabs` tags. ([#358](https://github.com/theme-next/hexo-theme-next/pull/358))
- Refactor the share tools within post-widgets ([#357](https://github.com/theme-next/hexo-theme-next/pull/357))
- Fix the post date display bug ([#302](https://github.com/theme-next/hexo-theme-next/pull/302))
- Fixed NexT `package.json` path on Windows. ([#343](https://github.com/theme-next/hexo-theme-next/pull/343))

***

For full changes, see the [comparison between 6.3.0 and 6.4.0](https://github.com/theme-next/hexo-theme-next/compare/v6.3.0...v6.4.0)

[Detailed changes for NexT v6.4.0](https://github.com/theme-next/hexo-theme-next/releases/tag/v6.4.0)
