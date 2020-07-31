---
title: Custom Files
description: NexT User Docs – Theme Settings - Custom Files
---

### Custom File Support

PR [#868](https://github.com/theme-next/hexo-theme-next/pull/868) has adjusted the way of customizing the layout or style, canceling the custom files (such as `_custom/custom.styl`) in the original theme directory, and only retaining the way of specifying the custom file in the configuration file.

It is a good practice to separate the custom files from the theme files, so that you can add custom content without modifying the original source code of the theme, and avoid conflicts due to `git merge`.

As with [Data Files](https://hexo.io/docs/data-files), you can place all custom layouts or styles in a specific location (for example: `hexo/source/_data`). Add the custom file to `hexo/source/_data` and uncomment the content under the `custom_file_path` section in the {% label primary@theme config file %} (`next/_config.yml`)

{% note warning %}
The file name and path must be the same in `custom_file_path`.
{% endnote %}

```yml next/_config.yml
custom_file_path:
  #head: source/_data/head.njk
  #header: source/_data/header.njk
  #sidebar: source/_data/sidebar.njk
  #postMeta: source/_data/post-meta.njk
  #postBodyEnd: source/_data/post-body-end.njk
  #footer: source/_data/footer.njk
  #bodyEnd: source/_data/body-end.njk
  #variable: source/_data/variables.styl
  #mixin: source/_data/mixins.styl
  #style: source/_data/styles.styl
```

In addition to `custom_file_path`, we also provide a more flexible way to customize, you can read the [Theme Inject](/docs/advanced-settings.html#Injects) in documentation.

### How to Change Content Width

By default NexT has following setting of content width:

* 700px → when screen width < 1200px.
* 800px → when screen width >= 1200px.
* 900px → when screen width >= 1600px.
* In mobile / tablet devices it will use responsive width.

You can change content width by editing CSS style file. Edit `source/_data/variables.styl` in {% label info@site root directory %} and add varibles:

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

### Hide Sidebar on Mobile

Edit `source/_data/styles.styl` in {% label info@site root directory %} and add styles:

```css
+tablet-mobile() {
  .sidebar-toggle, .sidebar {
    display: none;
  }
}
```

Then uncomment `style` under the `custom_file_path` section in {% label primary@theme config file %}.

### Overriding Default Style

Edit `source/_data/styles.styl` in {% label info@site root directory %} and add styles:

```css
.archive .collection-title {
  display: none !important;
}
```

Then uncomment `style` under the `custom_file_path` section in {% label primary@theme config file %}.
