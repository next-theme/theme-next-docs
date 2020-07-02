---
title: Sidebar
description: NexT User Docs – Theme Settings – Sidebar
---

### Sidebar Setting

#### Sidebar Style

By default sidebar only shows in posts (have a table of content), and is placed in left side. You can change it by editing values under `sidebar` setting in {% label primary@theme config file %}.

Sidebar has several options, including `position`, `width`, `display`, `padding` and `offset`.

{% tabs setting-sidebar %}
<!-- tab <code>position</code> -->
Set up sidebar position by changing the value of `sidebar.position`, which can be one of following:

* **`left`** → Place at the left of the screen.
* `right` → Place at the right of the screen.

```yml next/_config.yml
sidebar:
  position: left
  #position: right
```

<!-- endtab -->

<!-- tab <code>width</code> -->
You can change sidebar width by specify `sidebar.width` setting in pixels, for example:

```yml next/_config.yml
sidebar:
  width: 300
```

{% note warning %}
This option is commented out by default and values are:

* For Muse | Mist schemes: `320`
* For Pisces | Gemini schemes: `240`

{% endnote %}
<!-- endtab -->

<!-- tab <code>display</code> -->
Set up conditions under which sidebar will show by editing `sidebar.display` value, which can be one of following:

* **`post`** → Show sidebar only in posts which have index.
* `always` → Show sidebar in all pages.
* `hide` → Hide it in all pages (but can be opened by user manually).
* `remove` → Remove sidebar totally.

```yml next/_config.yml
sidebar:
  display: post
  #display: always
  #display: hide
  #display: remove
```
<!-- endtab -->

<!-- tab <code>padding</code> -->
Set up sidebar padding in pixels by changing the value of `sidebar.padding`:

```yml next/_config.yml
sidebar:
  padding: 18
```
<!-- endtab -->

<!-- tab <code>offset</code> -->
Set up sidebar offset from top menubar in pixels by changing the value of `sidebar.offset`:

```yml next/_config.yml
sidebar:
  offset: 12
```

{% note danger %}
For now only Pisces / Gemini Schemes supports `offset` setting under **6.0.x** version or higher.
{% endnote %}
<!-- endtab -->

{% endtabs %}

#### Sidebar Site State

By default NexT shows the categories and counts of Posts / Categories / Tags in sidebar. You can configure it by editing value `site_state` in {% label primary@theme config file %}.

```yml next/_config.yml
site_state: true
```

#### Sidebar Social Links

{% note default %}
Social Links have similar fucture as [Menu Items](../getting-started/#Configuring-Menu-Items), only target link there is difference: specified link must have full url path (permalink).
{% endnote %}

Edit the `social` section in {% label primary@theme config file %} as following:

```yml next/_config.yml
social:
  GitHub: https://github.com/yourname || fab fa-github
  E-Mail: mailto:yourname@gmail.com || fa fa-envelope
  Weibo: https://weibo.com/yourname || fab fa-weibo
  Google: https://plus.google.com/yourname || fab fa-google
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
You can configure it by editing value `enable` in `social_icons` section in {% label primary@theme config file %}.

```yml next/_config.yml
social_icons:
  enable: true
```
<!-- endtab -->

<!-- tab <code>icons_only</code> -->
Set the value `icons_only` to `true` to display social icons without description in `social_icons` section in {% label primary@theme config file %} as following:

```yml next/_config.yml
social_icons:
  icons_only: true
```
<!-- endtab -->

<!-- tab <code>transition</code> -->
Set the value `transition` to `true` to display social icons with transition effects in `social_icons` section in {% label primary@theme config file %} as following:

```yml next/_config.yml
social_icons:
  transition: true
```
<!-- endtab -->

{% endtabs %}

#### Sidebar Blogrolls

You can add blog rolls within sidebar in NexT.

{% tabs blogrolls %}
<!-- tab <code>links_settings</code> -->
By default NexT shows the `globe` icon {% btn #,, globe %} before `title`. The name of icon can be found in [Font Awesome](https://fontawesome.com) site. You can configure it by editing value `icon` in `links_settings` section in {% label primary@theme config file %}.

```yml next/_config.yml
links_settings:
  icon: fa fa-globe
```

By default NexT uses `Links` as the name of blogroll. You can configure it by editing value `title` in `links_settings` section in {% label primary@theme config file %}.

```yml next/_config.yml
links_settings:
  title: Links
```

By default all blogrolls are displayed in block. You can configure it to `inline` by editing value `layout` in `links_settings` section in {% label primary@theme config file %}.

```yml next/_config.yml
links_settings:
  layout: block
```
<!-- endtab -->

<!-- tab <code>links</code> -->
Edit the `links` section in {% label primary@theme config file %} and add your favorite links:

```yml next/_config.yml
links:
  Title1: https://example1.com/
  Title2: https://example2.com/
```
<!-- endtab -->

{% endtabs %}

#### Sidebar TOC

{% tabs toc %}
<!-- tab <code>enable</code> -->
By default NexT shows `Table Of Contents (TOC)` in the sidebar. You can disable it by setting `toc.enable` to `false` in {% label primary@theme config file %}.

```yml next/_config.yml
toc:
  enable: true
```
<!-- endtab -->

<!-- tab <code>number</code> -->
By default NexT adds list number to TOC automatically. You can disable it by setting `toc.number` to `false` in {% label primary@theme config file %}.

```yml next/_config.yml
toc:
  number: true
```
<!-- endtab -->

<!-- tab <code>wrap</code> -->
If the post header width longer than sidebar width, you can wrap the header words in next lines by setting `toc.wrap` to `true` in {% label primary@theme config file %}.

```yml next/_config.yml
toc:
  wrap: true
```
<!-- endtab -->

<!-- tab <code>expand_all</code> -->
If you want all level of TOC in a post to be displayed, rather than the activated part of it, you can set `toc.expand_all` to `true` in {% label primary@theme config file %}.

```yml next/_config.yml
toc:
  expand_all: true
```
<!-- endtab -->

<!-- tab <code>max_depth</code> -->
By default maximum heading depth of generated toc is 6. You can set it by setting `toc.max_depth` to `another number` in {% label primary@theme config file %}.
```yml next/_config.yml
toc:
  max_depth: 3
```
<!-- endtab -->
{% endtabs %}

### Back To Top

{% tabs b2t %}
<!-- tab <code>enable</code> -->
```yml next/_config.yml
back2top:
  enable: true
```
Set the value `back2top.enable` to `true` to display `Back to top` button.
<!-- endtab -->

<!-- tab <code>sidebar</code> -->
```yml next/_config.yml
back2top:
  # Back to top in sidebar.
  sidebar: true
```

Set the value `back2top.sidebar` to `true` to put the button in sidebar.
<!-- endtab -->

<!-- tab <code>scrollpercent</code> -->
```yml next/_config.yml
back2top:
  # Scroll percent label in b2t button.
  scrollpercent: true
```

Set the value `back2top.scrollpercent` to `true` to display scroll percent label in `Back to top` button.
<!-- endtab -->
{% endtabs %}
