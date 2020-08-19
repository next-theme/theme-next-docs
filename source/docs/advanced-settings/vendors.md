---
title: Vendors
description: NexT User Docs – Advanced Settings - Vendors
---

### CDN Settings

This feature is located under `vendors` section in {% label primary@theme config file %}.

```yml next/_config.yml
vendors:
  # The CDN provider of NexT internal scripts.
  # Available values: local | jsdelivr | unpkg
  internal: local
  # The default CDN provider of third-party plugins.
  # Available values: local | jsdelivr | unpkg | cdnjs
  # Dependencies for `plugins: local`: https://github.com/next-theme/plugins
  plugins: jsdelivr

  # In the following settings, you can specify the CDN link for each plugin.
  # If left blank, the default CDN provider set by `plugins` option will be used.

  # Anime.js
  # For more information: https://animejs.com
  anime:

  # Font Awesome
  # For more information: https://fontawesome.com
  fontawesome:

  ...
```

#### Core Plugins

`internal: local` is used to set how to load the internal library, e.g. `source/js/utils.js`. The core plugins are loaded from your site by default, they are required by the basic functions of NexT. Set `internal` to `jsdelivr` or `unpkg` to load them from the corresponding CDN.

{% note info %}
If your site is deployed to any free hosting service (Github, Gitlab, etc.), CDN links are recommended for core plugins. CDN usually has faster speeds and no traffic restrictions.
{% endnote %}

{% note danger %}
If you are using the latest master branch of NexT, please set `internal: local`.
{% endnote %}

#### Third-party Plugins

`plugins: jsdelivr` is used to set how to load the third-party plugins, e.g. `anime.js`. Third-party plugins are loaded from [jsDelivr](https://www.jsdelivr.com/) CDN by default.
The reason that jsDelivr is chosen to deliver our third-party plugins is because it is fast everywhere, and jsDelivr has the valid ICP license issued by the Chinese government, it can be accessed in China pretty well. jsDelivr does not only provide mirrors for the files from npm packages, but also fetch from the GitHub releases! We could use the following link to reference the js files, just as other CDNs.

```
//cdn.jsdelivr.net/gh/user/repo@version/file
```

And it could automatically minify the JS and CSS files, even if you don't have the minified version. Just use the `filename.min.js` or the `filename.min.css` to replace the file above. For more information: https://www.jsdelivr.com/features

And we also provide other optional CDNs, including the famous [UNPKG](https://unpkg.com) and [CDNJS](https://cdnjs.com). Set `plugins` to `unpkg` or `cdnjs` to load them from different CDN provider.

{% note warning %}
Particularly, if you are a Chinese blogger or most of your visits come from China, please note that **the CDNJS is blocked in some parts of China**, don't use it as your CDN provider.
{% endnote %}

{% note info %}
If your would like to load all third-party plugins from your site, please set `plugins` to `local` and install the `@next-theme/plugins` package: https://github.com/next-theme/plugins
If your website is deployed in the local area network, then this will have a faster loading speed than CDN services.
{% endnote %}

And next part is the config of each library. Each config is in format of `libname: CDN URL`. For example:

```yml next/_config.yml
anime: //unpkg.com/animejs@3.1.0/lib/anime.min.js
```

**If you leave it blank, NexT will use the default CDN provider set by `plugins` option.**

You can set it to a proper CDN URL, which can make the static assets of third-party plugins load faster. For example, if you want to set the CDN URL for `mediumzoom`, go to {% label primary@theme config file %} and see:

```yml next/_config.yml
vendors:
  # ...
  # Some contents...
  # ...
  mediumzoom: # Set or update mediumzoom CDN URL.
```

If you want to try the other CDNs not included in the available values of `plugins` option, you would better use the corresponding version. Versions in `_vendors.yml` are recommended by NexT. And if you need other versions you need to test them first.
