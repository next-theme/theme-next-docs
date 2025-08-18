---
title: NexT 8.20.0 Released
date: 2024-05-01 13:18:37
---

<!-- Release notes generated using configuration in .github/release.yml at v8.20.0 -->

## What's Changed
### 💥 Breaking Changes
* Feature: display sidebar on mobile for Pisces and Gemini by @triccsr in https://github.com/next-theme/hexo-theme-next/pull/710
```diff
sidebar:
-  # Manual define the sidebar width. If commented, will be default for:
-  # Muse | Mist: 320
-  # Pisces | Gemini: 240
-  #width: 300
+  # Sidebar width.
+  # Applicable to Muse | Mist and mobile of Pisces | Gemini.
+  width_expanded: 320
+  # Applicable to desktop of Pisces | Gemini.
+  width_dual_column: 240
```
### 🌟 New Features
* Add post_count helper ([26d682c](https://github.com/next-theme/hexo-theme-next/commit/26d682cfa28a5796fd0c9381480bbc40056ca2f6))
* Support for hiding page header ([ca0e6f0](https://github.com/next-theme/hexo-theme-next/commit/ca0e6f0a0e0c5f4054528b5001c38956ed67a2aa))
* Add link posts feature ([4cba2a3](https://github.com/next-theme/hexo-theme-next/commit/4cba2a3c4403d692a32fa9ad6536a1561a75bb4d))
### 🐞 Bug Fixes
* Fix utterances/giscus with pjax by @wangjiezhe in https://github.com/next-theme/hexo-theme-next/pull/779
* Fix undefind in group-pictures ([2195b01](https://github.com/next-theme/hexo-theme-next/commit/2195b01d8c6123f1c71e02741614ac0dbc5e0609))
### 🛠 Improvements
* Reorder sidebar animation ([f7014d3](https://github.com/next-theme/hexo-theme-next/commit/f7014d3f1630d30576f2fdf5f4da182ef8759612))
* Update .category-list-count style ([3d34a11](https://github.com/next-theme/hexo-theme-next/commit/3d34a1163fee0739e1afc28596ef7fd1d6c843ff))
* Refactor .menu-item style ([6bf97f6](https://github.com/next-theme/hexo-theme-next/commit/6bf97f6e49fde6779f5a46e064b2e252caf42ba0))
### 🌀 External Changes
* Update dependency stylelint to v16.4.0 by @renovate in https://github.com/next-theme/hexo-theme-next/pull/774
* Update dependency mocha to v10.4.0 by @renovate in https://github.com/next-theme/hexo-theme-next/pull/776
* Update dependency hexo-renderer-marked to v6.3.0 by @renovate in https://github.com/next-theme/hexo-theme-next/pull/781
* Update dependency eslint to v9 by @renovate in https://github.com/next-theme/hexo-theme-next/pull/783
* Update dependency hexo to v7.2.0 by @renovate in https://github.com/next-theme/hexo-theme-next/pull/790
### 📖 Documentation
* Remove dollar signs before commands ([cd1a082](https://github.com/next-theme/hexo-theme-next/commit/cd1a082795249ff222ef953897573e7059255c40))

## New Contributors
* @wangjiezhe made their first contribution in https://github.com/next-theme/hexo-theme-next/pull/779
* @triccsr made their first contribution in https://github.com/next-theme/hexo-theme-next/pull/710

**Full Changelog**: https://github.com/next-theme/hexo-theme-next/compare/v8.19.2...v8.20.0

[Detailed changes for NexT v8.20.0](https://github.com/next-theme/hexo-theme-next/releases/tag/v8.20.0)
