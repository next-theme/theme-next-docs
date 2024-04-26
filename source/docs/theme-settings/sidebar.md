---
title: Sidebar Setting
description: NexT User Docs – Theme Settings – Sidebar
---

### Sidebar Style

By default sidebar only shows in posts (have a table of content), and is placed in left side. You can change it by editing values under `sidebar` setting in {% label primary@NexT config file %}.

Sidebar has several options, including `position`, `width_expanded`, `width_dual_column`, `display`, `padding` and `offset`.

{% tabs setting-sidebar %}
<!-- tab <code>position</code> -->
Set up sidebar position by changing the value of `sidebar.position`, which can be one of following:

* **`left`** → Place at the left of the screen.
* `right` → Place at the right of the screen.

```yml NexT config file
sidebar:
  position: left
  #position: right
```

<!-- endtab -->

<!-- tab <code>width_expanded</code> -->
You can change sidebar width by specify `sidebar.width_expanded` setting in pixels, for example:

```yml NexT config file
sidebar:
  width_expanded: 320
```

{% note info %}
This option is applicable to:
* Muse and Mist scheme
* Mobile of Pisces and Gemini scheme

{% endnote %}
<!-- endtab -->

<!-- tab <code>width_dual_column</code> -->
You can change sidebar width by specify `sidebar.width_dual_column` setting in pixels, for example:

```yml NexT config file
sidebar:
  width_dual_column: 240
```

{% note info %}
This option is applicable to desktop of Pisces and Gemini scheme.

{% endnote %}
<!-- endtab -->

<!-- tab <code>display</code> -->
Set up conditions under which sidebar will show by editing `sidebar.display` value, which can be one of following:

* **`post`** → Show sidebar only in posts which have index.
* `always` → Show sidebar in all pages.
* `hide` → Hide it in all pages (but can be opened by user manually).
* `remove` → Remove sidebar totally.

```yml NexT config file
sidebar:
  display: post
  #display: always
  #display: hide
  #display: remove
```
<!-- endtab -->

<!-- tab <code>padding</code> -->
Set up sidebar padding in pixels by changing the value of `sidebar.padding`:

```yml NexT config file
sidebar:
  padding: 18
```
<!-- endtab -->

<!-- tab <code>offset</code> -->
Set up sidebar offset from top menubar in pixels by changing the value of `sidebar.offset`:

```yml NexT config file
sidebar:
  offset: 12
```

{% note info %}
This option is applicable to Pisces and Gemini scheme.
{% endnote %}
<!-- endtab -->

{% endtabs %}

### Configuring Avatar

By default NexT doesn't show avatar in sidebar. You can configure it by editing values under `avatar` setting in {% label primary@NexT config file %}.

{% tabs avatar %}
<!-- tab <code>url</code> -->
For first test you can uncomment `/images/avatar.gif` value near the `avatar.url` setting to see default avatar:

```yml NexT config file
avatar:
  url: /images/avatar.gif
```

Then you need to specify your own avatar. It can be done one of the ways below:

