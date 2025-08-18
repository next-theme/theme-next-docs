---
title: NexT 7.3.0 Released
date: 2019-07-31 19:19:11
---

## 💥 Breaking Changes

### Use em instead of px as the font size unit ([#1006](https://github.com/theme-next/hexo-theme-next/pull/1006))

```diff
font:
...
  # Font options:
  # `external: true` will load this font family from `host` above.
  # `family: Times New Roman`. Without any quotes.
-  # `size: x.x`. Use `px` as unit. Default: 16
+  # `size: x.x`. Use `em` as unit. Default: 1 (16px)
```

### Remove fastclick support ([#995](https://github.com/theme-next/hexo-theme-next/pull/995))

```diff
-# Polyfill to remove click delays on browsers with touch UIs.
-# Dependencies: https://github.com/theme-next/theme-next-fastclick
-fastclick: false
...
vendors:
...
-  # Internal version: 1.0.6
-  # See: https://github.com/ftlabs/fastclick
-  # Example:
-  # fastclick: //cdn.jsdelivr.net/npm/fastclick@1/lib/fastclick.min.js
-  # fastclick: //cdnjs.cloudflare.com/ajax/libs/fastclick/1.0.6/fastclick.min.js
-  fastclick:
```

### Remove baidushare support ([#967](https://github.com/theme-next/hexo-theme-next/pull/967))

```diff
-# Baidu Share (does not support https).
-baidushare:
-  #type: button
-  #type: slide
```

### Refactor several components in `_config.yml` ([#965](https://github.com/theme-next/hexo-theme-next/pull/965))

#### Remove two options for simplicity

```diff
avatar:
...
-  # The value of opacity should be choose from 0 to 1 to set the opacity of the avatar.
-  opacity: 1
...
codeblock:
-  # Manual define the border radius in codeblock, leave it blank for the default value: 1
-  border_radius:
```

#### Refactor two options

```diff
-custom_logo:
-  enable: false
-  image: #/uploads/custom-logo.jpg
+custom_logo: #/uploads/custom-logo.jpg
...
-# Code Highlight theme
-# Available values: normal | night | night eighties | night blue | night bright
-# https://github.com/chriskempson/tomorrow-theme
-highlight_theme: normal
codeblock:
+  # Code Highlight theme
+  # Available values: normal | night | night eighties | night blue | night bright
+  # See: https://github.com/chriskempson/tomorrow-theme
+  highlight_theme: normal
```

#### Refactor option and parameters for page loading progress bar

```diff
-pace: false
-# Themes list:
-# pace-theme-big-counter | pace-theme-bounce | pace-theme-barber-shop | pace-theme-center-atom
-# pace-theme-center-circle | pace-theme-center-radar | pace-theme-center-simple | pace-theme-corner-indicator
-# pace-theme-fill-left | pace-theme-flash | pace-theme-loading-bar | pace-theme-mac-osx | pace-theme-minimal
-pace_theme: pace-theme-minimal
+pace:
+  enable: false
+  # Themes list:
+  # big-counter | bounce | barber-shop | center-atom | center-circle | center-radar | center-simple
+  # corner-indicator | fill-left | flat-top | flash | loading-bar | mac-osx | material | minimal
+  theme: minimal
```

### Refactor sidebar-dimmer ([#964](https://github.com/theme-next/hexo-theme-next/pull/964))

```diff
sidebar:
...
-  # Click any blank part of the page to close sidebar (only for Muse | Mist).
-  dimmer: false
```

### Make sidebar position optional for all schemes ([#952](https://github.com/theme-next/hexo-theme-next/pull/952))

```diff
sidebar:
-  # Sidebar Position, available values: left | right (only for Pisces | Gemini).
+  # Sidebar Position.
  position: left
  #position: right
```

## 🌀 External Changes

