---
title: Misc Theme Settings
date: 2018-02-08 18:50:03
description: NexT User Docs – Theme Settings - Misc Theme Settings
---

### Preconnect

NexT supports adding preconnect resource hints to establish early connections to fonts and plugins origins.

You can enable it by setting `preconnect: true` in {% label primary@NexT config file %}.

```yml NexT config file
# Preconnect CDN for fonts and plugins.
# For more information: https://www.w3.org/TR/resource-hints/#preconnect
preconnect: true
```

### Text Align

NexT allows to customize the text alignment in posts / pages. The `text-align` CSS property sets the horizontal alignment of a block element or table-cell box.

| Values         | Effect                                                                                                                                                                 |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `start`        | The same as `left` if direction is left-to-right and `right` if direction is right-to-left.                                                                            |
| `end`          | The same as `right` if direction is left-to-right and `left` if direction is right-to-left.                                                                            |
| `left`         | The inline contents are aligned to the left edge of the line box.                                                                                                      |
| `right`        | The inline contents are aligned to the right edge of the line box.                                                                                                     |
| `center`       | The inline contents are centered within the line box.                                                                                                                  |
| `justify`      | The inline contents are justified. Text should be spaced to line up its left and right edges to the left and right edges of the line box, except for the last line.    |
| `justify-all`  | Same as `justify`, but also forces the last line to be justified.                                                                                                      |
| `match-parent` | Similar to `inherit`, but the values `start` and `end` are calculated according to the parent's direction and are replaced by the appropriate `left` or `right` value. |

```yml NexT config file
# Set the text alignment in the posts.
text_align:
  # Available values: start | end | left | right | center | justify | justify-all | match-parent
  desktop: justify
  mobile: justify
```

### Mobile Devices Adaptation

If you want to reduce padding/margin indents on devices with narrow width, you can enable it by setting value `mobile_layout_economy` to `true` in {% label primary@NexT config file %}.

```yml NexT config file
mobile_layout_economy: true
```

### Theme Color

