---
title: NexT 7.8.0 Released
date: 2020-04-01 01:21:37
---

## 💥 Breaking Changes

- Multilingual switch button support ([#1391](https://github.com/theme-next/hexo-theme-next/pull/1391))
  ```diff
  +# Show multilingual switcher in footer.
  +language_switcher: false
  ```
- Remove `safari_rainbow` option in `_config.yml`
  ```diff
  -# Hide sticky headers and color the menu bar on Safari (iOS / macOS).
  -safari_rainbow: false
  ```

## ⭐ Features

- Simplify `footer.powered` settings ([#1432](https://github.com/theme-next/hexo-theme-next/pull/1432))
  ```diff
  footer:
  ...
  -  powered:
  -    # Hexo link (Powered by Hexo).
  -    enable: true
  -    # Version info of Hexo after Hexo link (vX.X.X).
  -    version: true
  -
  -  theme:
  -    # Theme & scheme info link (Theme - NexT.scheme).
  -    enable: true
  -    # Version info of NexT after scheme info (vX.X.X).
  -    version: true
  +  # Powered by Hexo & NexT
  +  powered: true
  ```
- New `leancloud_visitors` option `server_url` ([#1426](https://github.com/theme-next/hexo-theme-next/pull/1426))
  ```diff
  leancloud_visitors:
  -  betterPerformance: false
  +  # Required for apps from CN region
  +  server_url: # <your server url>
  ```
- Remove `seo` option in `_config.yml` ([#1414](https://github.com/theme-next/hexo-theme-next/pull/1414))

## 🐞 Bug Fixes

- Escaping html in search results ([#1418](https://github.com/theme-next/hexo-theme-next/pull/1418))

## 🛠 Improvements

- Animation for search-popup ([#1427](https://github.com/theme-next/hexo-theme-next/pull/1427))
- Fix dark styles of buttons ([#1409](https://github.com/theme-next/hexo-theme-next/pull/1409))
- Drop PDFObject ([#1400](https://github.com/theme-next/hexo-theme-next/pull/1400))
- Optimize the loading of exturl ([#1394](https://github.com/theme-next/hexo-theme-next/pull/1394))

## 🌀 External Changes

- Drop PDFObject ([#1400](https://github.com/theme-next/hexo-theme-next/pull/1400))

## 📖 Documentation

- Updated recommended CDN URL in _config.yml ([#1398](https://github.com/theme-next/hexo-theme-next/pull/1398))

## 🌍 Localization

- New Crowdin translations ([#1413](https://github.com/theme-next/hexo-theme-next/pull/1413))
- New Crowdin translations ([#1074](https://github.com/theme-next/hexo-theme-next/pull/1074))
- Arabic translation ([#1401](https://github.com/theme-next/hexo-theme-next/pull/1401))

***

For full changes, see the [comparison between v7.7.2 and v7.8.0](https://github.com/theme-next/hexo-theme-next/compare/v7.7.2...v7.8.0)

[Detailed changes for NexT v7.8.0](https://github.com/theme-next/hexo-theme-next/releases/tag/v7.8.0)