- Configure JSHint ([#1035](https://github.com/theme-next/hexo-theme-next/pull/1035))
- Update reading_progress vendor version number ([#946](https://github.com/theme-next/hexo-theme-next/pull/946))

## 🌟 New Features

- Console reminder if new version released ([#1002](https://github.com/theme-next/hexo-theme-next/pull/1002))
- Add medium-zoom support ([#987](https://github.com/theme-next/hexo-theme-next/pull/987))
- Add new tag caniuse ([#984](https://github.com/theme-next/hexo-theme-next/pull/984))
- Add new filter type `theme_inject` ([#868](https://github.com/theme-next/hexo-theme-next/pull/868))

## ⭐ Features

- Drop IE support ([#1023](https://github.com/theme-next/hexo-theme-next/pull/1023))
- Refactor search services ([#1012](https://github.com/theme-next/hexo-theme-next/pull/1012))
- Disable selection for highlight meta ([#977](https://github.com/theme-next/hexo-theme-next/pull/977))
- New copy_button style: mac ([#968](https://github.com/theme-next/hexo-theme-next/pull/968))

## 🛠 Improvements

- Revert using one line macro ([#1033](https://github.com/theme-next/hexo-theme-next/pull/1033))
- Use HTML5 syntax instead of XHTML ([#1032](https://github.com/theme-next/hexo-theme-next/pull/1032))
- Reduce unnecessary blank lines in templates ([#1030](https://github.com/theme-next/hexo-theme-next/pull/1030))
- Refactor share & analytics ([#1022](https://github.com/theme-next/hexo-theme-next/pull/1022))
- Obey ESLint rules ([#1019](https://github.com/theme-next/hexo-theme-next/pull/1019))
- Refactor search services ([#1012](https://github.com/theme-next/hexo-theme-next/pull/1012))
- Optimize stylesheet ([#1013](https://github.com/theme-next/hexo-theme-next/pull/1013))
- Refactor comments using theme_inject ([#998](https://github.com/theme-next/hexo-theme-next/pull/998))
- Refactor Muse menu on mobile ([#1014](https://github.com/theme-next/hexo-theme-next/pull/1014))
- Make external google font better ([#1011](https://github.com/theme-next/hexo-theme-next/pull/1011))
- Remove unnecessary files after hexo generate ([#991](https://github.com/theme-next/hexo-theme-next/pull/991))
- Remove all hardcoded font sizes ([#1005](https://github.com/theme-next/hexo-theme-next/pull/1005))
- Optimize the loading of next-boot.js and some 3rd-party plugins ([#990](https://github.com/theme-next/hexo-theme-next/pull/990))
- Refactor layout ([#985](https://github.com/theme-next/hexo-theme-next/pull/985))
- Cache sidebar site-overview ([#971](https://github.com/theme-next/hexo-theme-next/pull/971))
- Update devDependencies ([#966](https://github.com/theme-next/hexo-theme-next/pull/966))
- Allow delayed loading of three.js ([#935](https://github.com/theme-next/hexo-theme-next/pull/935))
- Repalce pseudo-classes with pseudo-elements ([#953](https://github.com/theme-next/hexo-theme-next/pull/953))
- Rebuild ALL-CONTRIBUTORS-LIST in README.md ([#944](https://github.com/theme-next/hexo-theme-next/pull/944))
- Group Pictures layout ([#931](https://github.com/theme-next/hexo-theme-next/pull/931))
- Group Pictures calculation ([#929](https://github.com/theme-next/hexo-theme-next/pull/929))

## 🐞 Bug Fixes

- Fix a bug when `theme.font` has empty family value ([#1015](https://github.com/theme-next/hexo-theme-next/pull/1015))
- Fix site title's external font family bug ([#1007](https://github.com/theme-next/hexo-theme-next/pull/1007))
- Fix list rendering problem when the list item contains mathjax formulae ([#1004](https://github.com/theme-next/hexo-theme-next/pull/1004))
- Make lazyload working again ([#957](https://github.com/theme-next/hexo-theme-next/pull/957))
- Load velocity only if motion is enabled ([#951](https://github.com/theme-next/hexo-theme-next/pull/951))

## 📖 Documentation

- Update docs in `_config.yml` ([#1034](https://github.com/theme-next/hexo-theme-next/pull/1034))
- Update docs ([#1001](https://github.com/theme-next/hexo-theme-next/pull/1001))
- Create `page settings` part in `_config.yml` ([#997](https://github.com/theme-next/hexo-theme-next/pull/997))
- Update docs ([#978](https://github.com/theme-next/hexo-theme-next/pull/978))
- Create Awesome list ([#947](https://github.com/theme-next/hexo-theme-next/pull/947))
- Update docs in `_config.yml` ([#959](https://github.com/theme-next/hexo-theme-next/pull/959))

## 🌍 Localization

- New Crowdin translations ([#940](https://github.com/theme-next/hexo-theme-next/pull/940))

***

For full changes, see the [comparison between v7.2.0 and v7.3.0](https://github.com/theme-next/hexo-theme-next/compare/v7.2.0...v7.3.0)

[Detailed changes for NexT v7.3.0](https://github.com/theme-next/hexo-theme-next/releases/tag/v7.3.0)
