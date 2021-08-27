---
title: Vendors
description: NexT User Docs – Advanced Settings - Vendors
---

### CDN Settings

You can specify a proper CDN provider in the `vendors` section in {% label primary@theme config file %}, which can make the static assets of plugins load faster.

```yml next/_config.yml
vendors:
  # The CDN provider of NexT internal scripts.
  # Available values: local | jsdelivr | unpkg | cdnjs
  # Warning: If you are using the latest master branch of NexT, please set `internal: local`
  internal: local
  # The default CDN provider of third-party plugins.
  # Available values: local | jsdelivr | unpkg | cdnjs
  # Dependencies for `plugins: local`: https://github.com/next-theme/plugins
  plugins: jsdelivr
```

#### Core Plugins

`internal: local` is used to set how to load the core plugins, e.g. `source/js/utils.js`. These plugins are loaded from your site by default, they are required by the basic functions of NexT. Set `internal` to `jsdelivr`, `unpkg` or `cdnjs` to load them from the corresponding CDN.

{% note info %}
If your site is deployed to any free hosting service (Github, Gitlab, etc.), CDN links are recommended for core plugins. CDN usually has faster speeds and no traffic restrictions.
{% endnote %}

{% note danger %}
If you are using the latest master branch of NexT, please set `internal: local`.
{% endnote %}

#### Third-party Plugins

`plugins: jsdelivr` is used to set how to load the third-party plugins, e.g. `anime.js`. Third-party plugins are loaded from [jsDelivr](https://www.jsdelivr.com/) CDN by default, because jsDelivr has the valid ICP license issued by the Chinese government, it can be accessed in China pretty well.

And we also provide other optional CDNs, including the famous [UNPKG](https://unpkg.com) and [CDNJS](https://cdnjs.com). These CDN providers are chosen to deliver our third-party plugins because they are fast and reliable. Set `plugins` to `unpkg` or `cdnjs` to load them from different CDN provider.

{% note warning %}
Particularly, if you are a Chinese blogger or most of your visits come from China, please note that **the CDNJS is blocked in some parts of China**, don't use it as your CDN provider.
{% endnote %}

{% note info %}
If your would like to load all third-party plugins from your site, please set `plugins` to `local` and install the `@next-theme/plugins` package: https://github.com/next-theme/plugins
If your website is deployed in the local area network, then this will have a faster loading speed than CDN services.
{% endnote %}

#### Custom CDN URLs

Sometimes you may need to use other CDNs not included in the available values of `vendors.plugins` option. In the `vendors` section, you can configure the CDN URL of each library individually.

The config is in format of `libname: CDN URL`. The `libname` is the same as in the `_vendors.yml` file. The `CDN URL` will override the default one.

For example, if you want to set the CDN URL for `anime`, go to {% label primary@theme config file %} and add a key named `anime` in the `vendors` section, and set its value to the CDN URL of anime.js:

```yml next/_config.yml
vendors:
  # ...
  # Some contents...
  # ...
  anime: //cdn.jsdelivr.net/gh/juliangarnier/anime@latest/lib/anime.min.js
```

It's recommended to use the same version of the library as in `_vendors.yml` to avoid potential problems. And if you need other versions you need to test them first.

Remember to use the HTTPS protocol of CDN links when you enable HTTPS on your site.

{% note info %}
jsDelivr does not only provide mirrors for the files from npm packages, but also fetch from the GitHub releases! We could use the following link to reference the js files, just as other CDNs.

```
//cdn.jsdelivr.net/gh/user/repo@version/file
```

And it could automatically minify the JS and CSS files, even if you don't have the minified version. Just use the `filename.min.js` or the `filename.min.css` to replace the file above. For more information: https://www.jsdelivr.com/features
{% endnote %}
