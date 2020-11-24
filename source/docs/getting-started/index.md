---
title: Getting Started
date: 2018-01-30 13:40:21
description: NexT User Docs – Starting to Use
#tags: [Testing, Another Tag]
#categories: English
#lang: en
---

[Hexo](https://hexo.io) is a fast and powerful static blog generating framework, it's based on [Node.js](https://nodejs.org). By using Hexo you can write articles easily with Markdown, and besides the grammer of Markdown, you can also use [tag plugins](https://hexo.io/docs/tag-plugins) provided by Hexo to insert special formated content simply. In this page we assume you have installed Hexo and created a site with it.

{% note info %}
You can visit [Hexo Docs](https://hexo.io/docs/) to see how to install Hexo. Make sure that the version of Node.js and Hexo in the environment is higher than [the minimum requirements](https://github.com/next-theme/hexo-theme-next#readme) of the NexT theme, and then continue with the following steps.
{% endnote %}

### Configuration

There are two main configuration files using by Hexo and both called `_config.yml`:

  1. The first one is under {% label info@site root directory %}, which contains Hexo's config.
  2. The second one is under {% label primary@theme root directory %}, which is provided by NexT and contains theme's config.

Let's call the first one – {% label info@site config file %}, and the second one – {% label primary@theme config file %}.
However, we do not recommend directly modifying the {% label primary@theme config file %}. It is quite often running into conflict status when updating NexT theme via `git pull`, or need to merge configurations manually when upgrading to new releases. For Hexo 5.0 or later, the theme can be installed through npm and it is also difficult to modify the {% label primary@theme config file %} in `node_modules`.

In order to resolve this issue, we recommend using the [Alternate Theme Config](/docs/getting-started/configuration.html) feature to configure theme NexT.

### NexT Installation

It's easy to install Hexo theme: you can just download the NexT theme, copy the theme folder to the `themes` directory under {% label info@site root directory %} and specify in {% label info@site config file %} your {% label primary@theme root directory %}. The detailed steps are as follows:

#### Downloading NexT

{% tabs downloading-next %}
<!-- tab Using <code>npm</code> -->
If you're using Hexo 5.0 or later, the simplest way to install is through npm.

Open your Terminal, change to Hexo {% label info@site root directory %} and install NexT theme:
```bash
$ cd hexo-site
$ npm install hexo-theme-next
```
<!-- endtab -->

<!-- tab Using <code>git</code> -->
If you know about [Git](https://git-scm.com), you can clone the whole repository and update it in any time with `git pull` command instead of downloading archive manually.

Open your terminal, change to Hexo {% label info@site root directory %} and clone the latest master branch of NexT theme:
```bash
$ cd hexo-site
$ git clone https://github.com/next-theme/hexo-theme-next themes/next
```
<!-- endtab -->

<!-- tab Download zip -->
1. Go to NexT version [release page](https://github.com/next-theme/hexo-theme-next/releases).
2. Choose the version you need and download the Source Code (zip) in the Download section. For example v8.0.0.
3. Extract the zip file to site's themes directory and rename the extracted folder (`hexo-theme-next-8.0.0`) to `next`.
<!-- endtab -->
{% endtabs %}

{% note primary %}
You can also read [detailed installation instructions](/docs/getting-started/installation.html) if you want any other installation variant.
{% endnote %}

{% note warning %}
If you are still using NexT version 5 or 7, you can read [instructions for upgrading from legacy version](/docs/getting-started/upgrade.html).
{% endnote %}

#### Enabling NexT

Like all Hexo themes, after you download it, open {% label info@site config file %}, find `theme` section, and change its value to `next` (or another theme directory name).

```yml hexo/_config.yml
theme: next
```

Now you have installed NexT theme and enabled it. The following steps will help you verify whether NexT is enabled correctly.

#### Checking NexT

It's recommended to use `hexo clean` to clean Hexo's cache first.
Then start Hexo local server with debug parameter (by adding `--debug`), the whole command is `hexo s --debug`. You can see the output while running, and if you find problem, you can use the output to help others locate error better. When it prints:

```
INFO  Hexo is running at http://localhost:4000/. Press Ctrl+C to stop.
```

Now you can open `http://localhost:4000` in your browser, and check whether the site works correctly.

{% note success %}
If you find your site looks like this picture, you have installed it correctly. That's default NexT scheme – Muse.
![Default Scheme – Muse](/images/next-default-scheme.png)
{% endnote %}

### Hexo Configuration

The following settings in {% label info@site config file %} are very helpful for optimizing your website.

#### Configuring Author

Edit {% label info@site config file %} and set the value of `author` to your nickname.

```yml hexo/_config.yml
# Site
author:
```

#### Configuring Description

Edit {% label info@site config file %} and set the value of `description` to your description, which can be a sentence you like.

```yml hexo/_config.yml
# Site
description:
```

After that we can [configure deployment](/docs/getting-started/deployment.html).

If everything is OK, in next steps we will change some settings including [personalization](/docs/theme-settings/) and [third-party services integration](/docs/third-party-services/).
