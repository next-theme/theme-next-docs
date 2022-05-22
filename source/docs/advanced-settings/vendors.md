---
title: Vendors
description: NexT User Docs – Advanced Settings - Vendors
---

### CDN Settings

You can specify a proper CDN provider in the `vendors` section in {% label primary@NexT config file %}, which can make the static assets of plugins load faster.

```yml NexT config file
vendors:
  # The CDN provider of NexT internal scripts.
  # Available values: local | jsdelivr | unpkg | cdnjs | custom
  # Warning: If you are using the latest master branch of NexT, please set `internal: local`
  internal: local
  # The default CDN provider of third-party plugins.
  # Available values: local | jsdelivr | unpkg | cdnjs | custom
  # Dependencies for `plugins: local`: https://github.com/next-theme/plugins
  plugins: cdnjs
  # Custom CDN URL
  # For example:
  # custom_cdn_url: https://cdn.jsdelivr.net/npm/${npm_name}@${version}/${minified}
  # custom_cdn_url: https://cdnjs.cloudflare.com/ajax/libs/${cdnjs_name}/${version}/${cdnjs_file}
  custom_cdn_url:
```

#### Internal Scripts

`internal: local` is used to set how to load the internal scripts, e.g. `source/js/utils.js`. These libraries are loaded from your site by default, they are required by the basic functions of NexT. Set `internal` to `jsdelivr`, `unpkg` or `cdnjs` to load them from the corresponding CDN.

{% note info %}
If your site is deployed to any free hosting service (Github, Gitlab, etc.), CDN links are recommended for internal scripts. CDN usually has faster speeds and no traffic restrictions.
{% endnote %}

{% note danger %}
If you are using the latest master branch of NexT, please set `internal: local`.
{% endnote %}

#### Third-party Plugins

`plugins: cdnjs` is used to set how to load the third-party plugins, e.g. `anime.js`. Third-party plugins are loaded from [CDNJS](https://cdnjs.com) CDN by default.

And we also provide other optional CDNs, including the famous [UNPKG](https://unpkg.com) and [jsDelivr](https://www.jsdelivr.com/). These CDN providers are chosen to deliver our third-party plugins because they are fast and reliable. Set `plugins` to `unpkg` or `cdnjs` to load them from different CDN provider.

{% note warning %}
Particularly, if you are a Chinese blogger or most of your visits come from China, please note that **the CDNJS is blocked in some parts of China**, don't use it as your CDN provider.
{% endnote %}

{% note info %}
If your would like to load all third-party plugins from your site, please set `plugins` to `local` and install the `@next-theme/plugins` package: https://github.com/next-theme/plugins
If your website is deployed in the local area network, then this will have a faster loading speed than CDN services.
{% endnote %}

#### Custom CDN URLs

Sometimes you may need to use CDNs other than `jsdelivr`, `unpkg` or `cdnjs`. For example, users can get faster loading speed in certain areas using the mirror site of jsDelivr.

To enable custom CDN URL, you need to set `internal: custom` and / or `plugins: custom` in the `vendors` section, and then specify a CDN URL with the `custom_cdn_url` option.

Remember to use the HTTPS protocol of CDN links when you enable HTTPS on your site.

##### jsDelivr Mirrors

jsDelivr could automatically minify the JS and CSS files, even if the package owner doesn't publish the minified version on npm. You just need to access `*.min.js` and  `*.min.css`, instead of `*.js` and  `*.css`. For more information: https://www.jsdelivr.com/features

In theme NexT, you can simply use the variable `${minified}` in `custom_cdn_url` to serve the minified version if you are using a mirror site of jsDelivr. NexT will automatically replace the variable `${minified}` with the path of each JS file to load from CDN.

```yml NexT config file
vendors:
  custom_cdn_url: https://fastly.jsdelivr.net/npm/${npm_name}@${version}/${minified}
```

##### CDNJS Mirrors

```yml NexT config file
vendors:
  custom_cdn_url: https://cdnjs.cloudflare.com/ajax/libs/${cdnjs_name}/${version}/${cdnjs_file}
```

#### CDN URLs For Each Library

Furthermore, you can configure the CDN URL of each library individually in the `vendors` section.

The config is in format of `libname: CDN URL`. The `libname` is the same as in the `_vendors.yml` file. The `CDN URL` will override the default one.

For example, if you want to set the CDN URL for `anime`, go to {% label primary@NexT config file %} and add a key named `anime` in the `vendors` section, and set its value to the CDN URL of anime.js:

```yml NexT config file
vendors:
  # ...
  # Some contents...
  # ...
  anime: //fastly.jsdelivr.net/gh/juliangarnier/anime@latest/lib/anime.min.js
```

It's recommended to use the same version of the library as in `_vendors.yml` to avoid potential problems.
