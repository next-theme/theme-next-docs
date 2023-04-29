---
title: Custom Files
description: NexT User Docs – Advanced Settings - Custom Files
---

### Custom File Support

[Pull Request #868](https://github.com/theme-next/hexo-theme-next/pull/868) has adjusted the way of customizing the layout or style, canceling the custom files (such as `_custom/custom.styl`) in the original theme directory, and only retaining the way of specifying the custom file in the {% label primary@NexT config file %}.

It is a good practice to separate the custom files from the theme files, so that you can add custom content without modifying the original source code of the theme, and avoid conflicts due to `git merge`.

As with [Data Files](https://hexo.io/docs/data-files), you can place all custom layouts or styles in a specific location (for example: `hexo/source/_data`). Add the custom file to `hexo/source/_data` and uncomment the content under the `custom_file_path` section in the {% label primary@NexT config file %}.

{% note warning %}
The file name and path must be the same in `custom_file_path`.
{% endnote %}

```yml NexT config file
custom_file_path:
  #head: source/_data/head.njk
  #header: source/_data/header.njk
  #sidebar: source/_data/sidebar.njk
  #postMeta: source/_data/post-meta.njk
  #postBodyStart: source/_data/post-body-start.njk
  #postBodyEnd: source/_data/post-body-end.njk
  #footer: source/_data/footer.njk
  #bodyEnd: source/_data/body-end.njk
  #variable: source/_data/variables.styl
  #mixin: source/_data/mixins.styl
  #style: source/_data/styles.styl
```

In addition to `custom_file_path`, we also provide a more flexible way to customize, you can read the [Theme Inject](/docs/advanced-settings/injects.html) in documentation.

### Examples of Modifying Layout

#### Live2d Widget

Create and edit `source/_data/head.njk` in {% label info@site root directory %} and add the following content:

```html hexo/source/_data/head.njk
<script src="https://fastly.jsdelivr.net/gh/stevenjoezhang/live2d-widget@latest/autoload.js"></script>
```

Then uncomment `head` under the `custom_file_path` section in {% label primary@NexT config file %}.

```yml NexT config file
custom_file_path:
  head: source/_data/head.njk
```

#### Netlify Logo in Sidebar

Create and edit `source/_data/sidebar.njk` in {% label info@site root directory %} and add the following content:

```html hexo/source/_data/sidebar.njk
<div class="cc-license animated" itemprop="sponsor">
  <a href="https://www.netlify.com" class="cc-opacity" title="Deploy with Netlify → https://www.netlify.com" target="_blank"><img width="80" src="https://www.netlify.com/img/global/badges/netlify-dark.svg" alt="Netlify"></a>
</div>
```

Then uncomment `sidebar` under the `custom_file_path` section in {% label primary@NexT config file %}.

```yml NexT config file
custom_file_path:
  sidebar: source/_data/sidebar.njk
```

### Examples of Modifying Style

#### Tagcloud Color

Create and edit `source/_data/variables.styl` in {% label info@site root directory %} and add variables:

```css hexo/source/_data/variables.styl
$tag-cloud-start      = #aaa;
$tag-cloud-end        = #111;
$tag-cloud-start-dark = #555;
$tag-cloud-end-dark   = #eee;
```

Then uncomment `variable` under the `custom_file_path` section in {% label primary@NexT config file %}.

```yml NexT config file
custom_file_path:
  variable: source/_data/variables.styl
```

#### How to Change Content Width

By default, the content width of NexT is controlled by the following variables:

* `$content-desktop` → when screen width < 1200px.
* `$content-desktop-large` → when screen width >= 1200px.
* `$content-desktop-largest` → when screen width >= 1600px.
* In mobile / tablet devices it will use responsive width.

You can override the default content width by editing `source/_data/variables.styl` in {% label info@site root directory %}.

{% tabs change-content-width %}
<!-- tab Muse / Mist schemes -->
Default variables for both Muse and Mist schemes are defined as:

```styl next/source/css/_variables/base.styl
$content-desktop         = 700px
$content-desktop-large   = 800px
$content-desktop-largest = 900px
```

For example, you may override these variables with percentage value to increase content width. Create and edit `source/_data/variables.styl` in {% label info@site root directory %} and add variables:

```styl hexo/source/_data/variables.styl
$content-desktop         = 90%
$content-desktop-large   = 90%
$content-desktop-largest = 90%
```

{% note warning %}
If values will in percents, during opening sidebar will dynamically decrease content width to defined by you percent.
But in standard behaviour, sidebar must displace content from yourself.
To around it, you can specify content width in `em`:

```styl hexo/source/_data/variables.styl
$content-desktop         = 50em
$content-desktop-large   = 55em
$content-desktop-largest = 60em
```

{% endnote %}
<!-- endtab -->

<!-- tab Pisces / Gemini schemes -->
Default variables for Pisces (and Gemini) scheme are defined as:

```styl next/source/css/_variables/Pisces.styl
$content-desktop         = 'calc(100% - %s)' % unit($content-desktop-padding / 2, 'px')
$content-desktop-large   = 1160px
$content-desktop-largest = 73%
```

{% note warning %}
`$content-desktop` value in this schemes is auto-responsive by default. It can be changed to any value too, but for better content visibility recommended to stay it as is.
{% endnote %}

In this schemes content width was defined on maximum and already balanced: if desktop width will be wider – content width will more narrowed for easier reading. But if you want to make more narrow content width in wider desktops, here is example. Create and edit `source/_data/variables.styl` in {% label info@site root directory %} and add variables:

```styl hexo/source/_data/variables.styl
$content-desktop-large   = 65em
$content-desktop-largest = 65%
```

{% note info %}
In fact, Gemini scheme is just fork of Pisces scheme with some style improvements.
Therefore, almost all part of variables from Pisces scheme are imported to Gemini scheme too.
So, the changes of these variables or styles will be applied to both Pisces and Gemini schemes.
{% endnote %}
<!-- endtab -->
{% endtabs %}

Then uncomment `variable` under the `custom_file_path` section in {% label primary@NexT config file %}.

```yml NexT config file
custom_file_path:
  variable: source/_data/variables.styl
```

#### Hide Sidebar on Mobile

Create and edit `source/_data/styles.styl` in {% label info@site root directory %} and add styles:

```css hexo/source/_data/styles.styl
+tablet-mobile() {
  .sidebar-toggle, .sidebar {
    display: none;
  }
}
```

Then uncomment `style` under the `custom_file_path` section in {% label primary@NexT config file %}.

```yml NexT config file
custom_file_path:
  style: source/_data/styles.styl
```

#### Hide "Keep on posting" in Archive Page

Create and edit `source/_data/styles.styl` in {% label info@site root directory %} and add styles:

```css hexo/source/_data/styles.styl
.archive .collection-title {
  display: none !important;
}
```

Then uncomment `style` under the `custom_file_path` section in {% label primary@NexT config file %}.

```yml NexT config file
custom_file_path:
  style: source/_data/styles.styl
```
