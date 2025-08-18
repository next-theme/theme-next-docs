---
title: NexT 7.2.0 Released
date: 2019-07-01 14:21:33
---

## 💥 Breaking Changes

### Remove gitment support ([#939](https://github.com/theme-next/hexo-theme-next/pull/939))

In NexT `_config.yml`:

```diff
-# Gitment
-# Introduction: https://github.com/imsun/gitment
-gitment:
-  enable: false
-  mint: true # RECOMMEND, A mint on Gitment, to support count, language and proxy_gateway
-  count: true # Show comments count in post meta area
-  lazy: false # Comments lazy loading with a button
-  cleanly: false # Hide 'Powered by ...' on footer, and more
-  language: # Force language, or auto switch by theme
-  github_user: # MUST HAVE, Your Github Username
-  github_repo: # MUST HAVE, The name of the repo you use to store Gitment comments
-  client_id: # MUST HAVE, Github client id for the Gitment
-  client_secret: # EITHER this or proxy_gateway, Github access secret token for the Gitment
-  proxy_gateway: # Address of api proxy, See: https://github.com/aimingoo/intersect
-  redirect_protocol: # Protocol of redirect_uri with force_redirect_protocol when mint enabled
```

### Remove Han support ([#912](https://github.com/theme-next/hexo-theme-next/pull/912))

In NexT `_config.yml`:

```diff
-# Han Support
-# Dependencies: https://github.com/theme-next/theme-next-han
-han: false
-
-  # Internal version: 3.3.0
-  # See: https://github.com/ethantw/Han
-  # Example:
-  # han: //cdn.jsdelivr.net/npm/han-css@3/dist/han.min.css
-  # han: //cdnjs.cloudflare.com/ajax/libs/Han/3.3.0/han.min.css
-  han:
```

## 🌀 External Changes

- Remove unneeded leancloud-storage in `theme.vendors` ([#927](https://github.com/theme-next/hexo-theme-next/pull/927))
- Make Valine available ([#926](https://github.com/theme-next/hexo-theme-next/pull/926))
-  Upgrade the internal jQuery to v3.4.1 ([#903](https://github.com/theme-next/hexo-theme-next/pull/903))

## ⭐ Features

- Provide an optional icon option for tags at the bottom of the post ([#896](https://github.com/theme-next/hexo-theme-next/pull/896))

## 🛠 Improvements

- Refactoring post-meta-divider ([#937](https://github.com/theme-next/hexo-theme-next/pull/937))
- Remove unnecessary statements in swig templates ([#928](https://github.com/theme-next/hexo-theme-next/pull/928))
- Use hyphen instead of en dash ([#907](https://github.com/theme-next/hexo-theme-next/pull/907))
- Ignore leancloud visitor from localhost ([#916](https://github.com/theme-next/hexo-theme-next/pull/916))
- Fix word spelling ([#913](https://github.com/theme-next/hexo-theme-next/pull/913))
- Correct the outdated version number of FontAwesome ([#905](https://github.com/theme-next/hexo-theme-next/pull/905))
- Improve page rendering by deferring disqus loading ([#891](https://github.com/theme-next/hexo-theme-next/pull/891))
- Make Tabs flexible ([#704](https://github.com/theme-next/hexo-theme-next/pull/704))
- Restore the previous selection for `copy_button` ([#890](https://github.com/theme-next/hexo-theme-next/pull/890))

## 🐞 Bug Fixes

- Refactoring post-meta-divider ([#937](https://github.com/theme-next/hexo-theme-next/pull/937))
- Fix referer used by LiveRe on non-post pages ([#934](https://github.com/theme-next/hexo-theme-next/pull/934))
- Force include source/lib/font-awesome/ ([#832](https://github.com/theme-next/hexo-theme-next/pull/832))

## 📖 Documentation

- Add detailed description about RSS ([#895](https://github.com/theme-next/hexo-theme-next/pull/895))

***

For full changes, see the [comparison between v7.1.2 and v7.2.0](https://github.com/theme-next/hexo-theme-next/compare/v7.1.2...v7.2.0)

[Detailed changes for NexT v7.2.0](https://github.com/theme-next/hexo-theme-next/releases/tag/v7.2.0)
