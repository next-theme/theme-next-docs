---
title: NexT 8.2.2 Released
date: 2021-02-28 13:17:25
---

## ⭐ Features

- Add external link icon options ([#192](https://github.com/next-theme/hexo-theme-next/pull/192))
```diff
# Automatically add external URL with Base64 encrypt & decrypt.
exturl: false
+# If true, an icon will be attached to each external URL
+exturl_icon: true
```
- Fix exturl title ([#193](https://github.com/next-theme/hexo-theme-next/pull/193))
- New gitalk proxy option ([#205](https://github.com/next-theme/hexo-theme-next/pull/205))
```diff
gitalk:
  ...
+  # When the official proxy is not available, you can change it to your own proxy address
+  proxy: https://cors-anywhere.herokuapp.com/https://github.com/login/oauth/access_token # This is official proxy address
```

## 🛠 Improvements

- Use minified js files for jsdelivr and cdnjs ([#207](https://github.com/next-theme/hexo-theme-next/pull/207))

## 🌀 External Changes

- Update dependency hexo to v5.4.0 ([#210](https://github.com/next-theme/hexo-theme-next/pull/210))
- Update dependency eslint to v7.21.0 ([#206](https://github.com/next-theme/hexo-theme-next/pull/206))
- Update dependency mocha to v8.3.0 ([#204](https://github.com/next-theme/hexo-theme-next/pull/204))
- Update dependency hexo-renderer-marked to v4 ([#203](https://github.com/next-theme/hexo-theme-next/pull/203))
- Update dependency chai to v4.3.0 ([#194](https://github.com/next-theme/hexo-theme-next/pull/194))
- Update peaceiris/actions-label-commenter action to v1.9.1 ([#202](https://github.com/next-theme/hexo-theme-next/pull/202))

## 🌍 Localization

- New Crowdin updates ([#201](https://github.com/next-theme/hexo-theme-next/pull/201))

***

For full changes, see the [comparison between v8.2.1 and v8.2.2](https://github.com/next-theme/hexo-theme-next/compare/v8.2.1...v8.2.2)

[Detailed changes for NexT v8.2.2](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.2.2)
