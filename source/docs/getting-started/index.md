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

Open your terminal, change to Hexo {% label info@site root directory %} and clone latest master branch of NexT theme:
```bash
$ cd hexo-site
$ git clone https://github.com/next-theme/hexo-theme-next themes/next
```
<!-- endtab -->

<!-- tab Download zip -->
1. Go to NexT version [Release Page](https://github.com/next-theme/hexo-theme-next/releases).
2. Choose the version you need and download the Source Code (zip) in the Download section. For example v8.0.0-rc.3.
3. Extract the zip file to site's themes directory and rename the extracted folder (`hexo-theme-next-8.0.0-rc.3`) to `next`.
<!-- endtab -->
{% endtabs %}

{% note primary %}
You can also read [detailed installation instructions](/docs/getting-started/installation.html) if you want any other installation variant.
{% endnote %}

{% note warning %}
If you are still using NexT version 5, you can read [instructions for update from v5 to v8](/docs/getting-started/update-from-v5.html).
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
![Default Scheme – Muse](/images/docs/next-default-scheme.png)
{% endnote %}

If everything is OK, in next steps we will change some settings including personalization and third-party services integration.

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

### NexT Quick Start

#### Configuring Favicon

By default the Hexo site use NexT favicons in `hexo-site/themes/next/source/images/` directory with different size for different device. You can replace them with your own favicons.

For example, you can put your favicons in `hexo-site/source/images/` directory. Then you need to rename them and change the settings in `favicon` section in {% label primary@theme config file %}, otherwise icons from Next will rewrite your custom icons in Hexo.

You can also put custom favicons into `hexo-site/source/` directory. In this way, you **must remove** `/images` prefix from paths.

To generate custom favicons, you can visit [Favicon Generator](https://realfavicongenerator.net).

```yml hexo/_config.yml
favicon:
  small: /images/favicon-16x16-next.png
  medium: /images/favicon-32x32-next.png
  apple_touch_icon: /images/apple-touch-icon-next.png
  safari_pinned_tab: /images/logo.svg
  android_manifest: /images/manifest.json
  ms_browserconfig: /images/browserconfig.xml
```

#### Creative Commons

NexT supports the display of [Creative Commons 4.0 International License](https://creativecommons.org/) in sidebar and post including `by`, `by-nc`, `by-nc-nd`, `by-nc-sa`, `by-nd`, `by-sa`, `zero`. These licenses allow creators to communicate which rights they reserve, and which rights they waive for the benefit of recipients or other creators.

You can configure it by editing values in `creative_commons` section in {% label primary@theme config file %}, for example:

```yml next/_config.yml
creative_commons:
  license: by-nc-sa
  sidebar: true
  post: true
  language: deed.zh
```

#### Choosing Scheme

Scheme is a feature supported by NexT, by using Scheme NexT gives you different views. And nearly all config can be used by those Schemes. Till now NexT supports 4 schemes, and they are:

* **`Muse`** → Default Scheme, this is the initial version of NexT. Uses black-white tone and mainly looks cleanly.
* `Mist` → A tighter version of Muse with a tidy single-column view.
* `Pisces` → Double-column Scheme, fresh like your neighbor's daughter.
* `Gemini` → Looks like Pisces, but have distinct column blocks with shadow to appear more sensitive to view.

You can change Scheme by editing {% label primary@theme config file %}, searching `scheme` keyword. You'll see 4 lines of scheme settings and can enable one of them by removing it's `#` and added `#` to previous.

```yml next/_config.yml
#scheme: Muse
#scheme: Mist
#scheme: Pisces
scheme: Gemini
```

#### Dark Mode

You can enable Dark Mode by setting `darkmode` to `true` in {% label primary@theme config file %}.

```yml next/_config.yml
darkmode: true
```

The `prefers-color-scheme` CSS media feature is used to bring Dark Mode to all 4 schemes above, make sure your browser supports it.

{% caniuse prefers-color-scheme @ current,past_1,past_2,past_3,past_4,past_5 %}

Theme NexT automatically shows Dark Mode if the OS prefered theme is dark. It's supported by macOS Mojave, iOS 13 and Android 10 or later. Relevant docs:
[How to use Dark Mode on your Mac](https://support.apple.com/en-us/HT208976)
[Use Dark Mode on your iPhone, iPad, or iPod touch](https://support.apple.com/en-us/HT210332)
[Dark theme | Android Developers](https://developer.android.com/guide/topics/ui/look-and-feel/darktheme)

#### Configuring Menu Items

Menu settings items have format `Key: /link/ || icon` which contains 3 values:

{% tabs menu-items %}
<!-- tab <code>Key</code> -->
`Key` → is the name of menu item (`home`, `archives`, etc.).
If translate for this menu will be found in languages, this translate will be loaded; if not, `Key` name will be used.
{% note danger %}
`Key` value is case sensitive (e.g. `home` is not same as `Home`).
{% endnote %}
<!-- endtab -->

<!-- tab <code>link</code> -->
Value before `||` delimeter (`/link/`) → is the target link to relative url inside your site.
<!-- endtab -->

<!-- tab <code>icon</code> -->
Value after `||` delimeter (`icon`) → is the name of Font Awesome icon.
Names of that icons can be found in [Font Awesome](https://fontawesome.com) site.
<!-- endtab -->
{% endtabs %}

By default, all menu items are commented out to ensure that you can override them in the [Alternate Theme Config](/docs/getting-started/configuration.html).
To customize menu items, edit the following content in {% label primary@theme config file %}:

```yml next/_config.yml
menu:
  home: / || fa fa-home
  #about: /about/ || fa fa-user
  #tags: /tags/ || fa fa-tags
  #categories: /categories/ || fa fa-th
  archives: /archives/ || fa fa-archive
  #schedule: /schedule/ || fa fa-calendar
  #sitemap: /sitemap.xml || fa fa-sitemap
  #commonweal: /404/ || fa fa-heartbeat
```

{% note warning %}
Except `home` and `archives`, all custom pages under `menu` section need to be created manually. See [«Custom Page Support»](/docs/theme-settings/custom-pages.html).

Besides, [hexo-generator-sitemap](https://github.com/hexojs/hexo-generator-sitemap) plugin is required for `sitemap` support.
{% endnote %}

Dynamic sub-menu within hierarchy structure is also supported. Add your sub-menu items in `menu` section in {% label primary@theme config file %} as following:

```yml next/_config.yml
menu:
  home: / || fa fa-home
  archives: /archives/ || fa fa-archive
  Docs:
    default: /docs/ || fa fa-book
    Getting Started:
      default: /getting-started/ || fa fa-flag
      Installation: /installation.html || fa fa-download
      Configuration: /configuration.html || fa fa-wrench
    Third Party Services:
      default: /third-party-services/ || fa fa-puzzle-piece
      Math Equations: /math-equations.html || fa fa-square-root-alt
      Comment Systems: /comments.html || far fa-comment
```

{% note warning %}
A `default` page is required for each sub-menu item.
{% endnote %}

By default NexT shows the icons of menu items without badges.

{% tabs menu_settings %}
<!-- tab <code>icons</code> -->
You can configure it by editing values in `menu_settings.icons` section in {% label primary@theme config file %}.

```yml next/_config.yml
menu_settings:
  icons: true
```
<!-- endtab -->

<!-- tab <code>badges</code> -->
Set the value `badges` to `true` to display the count of Posts / Categories / Tags within menu items in `menu_settings` section in {% label primary@theme config file %} as following:

```yml next/_config.yml
menu_settings:
  badges: true
```
<!-- endtab -->

{% endtabs %}