{% subtabs avatar1 %}
<!-- tab {% label success@Hexo directory %} -->
Put your avatar under {% label info@site directory %} `source/uploads/` (create directory if it doesn't exists).
And then change option to `url: /uploads/avatar.png`.
<!-- endtab -->

<!-- tab NexT directory -->
Put your avatar under {% label primary@theme directory %} `source/images/`.
And then change option to `url: /images/avatar.png`.

{% note info %}
Current site uses avatar under {% label primary@theme directory %} from file located in `next/source/images/apple-touch-icon-next.png` with following config:

```yml NexT config file
avatar:
  url: /images/apple-touch-icon-next.png
```

{% endnote %}
<!-- endtab -->

<!-- tab Absolute URL from Internet -->
You can also specify any external URL with absolute path to image: `http(s)://example.com/avatar.png`
<!-- endtab -->
{% endsubtabs %}
<!-- endtab -->

<!-- tab <code>rounded</code> -->
Set up rounded of avatar by changing the value of `avatar.rounded`:

* `true` → Avatar will be rounded.
* **`false`** → Avatar will be squared.

```yml NexT config file
avatar:
  rounded: true
```
<!-- endtab -->

<!-- tab <code>rotated</code> -->
Set up rotated of avatar by changing the value of `avatar.rotated`:

* `true` → Avatar will be rotate under the mouse hovering.
* **`false`** → Avatar will not rotate under the mouse hovering.

```yml NexT config file
avatar:
  rotated: true
```

<!-- endtab -->
{% endtabs %}

### Sidebar Site State

By default NexT shows the categories and counts of Posts / Categories / Tags in sidebar. You can configure it by editing value `site_state` in {% label primary@NexT config file %}.

```yml NexT config file
site_state: true
```

### Sidebar Social Links

{% note default %}
Social Links have similar structure as [Menu Items](/docs/theme-settings/#Configuring-Menu-Items), only target link there is difference: specified link must have full url path (permalink).
{% endnote %}

Edit the `social` section in {% label primary@NexT config file %} as following:

```yml NexT config file
social:
  GitHub: https://github.com/yourname || fab fa-github
  E-Mail: mailto:yourname@gmail.com || fa fa-envelope
  Weibo: https://weibo.com/yourname || fab fa-weibo
  Twitter: https://twitter.com/yourname || fab fa-twitter
  FB Page: https://www.facebook.com/yourname || fab fa-facebook
  StackOverflow: https://stackoverflow.com/yourname || fab fa-stack-overflow
  YouTube: https://youtube.com/yourname || fab fa-youtube
  Instagram: https://instagram.com/yourname || fab fa-instagram
  Skype: skype:yourname?call|chat || fab fa-skype
```

By default NexT shows the icons of social links in sidebar.

{% tabs social_icons %}
<!-- tab <code>enable</code> -->
You can configure it by editing value `enable` in `social_icons` section in {% label primary@NexT config file %}.

```yml NexT config file
social_icons:
  enable: true
```
<!-- endtab -->

<!-- tab <code>icons_only</code> -->
Set the value `icons_only` to `true` to display social icons without description in `social_icons` section in {% label primary@NexT config file %} as following:

```yml NexT config file
social_icons:
  icons_only: true
```
<!-- endtab -->

<!-- tab <code>transition</code> -->
Set the value `transition` to `true` to display social icons with transition effects in `social_icons` section in {% label primary@NexT config file %} as following:

```yml NexT config file
social_icons:
  transition: true
```
<!-- endtab -->

{% endtabs %}

### Sidebar Blogrolls

You can add blog rolls within sidebar in NexT.

{% tabs blogrolls %}
<!-- tab <code>links_settings</code> -->
By default NexT shows the `globe` icon {% btn #,, globe %} before `title`. The name of icon can be found in [Font Awesome](https://fontawesome.com) site. You can configure it by editing value `icon` in `links_settings` section in {% label primary@NexT config file %}.

```yml NexT config file
links_settings:
  icon: fa fa-globe
```

By default all blogrolls are displayed in block. You can configure it to `inline` by editing value `layout` in `links_settings` section in {% label primary@NexT config file %}.

```yml NexT config file
links_settings:
  layout: block
```
<!-- endtab -->

<!-- tab <code>links</code> -->
Edit the `links` section in {% label primary@NexT config file %} and add your favorite links:

```yml NexT config file
links:
  Title1: https://example1.com/
  Title2: https://example2.com/
```
<!-- endtab -->

{% endtabs %}

### Sidebar TOC

{% tabs toc %}
<!-- tab <code>enable</code> -->
By default NexT shows `Table Of Contents (TOC)` in the sidebar. You can disable it by setting `toc.enable` to `false` in {% label primary@NexT config file %}.

```yml NexT config file
toc:
  enable: true
```
<!-- endtab -->

<!-- tab <code>number</code> -->
By default NexT adds list number to TOC automatically. You can disable it by setting `toc.number` to `false` in {% label primary@NexT config file %}.

```yml NexT config file
toc:
  number: true
```
<!-- endtab -->

<!-- tab <code>wrap</code> -->
If the post header width longer than sidebar width, you can wrap the header words in next lines by setting `toc.wrap` to `true` in {% label primary@NexT config file %}.

```yml NexT config file
toc:
  wrap: true
```
<!-- endtab -->

<!-- tab <code>expand_all</code> -->
If you want all level of TOC in a post to be displayed, rather than the activated part of it, you can set `toc.expand_all` to `true` in {% label primary@NexT config file %}.

```yml NexT config file
toc:
  expand_all: true
```
<!-- endtab -->

<!-- tab <code>max_depth</code> -->
By default maximum heading depth of generated toc is 6. You can set it by setting `toc.max_depth` to `another number` in {% label primary@NexT config file %}.

```yml NexT config file
toc:
  max_depth: 3
```
<!-- endtab -->
{% endtabs %}
