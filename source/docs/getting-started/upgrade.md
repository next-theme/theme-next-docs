---
title: Upgrade
description: NexT User Docs – Starting to Use – Upgrade
---

We always recommend users to use the latest versions of Node.js, Hexo, and NexT, as new versions of the software include new features and security patches. Some tutorials might use older versions of Hexo and NexT as examples, and their usage methods can serve as a reference, but it is not recommended to actually install these versions.

### NexT Repositories

Due to historical reasons, NexT has three different repositories.

| Years       | Version | Repository                                    |
| ----------- | ------- | --------------------------------------------- |
| 2014 ~ 2017 | v5      | https://github.com/iissnan/hexo-theme-next    |
| 2018 ~ 2019 | v6 ~ v7 | https://github.com/theme-next/hexo-theme-next |
| Since 2020  | v8      | https://github.com/next-theme/hexo-theme-next |

After 2020, the first two repositories have ceased updates. The currently active version is v8. Please ensure that you have installed the correct version.

### Upgrade from Active Version

If you need to upgrade the current active version (NexT v8+), please refer to the [upgrade documentation](https://theme-next.js.org/docs/getting-started/index.html?highlight=install#Upgrading-NexT) (includes essential operations like npm update and configuration checks). 

### Upgrade from Legacy Version

It's recommended to upgrade NexT to version 8 to get the latest features and supports in the new [Theme-Next](https://github.com/next-theme/hexo-theme-next) repository.

#### Breaking Changes

There are some breaking changes that need attention when upgrading across versions.

1. Update language configuration (for Simplified Chinese)
    Since v6.0.3, `zh-Hans` has been renamed to `zh-CN`: https://github.com/theme-next/hexo-theme-next/releases/tag/v6.0.3

    Users upgrading to v6.0.3 and later need to explicitly modify the `language` configuration in {% label info@Hexo config file %}, otherwise the language display is incorrect.
2. Since v8.0.0, all libraries under the `next/source/lib` directory was moved out to [@next-theme/plugins](https://github.com/next-theme/plugins). Please see this article for the new 3rd-party libraries installation method: [Adding Plugins](/docs/third-party-services/#Adding-Plugins).

#### Upgrade

So, NexT suggest to upgrade from version 5 or 7 to version 8 in this way:

1. You need to do some copies of old NexT files:
    1.1. `_config.yml` or `next.yml` (if you used [Alternate Theme Config](/docs/getting-started/configuration.html)).
    1.2. Custom CSS files placed in `next/source/css/_custom/*` and `next/source/css/_variables/*` directories.
    1.3. Custom layout files placed in `next/layout/_custom/*`.
    1.4. Any another possible custom additions which can be found by compare tools between repositories.
2. Then rename the old NexT folder, for example, rename `next` to `next-old`.
3. Install the new version according to the method provided in this article: [installation instructions](/docs/getting-started/installation.html). Run `hexo clean` and `hexo s` to check whether the site works correctly.
4. Update Hexo and Hexo plugin
    If after completing the above steps, an error occurs when executing `hexo s` or `hexo g`, it means that there may be a conflict between the old version of Hexo / Hexo plugin and the new version of the theme NexT. We recommend upgrading Hexo and Hexo plugins to the latest version. You can run `npm outdated` to see all the upgradeable plugins.
5. If you see any bugs or you simply does not like this version, you can switch back to the old version at any time.