By default NexT uses black-deep (`#222`) as the color of browser header panel (it's supported by Safari 15 and Android Chrome). You can configure it by editing values with Hex color in `theme_color` section in {% label primary@NexT config file %}.

```yml NexT config file
theme_color:
  light: "#222"
  dark: "#222"
```
### Body Scrollbar

```yml NexT config file
# Override browsers' default behavior.
body_scrollbar:
  # Place the scrollbar over the content.
  overlay: false
  # Present the scrollbar even if the content is not overflowing.
  stable: false
```

### Codeblock Style

{% tabs codeblock %}
<!-- tab <code>theme</code> -->

NexT uses the [Highlight.js](https://highlightjs.org) and [Prism](https://prismjs.com) package to support code highlight.

{% note warning %}
Please read Hexo's documentation on [Syntax Highlighting](https://hexo.io/docs/syntax-highlight) first, and set it up in {% label info@Hexo config file %}.
{% endnote %}

You can preview all available Code Highlight themes here: [NexT Highlight Theme Preview](https://theme-next.js.org/highlight/). Change the value of `theme` and `prism` to choose the highlight style you like.

```yml NexT config file
codeblock:
  # Code Highlight theme
  # All available themes: https://theme-next.js.org/highlight/
  theme:
    light: default
    dark: stackoverflow-dark
  prism:
    light: prism
    dark: prism-dark
```

If Dark Mode is enabled, dark code highlighting themes will be available.
<!-- endtab -->

<!-- tab <code>copy_button</code> -->
NexT supports the copy-and-paste functionality of codeblock.

{% subtabs codeblock1 %}
<!-- tab <code>enable</code> -->
You can enable it by setting value `copy_button.enable` to `true` in {% label primary@NexT config file %}. By default NexT shows copy result of the copy-and-paste functionality.

```yml NexT config file
codeblock:
  copy_button:
    enable: true
```
<!-- endtab -->
<!-- tab <code>style</code> -->
With `style` option, you can change your copy button style.
There are three style available currently: `default` (Just leave it empty), `flat` and `mac`.

```yml NexT config file
codeblock:
  copy_button:
    style: flat
```
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

{% endtabs %}

### Back To Top

{% tabs b2t %}
<!-- tab <code>enable</code> -->
```yml NexT config file
back2top:
  enable: true
```

Set the value `back2top.enable` to `true` to display `Back to top` button.
<!-- endtab -->

<!-- tab <code>sidebar</code> -->
```yml NexT config file
back2top:
  # Back to top in sidebar.
  sidebar: true
```

Set the value `back2top.sidebar` to `true` to put the button in sidebar.
<!-- endtab -->

<!-- tab <code>scrollpercent</code> -->
```yml NexT config file
back2top:
  # Scroll percent label in b2t button.
  scrollpercent: true
```

Set the value `back2top.scrollpercent` to `true` to display scroll percent label in `Back to top` button.
<!-- endtab -->
{% endtabs %}

### Reading Progress

NexT supports the page scroll reading progress indicator.

You can enable it by setting value `reading_progress.enable` to `true` in {% label primary@NexT config file %}.

```yml NexT config file
reading_progress:
  enable: true
  # Available values: left | right
  start_at: left
  # Available values: top | bottom
  position: top
  reversed: false
  color: "#37c6c0"
  height: 2px
```

### Bookmark

Bookmark is a plugin that allow the users save their reading progress. Users could just click the bookmark icon (like 🔖) in left-top of the page to save the scroll position. And when they visit your blog in the next time, they can resume the last scroll position of each page automatically.

You can enable it by setting value `bookmark.enable` to `true` in {% label primary@NexT config file %}.

```yml NexT config file
bookmark:
  enable: false
  # Customize the color of the bookmark.
  color: "#222"
  # If auto, save the reading progress when closing the page or clicking the bookmark-icon.
  # If manual, only save it by clicking the bookmark-icon.
  save: auto
```

### GitHub Banner

NexT provides `Follow me on GitHub` banner in right-top corner.

```yml NexT config file
# Follow me on GitHub banner in right-top corner.
github_banner:
  enable: true
  permalink: https://github.com/yourname
```

You can set `enable` to `true` and add your own GitHub link.

### Fonts Customization

NexT gives you 5 specific font settings, they are:

* Global Font: Font used in the whole site.
* Title Font: Font used by site title.
* Headlines Font: Font used by headings in articles (h1, h2, h3, h4, h5, h6).
* Article Font: Font used by articles.
* Code Font: Font used by code blocks in articles.

Each font will be used as the first font of this class, NexT will fallback to internal font settings if they are unavailable.

* Non-code Font: Fallback to `"PingFang SC", "Microsoft YaHei", sans-serif`
* Code Font: Fallback to `consolas, Menlo, "PingFang SC", "Microsoft YaHei", monospace`

Plus each section has a `external` attribute, this controls whether to use the font library CDN.
Use this can help you to use fonts installed in system and reduce unnecessary requests.

{% note info %}
To solve the unstable of [Google Fonts API](https://fonts.google.com) in some countries, NexT supports custom URL of fonts library by setting `font.host`.
In addition, we noticed that for requests from certain websites, Google Fonts will return 403. At this time, it is necessary to use `font.host` to set up a mirror site.
Relevant issues: [#613](https://github.com/theme-next/hexo-theme-next/issues/613), [#1333](https://github.com/theme-next/hexo-theme-next/issues/1333)
{% endnote %}

```yml NexT config file
font:
  # Use custom fonts families or not.
  # Depended options: `external` and `family`.
  enable: true

  # Uri of fonts host, e.g. https://fonts.googleapis.com (Default).
  host:

  # Font options:
  # `external: true` will load this font family from `host` above.
  # `family: Times New Roman`. Without any quotes.
  # `size: x.x`. Use `em` as unit. Default: 1 (16px)

  # Global font settings used for all elements inside <body>.
  global:
    external: true
    family: Monda
    size: 1.125

  # Font settings for site title (.site-title).
  title:
    external: true
    family: Lobster Two
    size:

  # Font settings for headlines (<h1> to <h6>).
  headings:
    external: true
    family: Amita
    size:

  # Font settings for posts (.post-body).
  posts:
    external: true
    family: Montserrat

  # Font settings for <code> and code blocks.
  codes:
    external: true
    family: PT Mono
```

And you can apply multiple font families for each option. This is especially useful for those who often writes both Chinese and English.

```yml NexT config file
font:
  ...
  title:
    external: true
    family: Roboto Slab, Noto Serif SC
    size:
```

{% note info %}
According to the [CSS Fonts Module Level 3](https://www.w3.org/TR/2018/REC-css-fonts-3-20180920/#propdef-font-family) spec:
> Font family names other than generic families must either be given quoted as strings, or unquoted as a sequence of one or more identifiers.

To avoid escaping mistakes, quote font family names if necessary.
{% endnote %}

If you still need more customization, following change will cover Fonts Customization function. Edit `source/_data/variables.styl` in {% label info@site root directory %} and add two variables:

```styl hexo/source/_data/variables.styl
// Title Font, set it to font family you want.
$font-family-headings = Georgia, sans

// Set it to font family you want.
$font-family-base = "Microsoft YaHei", Verdana, sans-serif

// Code Font.
$code-font-family = "Input Mono", "PT Mono", Consolas, Monaco, Menlo, monospace

// Font size of articles.
$font-size-base = 16px

// Font size of table and code.
$table-font-size = 13px
```

Then uncomment `variable` under the `custom_file_path` section in {% label primary@NexT config file %}.
