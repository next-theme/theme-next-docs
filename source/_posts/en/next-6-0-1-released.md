---
title: NexT 6.0.1 Released
date: 2018-01-10 16:13:05
---

## Breaking changes

### Remove Duoshuo ([#14](https://github.com/theme-next/hexo-theme-next/pull/14))

#### Old configuration:
```diff
-# Duoshuo ShortName
-#duoshuo_shortname:

-# Share
-#duoshuo_share: true

-# Make duoshuo show UA
-# user_id must NOT be null when admin_enable is true!
-# you can visit http://dev.duoshuo.com get duoshuo user id.
-duoshuo_info:
-  ua_enable: true
-  admin_enable: false
-  user_id: 0
-  #admin_nickname: Author
```

### Menu Icons ([2412fbc](http://github.com/theme-next/hexo-theme-next/commit/2412fbc6f0df6d558edcd11021b0faf8ddfce465))

#### Old configuration:
```diff
-# Enable/Disable menu icons. 
-menu_icons: 
-  enable: true
```

#### New configuration:
```yml
# Enable/Disable menu icons / item badges. 
menu_settings: 
  icons: true 
```

## Features

- Added `reading_progress` ([#5](https://github.com/theme-next/hexo-theme-next/pull/5))
- Several improvements in main menu on all schemes. ([#8](https://github.com/theme-next/hexo-theme-next/pull/8), [2412fbc](http://github.com/theme-next/hexo-theme-next/commit/2412fbc6f0df6d558edcd11021b0faf8ddfce465))
- Added «Follow me on GitHub» banner option. ([caf0738](http://github.com/theme-next/hexo-theme-next/commit/caf0738c4960e367d431cc303801dd6935f2858a))

## Optimizations

- Clean `duoshuo` plugin due support discontinued from June 1, 2017 ([#14](https://github.com/theme-next/hexo-theme-next/pull/14), [0e5ab06](http://github.com/theme-next/hexo-theme-next/commit/0e5ab0681b8677ec4b58734c3700440fb498b6eb))
- Update path on Local Search dependencies. ([feb1968](http://github.com/theme-next/hexo-theme-next/commit/feb196877d53552b443bf4ef9b82b9ebdc77f2cf))
- Update config for FancyBox 2 & 3. ([fd89b29](http://github.com/theme-next/hexo-theme-next/commit/fd89b29a8d28ac9b87eff22dbe104dc1ca0ab0b6))
- Updated MathJax CDN links & added short docs to them. ([be3528f](http://github.com/theme-next/hexo-theme-next/commit/be3528fd50596e9c67ac1e3ee57f54cc12f06f49))

## Bug Fixes

- Fixed a bug of the reward and the wechat-subscriber template ([#6](https://github.com/theme-next/hexo-theme-next/pull/6))
- Fixed: In mobile, menu content will cover side bar (Muse scheme).
- Fixed menu items excess spaces. ([06f9d8b](http://github.com/theme-next/hexo-theme-next/commit/06f9d8b31657d8c611e35b0e3b17c2bdafc36d24))

***

For full changes, see the [comparison between 6.0.0 and 6.0.1](https://github.com/theme-next/hexo-theme-next/compare/v6.0.0...v6.0.1)

[Detailed changes for NexT v6.0.1](https://github.com/theme-next/hexo-theme-next/releases/tag/v6.0.1)
