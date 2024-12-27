---
title: Installation
description: NexT User Docs – Starting to Use – Detailed Installation
---

### Select Version

The NexT theme will continue to release new versions to include new features and bug fixes. We recommend that ordinary users use the latest released version. If you want to experience the latest unreleased features or bug fixes, you can try the master branch version from git. If you want to develop or debug, you can also choose a stable old version.

{% tabs download-next %}
<!-- tab {% label success@Latest Release Version %} -->
**Option 1: Download the [Latest Release Version](https://github.com/next-theme/hexo-theme-next/releases/latest)**

At most cases **stable**. Recommended for beginners.
<!-- endtab -->

<!-- tab Latest Master Branch -->
**Option 2: Download the [Latest Master Branch](https://github.com/next-theme/hexo-theme-next/archive/master.zip)**

May be **unstable**, but includes **latest features**. At most cases useful and recommended for advanced users and for developers.
<!-- endtab -->

<!-- tab Specific Release Version -->
**Option 3: Download the [Specific Release Version](https://github.com/next-theme/hexo-theme-next/releases)**

In rare cases useful, but not recommended.
You must define version. Let's take `v8.0.0` as an example. Replace it with any version from [tags list](https://github.com/next-theme/hexo-theme-next/tags).
<!-- endtab -->
{% endtabs %}

### Get NexT

There are **2 recommended ways** to download NexT: `npm` and `git`. You need to **choose only one** of them. Other installation methods, such as downloading and decompressing the theme source code in zip format from GitHub, are not recommended, because the installed theme is difficult to manage and upgrade.

Change dir to {% label info@site root directory %} in the command line first, and then continue with the following steps.

#### Using `npm`

If you're using Hexo 5.0 or later, you can install `hexo-theme-next` through npm.

{% tabs using-npm %}
<!-- tab Latest Release Version -->
```bash
npm install hexo-theme-next@latest
```

This variant will install the **latest release version**.
<!-- endtab -->

<!-- tab Specific Release Version -->
```bash
npm install hexo-theme-next@8.0.0
```

This variant will install the **specific release version**.
<!-- endtab -->
{% endtabs %}

#### Using `git`

{% tabs using-git %}
<!-- tab Latest Master Branch -->
You can clone the source code of NexT via git:

```bash
git clone https://github.com/next-theme/hexo-theme-next themes/next
```

If you encounter any network problems with the above command, you can try to set up a http proxy first:

```bash
git config --global http.proxy http://proxy-server:port
```

This variant will install the **whole repository** (with `.git` directory inside).
And in any time you can update current version with git (instructions below) and switch to any tagged release or on latest master or any other branch.
<!-- endtab -->

<!-- tab Specific Release Version -->
After cloning the repository, you can switch to a specific release version. First, you need to list all available tags:


```bash
$ cd themes/next
$ git tag -l
...
v8.0.0-rc.1
v8.0.0-rc.2
v8.0.0-rc.3
...
```

For example, you want to switch on `v8.0.0` tagged release version. Run the following command:

```bash
$ git checkout tags/v8.0.0
Note: switching to 'tags/v8.0.0'.
...
HEAD is now at f27e45b Release v8.0.0
```

If you want to switch on latest release version without defining tag (optional)

```bash
git checkout $(git describe --tags $(git rev-list --tags --max-count=1))
```

And if you want to switch back on master branch, run this command:

```bash
git checkout master
```
<!-- endtab -->
{% endtabs %}

And if you see any error message during update (something like **«Commit your changes or stash them before you can merge»**), recommended to learn [Alternate Theme Config](/docs/getting-started/configuration.html) feature. Howbeit, you can bypass update errors by `Commit`, `Stash` or `Discard` local changes. See [here](https://stackoverflow.com/a/15745424/5861495) how to do it.

### Set It Up

When NexT download will complete, we must go back to previous guide and follow [Enabling NexT](/docs/getting-started/#Enabling-NexT) instructions.
