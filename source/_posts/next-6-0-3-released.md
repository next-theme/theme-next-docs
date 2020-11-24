---
title: NexT 6.0.3 Released
date: 2018-01-30 04:55:20
---

## Breaking Changes

### Rename some language code

Please change your `hexo/_config.yml`:
```yml
language: <new language-code>
```

- `zh-Hans` to `zh-CN` for better compatability. ([e1e6cf8](http://github.com/theme-next/hexo-theme-next/commit/e1e6cf8fe0e0b6f22fed22e766019be74f83de5d))
- `fr-FR` and `nl-NL` to `fr` and `nl`. ([ee91573](http://github.com/theme-next/hexo-theme-next/commit/ee915731dc45e26b4fa8a623a864f8bfb31bf3fe), [ec5e9db](http://github.com/theme-next/hexo-theme-next/commit/ec5e9db78590484227c5bd9af026c23a65c6c736))

### Refactored `license_content` & Fixed excess spaces. ([4003a0e](http://github.com/theme-next/hexo-theme-next/commit/4003a0ea0e364a090875bb2bc024ba3eb51ef4ca))

## Features

- Added: Bookmark feature ([#63](https://github.com/theme-next/hexo-theme-next/pull/63))
  ```yml
  bookmark:
    enable: true
    save: auto # or manual
  ```
- Added a switch to choice whether it will unescape the HTML strings for local searching ([#90](https://github.com/theme-next/hexo-theme-next/pull/90))
  ```yml
  local_search:
    ...
    # unescape html strings to the readable one
    unescape: true
  ```
- Added: Support to set whether the sidebar will be shown in each single post. ([#93](https://github.com/theme-next/hexo-theme-next/pull/93))
  ```md
  ...
  date: 2018-01-28 21:16:00
  sidebar: false
  ---

  ...
  ```
- Added docs of Algolia search ([#91](https://github.com/theme-next/hexo-theme-next/pull/91))

## Optimizations

- Updated: Rename `en.yml` on `_en.yml` to set undefined language as default.
  If language file will not find by Hexo, Hexo will use first finded language (_en.yml). ([03e357b](http://github.com/theme-next/hexo-theme-next/commit/03e357b5181f8d8f25c5519d04178723d02d020d))
- Updated: Rename «Words count in article» on «Symbols count in article». ([9d46733](http://github.com/theme-next/hexo-theme-next/commit/9d46733e2f9b776dfe1bab5e65be0937dd4ca5b8))
- Updated translation for the core languages.
- Updated `math.per_page` to default `true` to make math lazyloaded. ([#66](https://github.com/theme-next/hexo-theme-next/pull/66))
- Updated: Add more seo things. ([#85](https://github.com/theme-next/hexo-theme-next/pull/85))

## Bug Fixes

- Fixed a little mistakes in `MATH.md` docs file. ([a3a2321](http://github.com/theme-next/hexo-theme-next/commit/a3a2321771e92c60766214f922b22c20520e0a58), [6582d75](http://github.com/theme-next/hexo-theme-next/commit/6582d755efaf02fc4e81071827df4c58af842f89), [79582ed](http://github.com/theme-next/hexo-theme-next/commit/79582ed4768133ef286ca06f9a781339762357ba))
- Fixed: Math script loaded in tags and archives pages ([#78](https://github.com/theme-next/hexo-theme-next/pull/78), [#81](https://github.com/theme-next/hexo-theme-next/pull/81))
- Fixed the exists categories/tags count issue in the sidebar. ([#87](https://github.com/theme-next/hexo-theme-next/pull/87), addition fix to [#42](https://github.com/theme-next/hexo-theme-next/pull/42))
- Fixed an issue about the algolia search overlay. ([#89](https://github.com/theme-next/hexo-theme-next/pull/89))

***

For full changes, see the [comparison between 6.0.2 and 6.0.3](https://github.com/theme-next/hexo-theme-next/compare/v6.0.2...v6.0.3)

[Detailed changes for NexT v6.0.3](https://github.com/theme-next/hexo-theme-next/releases/tag/v6.0.3)
