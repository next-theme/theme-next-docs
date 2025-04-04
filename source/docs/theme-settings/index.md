---
title: Theme Settings
date: 2018-02-08 18:50:03
description: NexT User Docs – Theme Settings
---

One of the guiding principles of NexT is to hide complex details and give you a simple but flexible config, so you can use it easily.

{% note info %}
The values given in the document are often typical allowable values rather than default values. They may be different from those in {% label primary@NexT config file %}.
{% endnote %}

### NexT Quick Start

#### Cache Support

NexT v6+ allows to cache content generation. Set the value `enable` to `true` in `cache` section in {% label primary@NexT config file %} as following:

```yml NexT config file
# Allow to cache content generation.
cache:
  enable: true
```

#### Minify Support

NexT allows to minify Hexo generation. Set the value `minify` to `true` in {% label primary@NexT config file %} as following:

```yml NexT config file
# Remove unnecessary files after hexo generate.
minify: true
```

#### Choosing Scheme

Scheme is a feature supported by NexT, by using Scheme NexT gives you different views. And nearly all config can be used by those Schemes. Till now NexT supports 4 schemes, and they are:

* **`Muse`** → Default Scheme, this is the initial version of NexT. Uses black-white tone and mainly looks cleanly.
* `Mist` → A tighter version of Muse with a tidy single-column view.
* `Pisces` → Double-column Scheme, fresh like your neighbor's daughter.
* `Gemini` → Looks like Pisces, but have distinct column blocks with shadow to appear more sensitive to view.

You can change Scheme by editing {% label primary@NexT config file %}, searching `scheme` keyword. You'll see 4 lines of scheme settings and can enable one of them by removing it's `#` and added `#` to previous.

```yml NexT config file
#scheme: Muse
#scheme: Mist
#scheme: Pisces
scheme: Gemini
```

#### Dark Mode

{% darkmode_preview %}

You can enable Dark Mode by setting `darkmode` to `true` in {% label primary@NexT config file %}.

```yml NexT config file
darkmode: true
```

The `prefers-color-scheme` CSS media feature is used to bring Dark Mode to all 4 schemes above, make sure your browser supports it.

{% caniuse prefers-color-scheme @ current,past_1,past_2,past_3,past_4,past_5 %}

Theme NexT automatically shows Dark Mode if the OS preferred theme is dark. It's supported by macOS Mojave, iOS 13 and Android 10 or later. Relevant docs:
[How to use Dark Mode on your Mac](https://support.apple.com/en-us/HT208976)
[Use Dark Mode on your iPhone, iPad, or iPod touch](https://support.apple.com/en-us/HT210332)
[Dark theme | Android Developers](https://developer.android.com/guide/topics/ui/look-and-feel/darktheme)

#### Configuring Favicon

By default the Hexo site use NexT favicons in `hexo-site/themes/next/source/images/` directory with different size for different device. You can replace them with your own favicons.

For example, you can put your favicons in `hexo-site/source/images/` directory. Then you need to rename them and change the settings in `favicon` section in {% label primary@NexT config file %}, otherwise icons from Next will rewrite your custom icons in Hexo.

You can also put custom favicons into `hexo-site/source/` directory. In this way, you **must remove** `/images` prefix from paths.

To generate custom favicons, you can visit [Favicon Generator](https://realfavicongenerator.net).

```yml NexT config file
favicon:
  small: /images/favicon-16x16-next.png
  medium: /images/favicon-32x32-next.png
  apple_touch_icon: /images/apple-touch-icon-next.png
  safari_pinned_tab: /images/logo.svg
  android_manifest: /images/manifest.json
```

#### Custom Logo Support

NexT supports the site logo personalization.

You can enable it by adding images's url to `custom_logo` in {% label primary@NexT config file %}.

```yml NexT config file
custom_logo: /uploads/custom-logo.jpg
```

{% note danger %}
Scheme Mist does not support custom logo setting.
{% endnote %}

#### Creative Commons

NexT supports the display of [Creative Commons 4.0 International License](https://creativecommons.org/) in sidebar and post including `by`, `by-nc`, `by-nc-nd`, `by-nc-sa`, `by-nd`, `by-sa` and `cc-zero`. These licenses allow creators to communicate which rights they reserve, and which rights they waive for the benefit of recipients or other creators.

You can configure it by editing values in `creative_commons` section in {% label primary@NexT config file %}, for example:

```yml NexT config file
creative_commons:
  # Available values: by | by-nc | by-nc-nd | by-nc-sa | by-nd | by-sa | cc-zero
  license: by-nc-sa
  # Available values: big | small
  size: small
  sidebar: true
  post: true
  language: deed.zh
```

{% note info %}
You can set a language value if you prefer a translated version of CC license, e.g. deed.zh
CC licenses are available in 39 languages, you can find the specific and correct abbreviation you need on https://creativecommons.org
{% endnote %}

#### Open Graph

```yml NexT config file
open_graph:
  enable: true
  # Add pairs each line to customize
  options:
    type: blog
```

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
Value before `||` delimiter (`/link/`) → is the target link to relative url inside your site.
<!-- endtab -->

<!-- tab <code>icon</code> -->
Value after `||` delimiter (`icon`) → is the name of Font Awesome icon.
Names of that icons can be found in [Font Awesome](https://fontawesome.com) site.
<!-- endtab -->
{% endtabs %}

By default, all menu items are commented out to ensure that you can override them in the [Alternate Theme Config](/docs/getting-started/configuration.html).
To customize menu items, edit the following content in {% label primary@NexT config file %}:

```yml NexT config file
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

{% note danger %}
Except `home` and `archives`, all custom pages under `menu` section need to be created manually. See [«Custom Page Support»](/docs/theme-settings/custom-pages.html).

Besides, [hexo-generator-sitemap](https://github.com/hexojs/hexo-generator-sitemap) plugin is required for `sitemap` support.
{% endnote %}

Dynamic sub-menu within hierarchy structure is also supported. Add your sub-menu items in `menu` section in {% label primary@NexT config file %} as following:

```yml NexT config file
menu:
  home: / || fa fa-home
  archives: /archives/ || fa fa-archive
  Docs:
    default: /docs/ || fa fa-book
    Getting Started:
      default: /getting-started/ || fa fa-flag
      Installation: /installation.html || fa fa-download
      Configuration: /configuration.html || fa fa-wrench
    Third Party Plugins:
      default: /third-party-services/ || fa fa-puzzle-piece
      Math Equations: /math-equations.html || fa fa-square-root-alt
      Comment Systems: /comments.html || fa fa-comment-alt
```

{% note danger %}
A `default` page is required for each sub-menu item.
{% endnote %}

By default NexT shows the icons of menu items without badges.

{% tabs menu_settings %}
<!-- tab <code>icons</code> -->
You can configure it by editing value `icons` in `menu_settings` section in {% label primary@NexT config file %}.

```yml NexT config file
menu_settings:
  icons: true
```
<!-- endtab -->

<!-- tab <code>badges</code> -->
Set the value `badges` to `true` to display the count of Posts / Categories / Tags within menu items in `menu_settings` section in {% label primary@NexT config file %} as following:

```yml NexT config file
menu_settings:
  badges: true
```
<!-- endtab -->

{% endtabs %}
