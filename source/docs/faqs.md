---
title: Frequently Asked Questions
description: NexT User Docs – Frequently Asked Questions
---

Here is a collection of frequently asked questions in NexT Issues. If you can't find your problem here, please go to [NexT Issues](https://github.com/next-theme/hexo-theme-next/issues) to submit your question.

### How to Set «Read More»

See [Post Settings - Preamble Text](/docs/theme-settings/posts/#Preamble-Text).

### How to Change Fonts

NexT provided a [Fonts Customization](/docs/theme-settings#Fonts-Customization) function. If you still need more customization, following change will cover Fonts Customization function. Edit `source/_data/variables.styl` in {% label primary@Hexo root directory %} and add two varibles:

```styl hexo/source/_data/variables.styl
// Title Font, set it to font family you want.
$font-family-headings = Georgia, sans

// Set it to font family you want.
$font-family-base = "Microsoft YaHei", Verdana, sans-serif

// Code Font.
$code-font-family = "Input Mono", "PT Mono", Consolas, Monaco, Menlo, monospace

// Font size of articles.
$font-size-base = 16px

// Font size of code.
$code-font-size = 13px
```

Then uncomment `variable` under the `custom_file_path` section in {% label primary@theme config file %}.

### How to Change Content Width

By default NexT has following setting of content width:

* 700px → when screen width < 1200px.
* 800px → when screen width >= 1200px.
* 900px → when screen width >= 1600px.
* In mobile / tablet devices it will use responsive width.

You can change content width by editing CSS style file. Edit `source/_data/variables.styl` in {% label primary@Hexo root directory %} and add varibles:

{% tabs change-content-width %}
<!-- tab Muse / Mist schemes -->
Default variables for both Muse and Mist schemes are located in `source/css/_variables/base.styl` and defined as:

```styl next/source/css/_variables/base.styl
$content-desktop         = 700px
$content-desktop-large   = 800px
$content-desktop-largest = 900px
```

For example, you want wider content width. You may redefine this variables with percentage width:

```styl hexo/source/_data/variables.styl
$content-desktop         = 90%
$content-desktop-large   = 90%
$content-desktop-largest = 90%
```

{% note warning %}
If values will in percents, during opening sidebar will dynamically decrease content width to defined by you percent.
But in standard behaviour, sidebar must displace content from yourself.
To around it, you can to specify content width in `em`:

```styl hexo/source/_data/variables.styl
$content-desktop         = 50em
$content-desktop-large   = 55em
$content-desktop-largest = 60em
```
{% endnote %}
<!-- endtab -->

<!-- tab Pisces / Gemini schemes -->
Default variables for Pisces (and Gemini) scheme are located in `source/css/_variables/Pisces.styl` and defined as:

```styl next/source/css/_variables/Pisces.styl
$content-desktop         = 'calc(100% - %s)' % unit($content-desktop-padding / 2, 'px')
$content-desktop-large   = 1160px
$content-desktop-largest = 73%
```

{% note warning %}
`$content-desktop` value in this schemes is auto-responsive by default. It can be changed to any value too, but for better content visibility recommended to stay it as is.
{% endnote %}

In this schemes content width was defined on maximum and already balanced: if desktop width will be wider – content width will more narrowed for easier reading. But if you want to make more narrow content width in wider desktops, here is example:

```styl hexo/source/_data/variables.styl
$content-desktop-large   = 65em
$content-desktop-largest = 65%
```

{% note info %}
In fact, Gemini scheme is just fork of Pisces scheme with some style improvements.
Therefore, almost all part of variables from Pisces scheme are imported to Gemini scheme too.
So, if you want to add any variables or styles to both Pisces and Gemini schemes, need to edit values just in Pisces scheme.
{% endnote %}
<!-- endtab -->
{% endtabs %}

Then uncomment `variable` under the `custom_file_path` section in {% label primary@theme config file %}.

### How to Disable Comments on Page

When you enabled comment service like Disqus, all new page will have comment service automatically. If you want to disable it in one page, just add `comments` key to Front-matter and set it's value to `false`. Like following:

```md your-post.md
title: All tags
type: "tags"
comments: false
---
```

### How to Set Number of Articles in Each Page

Find and configure these options in {% label info@site config file %}:

```yml next/_config.yml
index_generator:
  per_page: 5

archive_generator:
  per_page: 20
  yearly: true
  monthly: true

tag_generator:
  per_page: 10
```

`per_page` is the number of articles per page.
