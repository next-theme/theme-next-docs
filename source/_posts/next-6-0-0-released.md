---
title: NexT 6.0.0 Released
date: 2018-01-02 14:49:45
---

Because NexT is growing up with each year, there are more and more external libs, so:

- General maintenance became a harder for all who not only use it, but help with development too.
- Generation speed became slower and slower with each new library. Half of unused libs copied to public dirs for all users and search engines see all this libs too. It's mostly waste files for half NexT users.
- Full weight of NexT distributive at least decrease about 2x, which provides faster download / update speed.

In other words: this changes increase **development speed**, **generation speed** and **download speed**.

### Changes

There are no hard breaking changes between 5.1.x and 6.0.x versions. It's change major version to 6 because:

- {% label primary@CHANGED %} Main repo was rebased from [iissnan's][] profile to [theme-next][] organization.
- {% label info@IMPROVED %} Most libraries under the `next/source/lib` directory was moved out to [external repos under NexT organization][theme-next].
- {% label info@IMPROVED %} 3rd-party plugin [hexo-wordcount][] was replaced by [hexo-symbols-count-time][] because `hexo-symbols-count-time` no have any external nodejs dependencies, no have [language filter][] which causes better performance on speed at site generation.
- {% label success@ADDED %} Cache option to increase content generation speed.

### Full Changes

You can also see [full changes for NexT v6.0.0][v6.0.0]

### Update from Version 5

See how to [update from v5 to v6][update-from-v5-to-v6] guide.

### 3rd-party Libraries

See [adding plugins][plugins] section.

[iissnan's]:               https://github.com/iissnan/hexo-theme-next
[theme-next]:              https://github.com/theme-next
[hexo-wordcount]:          https://github.com/willin/hexo-wordcount
[hexo-symbols-count-time]: https://github.com/theme-next/hexo-symbols-count-time
[language filter]:         https://github.com/willin/hexo-wordcount/issues/7
[v6.0.0]:                  https://github.com/theme-next/hexo-theme-next/releases/tag/v6.0.0
[update-from-v5-to-v6]:    /docs/getting-started/upgrade.html
[plugins]:                 /docs/third-party-services/#Adding-Plugins
