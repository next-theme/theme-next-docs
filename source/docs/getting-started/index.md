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
You can visit [Hexo Docs](https://hexo.io/docs/) to see how to install Hexo.
{% endnote %}

### Documentation Variables

{% tabs common-variables %}
<!-- tab _config.yml -->
There are two main configuration files using by Hexo and both called `_config.yml`:

  1. The first one is under {% label info@site root directory %}, which contains Hexo's config.
  2. The second one is under {% label primary@theme root directory %}, which is provided by NexT and contains theme's config.

Let's call the first one – {% label info@site config file %}, and the second one – {% label primary@theme config file %}.
<!-- endtab -->

<!-- tab <code>Available Settings</code> -->
All `available settings` will be inside code blocks (with single backtick or `<code>` tags).
<!-- endtab -->

<!-- tab <strong><code>Default Settings</code></strong> -->
And all **`default settings`** will be bold inside code blocks (with single backtick or `<code>` and `**` or `<strong>` tags).
<!-- endtab -->
{% endtabs %}

{% tabs colored-variables %}
<!-- tab {% label success@Recommended Settings %} -->
All {% label success@recommended settings %} will be highlighted under the success label.
<!-- endtab -->

<!-- tab {% label warning@Deprecated Settings %} -->
All {% label warning@deprecated settings %} will be highlighted under the warning label.
<!-- endtab -->

<!-- tab {% label danger@Possible Errors %} -->
And all {% label danger@possible errors %} will be highlighted under the danger label.
<!-- endtab -->
{% endtabs %}

### NexT Installation

It's easy to install Hexo theme: you can just download the NexT theme, copy the theme folder to the `themes` directory under {% label info@site root directory %} and specify in {% label info@site config file %} your {% label primary@theme root directory %}. The detailed steps are as follows:

#### Downloading NexT

{% tabs downloading-next %}
<!-- tab Newest Version -->
If you know about [Git](http://git-scm.com), you can clone the whole repository and update it in any time with `git pull` command instead of downloading archive manually.

Open your Terminal, change to Hexo {% label info@site root directory %} and clone latest master branch of NexT theme:
```bash
$ cd hexo
$ git clone https://github.com/next-theme/hexo-theme-next themes/next
```
<!-- endtab -->

<!-- tab Stable Version -->
1. Go to NexT version [Release Page](https://github.com/next-theme/hexo-theme-next/releases).
2. Choose the version you need and download the Source Code (zip) in the Download section. For example v6.0.0.
3. Extract the zip file to site's themes directory and rename the extracted folder (`hexo-theme-next-6.0.0`) to `next`.
<!-- endtab -->
{% endtabs %}

{% note primary %}
You also can read [detailed installation instructions](/docs/getting-started/installation) if you want any other installation variant.
{% endnote %}

{% note warning %}
If you are still using NexT version 5, you can read [instructions for update from v5 to v6](/docs/getting-started/update-from-v5).
{% endnote %}

#### Enabling NexT

Like all Hexo themes, after you download it, open {% label info@site config file %}, find `theme` section, and change its value to `next` (or another theme directory name).

```yml hexo/_config.yml
theme: next
```

Now you have installed NexT theme, next we will verify whether it is enabled correctly. Between changing the theme and verifying it, we'd better use `hexo clean` to clean Hexo's cache.

#### Checking NexT

First start Hexo local server, and enable debug parameter (by adding `--debug`), the whole command is `hexo s --debug`. You can see the output while running, and if you find problem, you can use the output to help others locate error better. When it prints:

    INFO  Hexo is running at http://localhost:4000/. Press Ctrl+C to stop.

Now you can open `http://localhost:4000` in your browser, and check whether the site works correctly.

{% note success %}
If you find your site looks like this picture, you have installed it correctly. That's default NexT scheme – Muse.
![Default Scheme – Muse](/images/docs/next-default-scheme.png)
{% endnote %}

Now you've installed and enabled NexT. In next steps we will change some settings including personalization and third-party services integration.

#### Adding Plugins

There are 2 variants to hook up NexT plugins:

* Local installation (plugins scripts will be loaded from your site).
* CDN links (plugins scripts will be loaded from remote CDN hosts).

{% note info %}
If your site is deployed to any free hosting service (Github, Gitlab, etc.), CDN links is recommended. CDN usually have faster speeds and no traffic restrictions.
{% endnote %}

{% tabs adding-plugins %}
<!-- tab Local -->
In NexT config now you can find dependencies on each module which was moved to external repositories which can be found by [main organization link](https://github.com/theme-next). For example, you want to use `pjax` in your site. Go to {% label primary@theme config file %} and see:

```yml next/_config.yml
# Easily enable fast Ajax navigation on your website.
# Dependencies: https://github.com/next-theme/pjax
pjax: false
```

Then turn on `pjax` and go to «Dependencies» link with installation instructions of this module.
<!-- endtab -->

<!-- tab CDN -->
If you use cdn for any plugins, you need to replace your cdn link. For example, you want to use `mediumzoom` and you configured a cdn link. Go to {% label primary@theme config file %} and see:

```yml next/_config.yml
vendors:
  # ...
  # Some contents...
  # ...
  mediumzoom: # Set or update mediumzoom CDN URL.
```

And jsDelivr CDN is recommended to deliver our third-party plugins because it is fast in everywhere and has the valid ICP license issued by the Chinese government. It does not only crawl the js files from npm packages, and it crawls from the GitHub Releases! We could use the following link to reference the js files, just as other CDNs.

```
//cdn.jsdelivr.net/gh/user/repo@version/file
```

And it could automatically minify the JS and CSS files, even if you don't have the minified version. Just use the `filename.min.js` or the `filename.min.css` to replace the file above.

And we also provide other optional CDNs, including the famous [CDNJS](https://cdnjs.com/) and the [Bootcss](http://www.bootcdn.cn/) which has the quite high access speed in China.

<!-- endtab -->
{% endtabs %}

### NexT Configuration

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

You can enable Dark Mode by editing {% label primary@theme config file %}, searching `darkmode` keyword. Theme NexT automatically shows Dark Mode if the OS prefered theme is dark. CSS `mix-blend-mode` is used the to bring Dark Mode to all 4 schemes above, make sure your browser supports this property.

```yml next/_config.yml
darkmode: true
```

#### Choosing Language

Edit {% label info@site config file %}, set the value of `language` to the language you need. For example, English looks like this:

```yml hexo/_config.yml
language: en
```

NexT now supports following languages:

| Language                    | Example               | Code    |
| --------------------------- | --------------------- | ------- |
| Arabic                      | عربي                  | `ar`    |
| Chinese (Simplified)        | 简体中文               | `zh-CN` |
| Chinese (Traditional)       | 繁體中文               | `zh-TW` |
| Chinese (Hong Kong)         | 繁體中文-香港           | `zh-HK` |
| Dutch                       | Niederländisch        | `nl`    |
| English                     | English               | `en`    |
| French                      | Français              | `fr`    |
| German                      | Deutsch               | `de`    |
| Indonesian                  | Indonesia             | `id`    |
| Italian                     | Italiano              | `it`    |
| Japanese                    | 日本語                 | `ja`    |
| Korean                      | 한국어                 | `ko`    |
| Persian                     | فارسی                 | `fa`    |
| Portuguese                  | Português             | `pt`    |
| Portuguese (Brazilian)      | Português (Brazilian) | `pt-BR` |
| Russian                     | Русский               | `ru`    |
| Spanish                     | Español               | `es`    |
| Turkish                     | Türk                  | `tr`    |
| Ukrainian                   | Український           | `uk`    |
| Vietnamese                  | Tiếng Việt            | `vi`    |

{% note primary %}
If you want to add or improve language for NexT theme, you can do it easily with [crowdin](https://i18n.theme-next.org) service.
{% endnote %}

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
Value after `||` delimeter (`icon`) → is the name of FontAwesome icon.
Names of that icons can be found in [Font Awesome](https://fontawesome.com) site.
<!-- endtab -->
{% endtabs %}

By default NexT provides `home` and `archives` items. To customize menu items, edit the following content in {% label primary@theme config file %}:

{% note warning %}
All custom pages which commented by default under `menu` section need to create manually. See [«Custom Page Support»](/docs/theme-settings/#Custom-Page-Support)
{% endnote %}

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

Dynamic sub-menu within hierarchy structure is also supported. Add your sub-menu items in `menu` section in {% label primary@theme config file %} as following:

```yml next/_config.yml
menu:
  home: / || fa fa-home
  archives: /archives/ || fa fa-archive
  Docs:
    default: /docs/ || fa fa-book
    Third Party Services:
      default: /third-party-services/ || fa fa-plug
      Algolia Search: /algolia-search/ || fa fa-search-plus
```

{% note info %}
If your site runs in a sub-directory, please remove the prefix `/` from the link.
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

##### Favicon Set but Doesn't Work (Need to redocs)

Put your `favicon` under {% label info@site's %} `source` dir. If you find that your Favicon doesn't work, please clean your browser's cache first and then visit your Favicon's URL directly, which should be `http(s)://your-domain.com/favicon.ico`.

{% note warning %}
If your site is in a subdirectory please set it to `favicon: favicon.ico`.
{% endnote %}

#### Configuring Avatar

By default NexT doesn't show avatar in sidebar. You can configure it by editing values under `avatar` setting in {% label primary@theme config file %}.

{% tabs avatar %}
<!-- tab <code>url</code> -->
For first test you can uncomment `/images/avatar.gif` value near the `avatar.url` setting to see default avatar:

```yml next/_config.yml
avatar:
  url: /images/avatar.gif
```

Then you need to specify your own avatar. It can be done one of the ways below:

{% subtabs avatar1 %}
<!-- tab {% label success@Hexo directory %} -->
Put your avatar under {% label info@site directory %} `source/uploads/` (create directory if it doesn't exists).
And then change option to `avatar: /uploads/avatar.png`.
<!-- endtab -->

<!-- tab NexT directory -->
Put your avatar under {% label primary@theme directory %} `source/images/`.
And then change option to `avatar: /images/avatar.png`.

{% note info %}
Current site uses avatar under {% label primary@theme directory %} from file located in `next/source/images/apple-touch-icon-next.png` with following config:

```yml hexo/_config.yml
theme_config:
  avatar:
    url: /images/apple-touch-icon-next.png
    rounded: true
    rotated: false
```

{% endnote %}
<!-- endtab -->

<!-- tab Absolute URL from Internet -->
You also can specify any external URL with absolute path to image: `http(s)://example.com/avatar.png`
<!-- endtab -->
{% endsubtabs %}
<!-- endtab -->

<!-- tab <code>rounded</code> -->
Set up rounded of avatar by changing the value of `avatar.rounded`:

* `true` → Avatar will be rounded.
* **`false`** → Avatar will be squared.

```yml next/_config.yml
avatar:
  rounded: true
```
<!-- endtab -->

<!-- tab <code>rotated</code> -->
Set up rotated of avatar by changing the value of `avatar.rotated`:

* `true` → Avatar will be rotate under the mouse hovering.
* **`false`** → Avatar will not rotate under the mouse hovering.

```yml next/_config.yml
avatar:
  rotated: true
```

<!-- endtab -->
{% endtabs %}

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

After that we can [configure deployment](/docs/getting-started/deployment).
