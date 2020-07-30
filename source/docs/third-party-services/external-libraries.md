---
title: External Libraries
description: NexT User Docs – Third-party Service Integration – External Libraries
---

### PJAX

[Pjax](https://github.com/MoOx/pjax) is a standalone JavaScript module that uses AJAX (XmlHttpRequest) and `pushState()` to deliver a fast browsing experience.

It allows you to completely transform the user experience of standard websites (server-side generated or static ones) to make users feel like they are browsing an app, especially for those with low bandwidth connections.

{% note warning %}
Please use the absolute path of the image or [Hexo asset_img tag](https://hexo.io/docs/tag-plugins#Include-Assets) in your posts, otherwise the images may fail to load during Pjax refresh.
{% endnote %}

{% tabs pjax %}
<!-- tab NexT Config → -->

You can enable it by setting value `pjax` to `true` in {% label primary@theme config file %}.

```yml next/_config.yml
# Easily enable fast Ajax navigation on your website.
# For more information: https://github.com/next-theme/pjax
pjax: true
```

<!-- endtab -->

<!-- tab CDN Settings -->

If you want to use a different version from CDN, then need to **set vendors** in {% label primary@theme config file %}:
```yml next/_config.yml
vendors:
  ...
  pjax: //cdn.jsdelivr.net/gh/next-theme/pjax@0/pjax.min.js
  ...
```

<!-- endtab -->
{% endtabs %}

### Fancybox

NexT supports the fancybox plugin, which is a jQuery lightbox script for displaying images, videos and more. Touch enabled, responsive and fully customizable.

There is support for old version 2 and new version 3. Please, choose only any one variant, do not need to install both.

{% tabs fancybox %}
<!-- tab Version 2.x -->

{% subtabs fancybox1 %}
<!-- tab NexT Config → -->
You can enable it by setting value `fancybox` to `true` in {% label primary@theme config file %}.

```yml next/_config.yml
fancybox: true
```
<!-- endtab -->

<!-- tab CDN Settings -->
If you want to use a different version from CDN, please follow the instructions below.

You need to **set vendors** in {% label primary@theme config file %}:
```yml next/_config.yml
vendors:
  ...
  jquery: //cdn.jsdelivr.net/npm/jquery@3/dist/jquery.min.js
  fancybox: //cdn.jsdelivr.net/npm/fancybox@2/dist/js/jquery.fancybox.pack.js
  fancybox_css: //cdn.jsdelivr.net/npm/fancybox@2/dist/css/jquery.fancybox.min.css
  ...
```

<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

<!-- tab Version 3.x -->

{% subtabs fancybox2 %}
<!-- tab NexT Config → -->
You can enable it by setting value `fancybox` to `true` in {% label primary@theme config file %}.

```yml next/_config.yml
fancybox: true
```
<!-- endtab -->

<!-- tab CDN Settings -->
If you want to use a different version from CDN, please follow the instructions below.

You need to **set vendors** in {% label primary@theme config file %}:
```yml next/_config.yml
vendors:
  ...
  jquery: //cdn.jsdelivr.net/npm/jquery@3/dist/jquery.min.js
  fancybox: //cdn.jsdelivr.net/npm/fancybox@3/dist/js/jquery.fancybox.pack.js
  fancybox_css: //cdn.jsdelivr.net/npm/fancybox@3/dist/css/jquery.fancybox.min.css
  ...
```

<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

{% endtabs %}

### Medium Zoom

[Medium Zoom](https://github.com/francoischalifour/medium-zoom) is a JavaScript library for zooming images like Medium.

{% tabs medium-zoom %}
<!-- tab NexT Config → -->

You can enable it by setting value `mediumzoom` to `true` in {% label primary@theme config file %}.

```yml next/_config.yml
# A JavaScript library for zooming images like Medium.
mediumzoom: true
```

{% note warning %}
Do not enable both `fancybox` and `mediumzoom`.
{% endnote %}

<!-- endtab -->

<!-- tab CDN Settings -->
If you want to use a different version from CDN, please follow the instructions below.

You need to **set vendors** in {% label primary@theme config file %}:
```yml next/_config.yml
vendors:
  ...
  mediumzoom: https://cdn.jsdelivr.net/npm/medium-zoom@1/dist/medium-zoom.min.js
  ...
```

<!-- endtab -->
{% endtabs %}

### Lazyload

[Lozad.js](https://github.com/ApoorvSaxena/lozad.js) is a lazy loader plugin in modern vanilla JavaScript. It delays loading of images in long web pages. Images outside of viewport will not be loaded before user scrolls to them. This is opposite of image preloading.

{% tabs lazyload %}
<!-- tab NexT Config → -->

You can enable it by setting value `lazyload` to `true` in {% label primary@theme config file %}.

```yml next/_config.yml
# Vanilla JavaScript plugin for lazyloading images.
lazyload: true
```

Then run the following command in {% label info@site root dir %} to ensure that `lazyload` can be enabled or disabled correctly:
```bash
$ hexo clean
```

<!-- endtab -->

<!-- tab CDN Settings -->
If you want to use a different version from CDN, please follow the instructions below.

You need to **set vendors** in {% label primary@theme config file %}:
```yml next/_config.yml
vendors:
  ...
  lazyload: //cdn.jsdelivr.net/npm/lozad@1/dist/lozad.min.js
  ...
```

<!-- endtab -->
{% endtabs %}

### Pangu Autospace

[pangu.js](https://github.com/vinta/pangu.js) will automatically insert a blank space between all the Chinese characters and the hexagonal English numeric symbols on the page.

{% tabs pangu %}
<!-- tab NexT Config → -->
You can enable it by setting value `pangu` to `true` in {% label primary@theme config file %}.

```yml next/_config.yml
# Pangu Support
pangu: true
```
<!-- endtab -->

<!-- tab CDN Settings -->
If you want to use a different version from CDN, please follow the instructions below.

You need to **set vendors** in {% label primary@theme config file %}:
```yml next/_config.yml
vendors:
  ...
  # https://github.com/vinta/pangu.js
  pangu: //cdn.jsdelivr.net/npm/pangu@4/dist/browser/pangu.min.js
  ...
```

<!-- endtab -->
{% endtabs %}

### Quicklink

[Quicklink](https://github.com/GoogleChromeLabs/quicklink) is a JavaScript plugin that faster subsequent page-loads by prefetching in-viewport links during idle time. Chrome, Firefox, Edge are supported without polyfills.

{% tabs quicklink %}
<!-- tab NexT Config → -->

You can enable it by setting value `quicklink.enable` to `true` in {% label primary@theme config file %}.

```yml next/_config.yml
...
quicklink:
  enable: true
  home: true
  archive: true
  delay: true
  timeout: 3000
  priority: true
  ignores:
...
```

<!-- endtab -->

<!-- tab CDN Settings -->
If you want to use a different version from CDN, please follow the instructions below.

You need to **set vendors** in {% label primary@theme config file %}:
```yml next/_config.yml
vendors:
  ...
  quicklink: //cdn.jsdelivr.net/npm/quicklink@2/dist/quicklink.umd.js
  ...
```

<!-- endtab -->
{% endtabs %}

### Animation Effect

NexT enables animation effect by default which is supported by Anime.js and Animate.css, so it will wait for JavaScript loaded to show content.
If you need speed you can set this section `enable` to `false` to disable it.

Edit {% label primary@theme config file %} and set the needed values under the `motion` to fit your demand. You can preview all Transition variants here: [NexT Animation Effect Preview](https://theme-next.js.org/animate/).

```yml next/_config.yml
# Use Animate.css to animate everything.
# For more information: https://animate.style
motion:
  enable: true
  async: false
  transition:
    # All available Transition variants: https://theme-next.js.org/animate/
    post_block: fadeIn
    post_header: fadeInDown
    post_body: fadeInDown
    coll_header: fadeInLeft
    # Only for Pisces | Gemini.
    sidebar: fadeInUp
```

### Progress Bar

Pace will automatically monitor your Ajax requests, event loop lag, document ready state and elements on your page to decide on the progress.

{% tabs pace %}
<!-- tab NexT Config → -->

{% subtabs pace1 %}
<!-- tab <code>pace</code> -->
You can enable it by setting value `pace.enable` to `true` in {% label primary@theme config file %}.

```yml next/_config.yml
pace:
  enable: true
```
<!-- endtab -->
<!-- tab <code>theme</code> -->
Pace includes a bunch of [themes](https://github.hubspot.com/pace/docs/welcome/) to get you started. Just include the appropriate css file.

* pace-theme-big-counter
* pace-theme-bounce
* pace-theme-barber-shop
* pace-theme-center-atom
* pace-theme-center-circle
* pace-theme-center-radar
* pace-theme-center-simple
* pace-theme-corner-indicator
* pace-theme-fill-left
* pace-theme-flash
* pace-theme-flat-top
* pace-theme-loading-bar
* pace-theme-mac-osx
* pace-theme-material
* pace-theme-minimal

By default NexT uses `minimal` theme (pace-theme-minimal). You can configure it by editing values in `pace.theme` section in {% label primary@theme config file %}.

```yml next/_config.yml
pace:
  theme: minimal
```

{% note info %}
If you want to use the CDN, then need to **set vendors** in {% label primary@theme config file %}:
```yml next/_config.yml
vendors:
  ...
  pace_css: //cdn.jsdelivr.net/npm/pace-js@1/themes/blue/pace-theme-minimal.css
  ...
```
{% endnote %}

<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

<!-- tab CDN Settings -->

If you want to use a different version from CDN, then need to **set vendors** in {% label primary@theme config file %}:
```yml next/_config.yml
vendors:
  ...
  pace: //cdn.jsdelivr.net/npm/pace-js@1/pace.min.js
  pace_css: //cdn.jsdelivr.net/npm/pace-js@1/themes/blue/pace-theme-minimal.css
  ...
```

<!-- endtab -->
{% endtabs %}

### Canvas Ribbon

[canvas-ribbon.js](https://github.com/hustcc/ribbon.js) is a ribbon backgroud of website draw on canvas.

{% tabs canvas_ribbon %}
<!-- tab NexT Config → -->

You can enable it by setting value `canvas_ribbon` to `true` in {% label primary@theme config file %}. You can also configure the ribbon setting by editing values in `canvas_ribbon` section:

* size: The width of the ribbon.
* alpha: The transparency of the ribbon.
* zIndex: The display level of the ribbon.

```yml next/_config.yml
canvas_ribbon:
  enable: true
  size: 300
  alpha: 0.6
  zIndex: -1
```

<!-- endtab -->

<!-- tab CDN Settings -->

If you want to use a different version from CDN, then need to **set vendors** in {% label primary@theme config file %}:
```yml next/_config.yml
vendors:
  ...
  # https://github.com/hustcc/ribbon.js
  canvas_ribbon: //cdn.jsdelivr.net/npm/ribbon.js@1/dist/ribbon.min.js
  ...
```

<!-- endtab -->
{% endtabs %}
