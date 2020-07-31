---
title: Update from Version 5
description: NexT User Docs – Update from v5.x / v7.x
---

NexT version 5 works fine with Hexo 3, but for frequent users, you maybe need to upgrade version 5 to 8 to get features and supports in new [Theme-Next](https://github.com/next-theme/hexo-theme-next) repository.

There are no hard breaking changes between 5.1.x and the latest version. It's change major version to 8 because:

1. Main repositorie was rebased from [iissnan's](https://github.com/iissnan/hexo-theme-next) profile to [next-theme](https://github.com/next-theme) organization.
2. Most libraries under the `next/source/lib` directory was moved out to [external repositories under NexT organization](https://github.com/next-theme/plugins).
3. 3rd-party plugin [`hexo-wordcount`](https://github.com/willin/hexo-wordcount) was replaced by [`hexo-word-counter`](https://github.com/next-theme/hexo-word-counter) because `hexo-word-counter` doesn't have any external nodejs dependencies, nor [language filter](https://github.com/willin/hexo-wordcount/issues/7) which causes better performance on speed at site generation.

So, NexT suggest to update from version 5 to version 8 in this way:

1. You don't touch old `next` dir and just do some copies of NexT files:
    1.1. `_config.yml` or `next.yml` (if you used [Alternate Theme Config](/docs/getting-started/configuration.html)).
    1.2. Custom CSS styles what placed in `next/source/css/_custom/*` and `next/source/css/_variables/*` directories.
    1.3. Custom layout styles what placed in `next/layout/_custom/*`.
    1.4. Any another possible custom additions which can be finded by compare tools between repositories.
2. Clone new repositorie to any another directory instead of `next`. For example, in `next-reloaded` directory: `git clone https://github.com/next-theme/hexo-theme-next themes/next-reloaded`. So, you don't touch your old NexT 5.1.x directory and can work with new `next-reloaded` dir.
3. Go to Hexo main config and set theme parameter: `theme: next-reloaded`. So, your `next-reloaded` directory must loading with your generation. If you may see any bugs or you simply not like this version, in anytime you can switch for 5.1.x version back.
4. Update language configuration (For Chinese)

    Since v6.0.3, `zh-Hans` has been renamed to `zh-CN`: https://github.com/next-theme/hexo-theme-next/releases/tag/v6.0.3

    Users upgrading to v6.0.3 and later need to explicitly modify the `language` configuration in the Hexo main config file `_config.yml`, otherwise the language display is incorrect.
5. Update Hexo and Hexo plugin

    If after completing the above steps, an error occurs when executing `hexo s` or `hexo g`, it means that there may be a conflict between the old version of Hexo / Hexo plugin and the new version of the theme NexT. We recommend upgrading Hexo to versions 4.0 and higher and upgrading Hexo plugins to the latest version. You can run `npm outdated` to see all the upgradeable plugins.

And how to enable 3rd-party libraries see [here](/docs/third-party-services/#Adding-Plugins).
