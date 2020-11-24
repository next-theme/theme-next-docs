---
title: NexT 6.6.0 Released
date: 2018-12-01 10:01:55
---

## Breaking Changes

### Refactored Creative Commons copyright ([#463](https://github.com/theme-next/hexo-theme-next/pull/463))

Joined `post_copyright` and `creative_commons` options into one.

#### Old configuration:

```diff
-# Creative Commons 4.0 International License.
-# http://creativecommons.org/
-# Available: by | by-nc | by-nc-nd | by-nc-sa | by-nd | by-sa | zero
-#creative_commons: by-nc-sa
-#creative_commons:

-# Declare license on posts
-post_copyright:
-  enable: false
-  license: <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/" rel="external nofollow" target="_blank">CC BY-NC-SA 4.0</a>
```

#### New configuration:

```yml
# Creative Commons 4.0 International License.
# https://creativecommons.org/share-your-work/licensing-types-examples/
# Available: by | by-nc | by-nc-nd | by-nc-sa | by-nd | by-sa | zero
creative_commons:
  license: by-nc-sa
  sidebar: false
  post: false
```

### Global improvement for ExtURL ([#463](https://github.com/theme-next/hexo-theme-next/pull/463))

From now no need to use `exturl` tag – all external links will be automatically replaced in posts (and in templates) with spanned links if `exturl` option will be enabled.

#### Old configuration:

```diff
 social_icons:
  enable: true
  icons_only: false
  transition: false
- # Dependencies: exturl: true in Tags Settings section below.
- # To encrypt links above use https://www.base64encode.org
- # Example encoded link: `GitHub: aHR0cHM6Ly9naXRodWIuY29tL3RoZW1lLW5leHQ= || github`
- exturl: false

-# External URL with BASE64 encrypt & decrypt.
-exturl: false
```

#### New configuration:

```yml
# Automatically add external URL with BASE64 encrypt & decrypt.
exturl: false
```

### Reward be more intelligent, related issue [#280](https://github.com/theme-next/hexo-theme-next/pull/280) ([#465](https://github.com/theme-next/hexo-theme-next/pull/465))

#### How to use?
In NexT _config.yml:

```yml
# Reward
# If true, reward would be displayed in every article by default.
# And you can show or hide one article specially through add page variable `reward: true/false`.
reward:
  enable: false
  #comment: Donate comment here
  #wechatpay: /images/wechatpay.jpg
  #alipay: /images/alipay.jpg
  #bitcoin: /images/bitcoin.png
```

Or special config in .md:

```yml
---
title: title-name
date: 2018-11-05
...
reward: true/false
---
```

## Features

- Add gitalk comment system ([#464](https://github.com/theme-next/hexo-theme-next/pull/464))
- Add PDFObject and PDF.js support ([#466](https://github.com/theme-next/hexo-theme-next/pull/466))

## Optimizations

- Format code in _config.yml ([#469](https://github.com/theme-next/hexo-theme-next/pull/469))
- Format code & change default CDN for pdfobject ([#470](https://github.com/theme-next/hexo-theme-next/pull/470))
- Add enable option for `read_more_btn` ([#446](https://github.com/theme-next/hexo-theme-next/pull/446))

## Bug Fixes

- Fix the error when the Chinese is included in the hash ([#452](https://github.com/theme-next/hexo-theme-next/pull/452))
- Fix images in an anchor being wrapped as fancybox [#399](https://github.com/theme-next/hexo-theme-next/pull/399) and [#394](https://github.com/theme-next/hexo-theme-next/pull/394) ([#468](https://github.com/theme-next/hexo-theme-next/pull/468))
- Fix mathjax overflow ([#488](https://github.com/theme-next/hexo-theme-next/pull/488))

***

For full changes, see the [comparison between 6.5.0 and 6.6.0](https://github.com/theme-next/hexo-theme-next/compare/v6.5.0...v6.6.0)

[Detailed changes for NexT v6.6.0](https://github.com/theme-next/hexo-theme-next/releases/tag/v6.6.0)
