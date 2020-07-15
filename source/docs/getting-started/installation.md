---
title: Installation
description: NexT User Docs – Starting to Use – Detailed Installation
---

### Go to Hexo dir

Change dir to {% label info@site root directory %}. There must be `node_modules`, `source`, `themes` and other directories:

```bash
$ cd hexo-site
$ ls
_config.yml  node_modules  package.json  public  scaffolds  source  themes
```

### Get NexT

Download theme from GitHub. There are **3 options** to do it, need to **choose only one** of them.

{% tabs download-next %}
<!-- tab {% label success@Latest Master Branch %} -->
**Option 1: Download [Latest Master Branch](https://github.com/next-theme/hexo-theme-next/archive/master.zip)**

May be **unstable**, but includes **latest features**. Recommended for advanced users and for developers.

{% subtabs latest-master-branch %}
<!-- tab {% label success@Git %} -->
```bash
$ git clone https://github.com/next-theme/hexo-theme-next themes/next
```

This variant will give to you the **whole repository** (with `.git` directory inside).
And in any time you can update current version with git (instructions below) and switch to any tagged release or on latest master or any other branch.
At most cases useful as for users and for developers.

Get tags list:

```bash
$ cd themes/next
$ git tag -l
…
v8.0.0-rc.1
v8.0.0-rc.2
v8.0.0-rc.3
...
```

For example, you want to switch on `v8.0.0-rc.3` tagged release version. Input the following command:

```bash
$ git checkout tags/v8.0.0-rc.3
Note: switching to 'tags/v8.0.0-rc.3'.
…
HEAD is now at 036d2d3 Release v8.0.0-rc.3

# If you want to switch on latest release version without defining tag (optional)
$ git checkout $(git describe --tags $(git rev-list --tags --max-count=1))
```

And if you want to switch back on master branch, input this command:

```bash
$ git checkout master
```

**Update**
You can update to latest master branch by the following command:

```bash
$ cd themes/next
$ git pull
```

And if you see any error message during update (something like **«Commit your changes or stash them before you can merge»**), recommended to learn [Alternate Theme Config](/docs/getting-started/configuration.html) feature. Howbeit, you can bypass update errors by `Commit`, `Stash` or `Discard` local changes. See [here](https://stackoverflow.com/a/15745424/5861495) how to do it.
<!-- endtab -->

<!-- tab cURL & Tar -->
```bash
$ mkdir themes/next
$ curl -L https://api.github.com/repos/next-theme/hexo-theme-next/tarball | tar -zxv -C themes/next --strip-components=1
```

Same as before under `curl & tar & wget` variant, but will download **only latest master branch version**.
At some cases useful for developers.
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

<!-- tab Tagged Release Version -->
**Option 2: Download [Tagged Release Version](https://github.com/next-theme/hexo-theme-next/releases)**

In rare cases useful, but not recommended.
You must define version. Replace `v8.0.0-rc.3` with any version from [tags list](https://github.com/next-theme/hexo-theme-next/tags).

{% subtabs tagged-release-version %}
<!-- tab Git -->
```bash
$ git clone --branch v8.0.0-rc.3 https://github.com/next-theme/hexo-theme-next themes/next
```

This variant will give to you the **defined release version** (with `.git` directory inside).
And in any time you can switch to any tagged release, but with limit to defined version.
<!-- endtab -->

<!-- tab cURL & tar -->
```bash
$ mkdir themes/next
$ curl -L https://api.github.com/repos/next-theme/hexo-theme-next/tarball/v8.0.0-rc.3 | tar -zxv -C themes/next --strip-components=1
```

Same as before under `curl & tar & wget` variant, but will download **only concrete version**.
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

<!-- tab Latest Release Version -->
**Option 3: Download [Latest Release Version](https://github.com/next-theme/hexo-theme-next/releases/latest)**

At most cases **stable**. Recommended for beginners.

{% subtabs latest-release-version %}
<!-- tab cURL & tar & Wget -->
```bash
$ mkdir themes/next
$ curl -s https://api.github.com/repos/next-theme/hexo-theme-next/releases/latest | grep tarball_url | cut -d '"' -f 4 | wget -i - -O- | tar -zx -C themes/next --strip-components=1
```

This variant will give to you **only latest release version** (without `.git` directory inside).
So, there is impossible to update this version with `git` later.
Instead you always can use separate configuration (e.g. [Alternate Theme Config](/docs/getting-started/configuration.html)) and download new version inside old directory (or create new directory and redefine `theme` in {% label info@site config file %}), without losing your old configuration.
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->
{% endtabs %}

### Set it up

When NexT download will complete, we must go back to previous guide and follow [Enabling NexT](/docs/getting-started/#Enabling-NexT) instructions.
