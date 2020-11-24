---
title: NexT 6.2.0 Released
date: 2018-04-16 14:06:52
---

## Breaking Changes

### Minimal correct support for NexT is Hexo v3.5.0 for now.

It's not actually breaking changes, just after this version **highly recommend** to use NexT with at least **Hexo v3.5.0 or higher** for avoid all possible bugs.

**[Hexo v3.5.0 also](https://github.com/hexojs/hexo/releases/tag/3.5.0)** provides:

* Replaced `swig` by `swig-templates` to mitigate `uglifyjs` 2.4 security vulnerability: [hexojs/hexo#2949](https://github.com/hexojs/hexo/pull/2949)
* Additional templates support which will be used in next NexT releases.

**P.S.** You can still use old Hexo versions, but NexT will not guarantee in future releases for correct rendering.

### Added `footer.powered.version` option to display Hexo version in footer. ([#214](https://github.com/theme-next/hexo-theme-next/pull/214), [8c139be](http://github.com/theme-next/hexo-theme-next/commit/8c139bef2ce84e86d7cbf791d286e02243629642))

#### Old configuration:

```diff
footer:
-  powered: true
```

#### New configuration:

```yml
footer:
  powered:
    # Hexo link (Powered by Hexo).
    enable: true
    # Version info of Hexo after Hexo link (vX.X.X).
    version: true
```

### Refactored `post_meta.updated_at` option & replaced `updated_diff` by `another_day` option ([#223](https://github.com/theme-next/hexo-theme-next/pull/223), [#228](https://github.com/theme-next/hexo-theme-next/pull/228))

#### Old configuration:

```diff
post_meta:
  item_text: true
  created_at: true
- updated_at: false
- # Only show 'updated' if different from 'created'.
- updated_diff: false
- # If true, post's time format will be hexo config's date_format + ' ' + time_format.
- date_time_merge: false
```

#### New configuration:

```yml
post_meta:
  item_text: true
  created_at: true
  updated_at:
    enabled: true
    # If true, show updated date label only if `updated date` different from 'created date' (post edited in another day than was created).
    # And if post will edited in same day as created, edited time will show in popup title under created time label.
    # If false show anyway, but if post edited in same day, show only edited time.
    another_day: true
  categories: true
```

## Features

- Added post edit button ([#208](https://github.com/theme-next/hexo-theme-next/pull/208), [30bccfc](http://github.com/theme-next/hexo-theme-next/commit/30bccfc87578510c55774064b3e7994df90e019b))
- Added support for [`hexo-symbols-count-time` v0.4.0](https://github.com/theme-next/hexo-symbols-count-time/releases/tag/v0.4.0) ([#233](https://github.com/theme-next/hexo-theme-next/pull/233))
- Added copy codeblock button ([#234](https://github.com/theme-next/hexo-theme-next/pull/234), [#238](https://github.com/theme-next/hexo-theme-next/pull/238))

## Improvements

- Update guide for creating releases in CONTRIBUTING.MD ([#213](https://github.com/theme-next/hexo-theme-next/pull/213))
- Remove unused language files. ([1d89f8f](http://github.com/theme-next/hexo-theme-next/commit/1d89f8f779affa71ff576657c944f99260be8a68))
- Updated translations for core languages. ([#211](https://github.com/theme-next/hexo-theme-next/pull/211), [#235](https://github.com/theme-next/hexo-theme-next/pull/235))

## Bug Fixes

- Increase page loading performance by refactor `menu-item-active` class. ([6f787af](http://github.com/theme-next/hexo-theme-next/commit/6f787af30855c34a8f1c1d06124baf57c7459371))
  Refactored files hierarchy for header components. ([#221](https://github.com/theme-next/hexo-theme-next/pull/221))
- Fix for default language if no `language` in Hexo config defined. ([#210](https://github.com/theme-next/hexo-theme-next/pull/210))
  Renamed back `_en.yml` on `en.yml` and setted `default.yml` to link it. ([adc76b7](http://github.com/theme-next/hexo-theme-next/commit/adc76b799fc16996b117d8c81b34127a4149fb34))
- Refactored menu items & badges.
  Fixed bug with appear dot in submenu with disabled badges in Pisces/Gemini schemes. ([#229](https://github.com/theme-next/hexo-theme-next/pull/229))

***

For full changes, see the [comparison between 6.1.0 and 6.2.0](../../compare/v6.1.0...v6.2.0)

[Detailed changes for NexT v6.2.0](https://github.com/theme-next/hexo-theme-next/releases/tag/v6.2.0)
