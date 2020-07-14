---
title: Advanced Settings
description: NexT User Docs – Advanced Settings
---

Besides normal [Theme Settings](/docs/theme-settings/) and [Third-party Services](/docs/third-party-services/), NexT supports some advanced settings which makes NexT customizable.
Please note that those settings may lead to abnormal behavior if they are wrong. Change them only when you know for what they are.

### CDN Settings

This feature is located under `vendors` section in {% label primary@theme config file %}.

```yml next/_config.yml
vendors:
  # Available values: local, jsdelivr, unpkg
  internal: local

  # Internal version: 3.1.0
  # anime: //unpkg.com/animejs@3.1.0/lib/anime.min.js
  # anime: //cdnjs.cloudflare.com/ajax/libs/animejs/3.1.0/anime.min.js
  anime:

  # Internal version: 5.13.0
  # fontawesome: //unpkg.com/@fortawesome/fontawesome-free@5/css/all.min.css
  # fontawesome: //cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css
  fontawesome:

  ...
```

`internal: local` is used to set how to load the internal library, e.g. `source/js/utils.js`. Set `internal` to `jsdelivr` or `unpkg` to load them from the corresponding CDN.

And next part is the config of each library. Each config is in format of `libname: CDN URL`. For example:

```yml
anime: //unpkg.com/animejs@3.1.0/lib/anime.min.js
```

You can set it to a proper CDN URL, which can make static assets (JavaScript Third-party Library) load faster.

#### Core plugins

Now NexT contains following libraries as core plugins:

| Name               | Official Site                                            | Internal Version      |
| ------------------ | -------------------------------------------------------- | --------------------- |
| Anime.js           | [animejs.com](https://animejs.com)                       | 3.1.0                 |
| FontAwesome        | [fontawesome.com](https://fontawesome.com)               | 5.13.0                |
| Animate.css        | [animate.style](https://animate.style)                   | 3.1.1                 |

The core plugins are loaded from your site by default, they are required by the basic functions of NexT.

{% note info %}
If your site is deployed to any free hosting service (Github, Gitlab, etc.), CDN links are recommended for core plugins. CDN usually has faster speeds and no traffic restrictions.
{% endnote %}

#### Third-party plugins

Third-party plugins are loaded from [jsDelivr](https://www.jsdelivr.com/) CDN by default, and they provide a large number of optional features.

And we also provide other optional CDNs, including the famous [UNPKG](https://unpkg.com) and [CDNJS](https://cdnjs.com/).
Particularly, if you are a Chinese blogger or most of your visits come from China, please note that **the CDNJS is blocked in some parts of China**, don't use it as your CDN provider.

For example, if you want to set the CDN URL for `mediumzoom`, go to {% label primary@theme config file %} and see:

```yml next/_config.yml
vendors:
  # ...
  # Some contents...
  # ...
  mediumzoom: # Set or update mediumzoom CDN URL.
```

If you leave it blank, NexT will use jsDelivr as the default CDN provider. jsDelivr CDN is used to deliver our third-party plugins because it is fast in everywhere. It does not only provide mirrors for the files from npm packages, but also fetch from the GitHub releases! We could use the following link to reference the js files, just as other CDNs.

```
//cdn.jsdelivr.net/gh/user/repo@version/file
```

And it could automatically minify the JS and CSS files, even if you don't have the minified version. Just use the `filename.min.js` or the `filename.min.css` to replace the file above. For more information: https://www.jsdelivr.com/features

If you want to try the other CDNs not included in the optional list, you would better use the corresponding version.
«Internal version» is the version that NexT tested and uses. And if you need other versions you need to test them first.

{% note info %}
If your would like to load all third-party plugins from your site, please install the `@next-theme/plugins` package: https://github.com/next-theme/plugins
If your website is deployed in the local area network, then this will have a faster loading speed than CDN services.
{% endnote %}

### Injects

We extended the Hexo filter and added `theme_inject`, so user can add the desired custom content to any injection point.

#### Synopsis

```js
hexo.extend.filter.register('theme_inject', function(injects) {
  // ...
});
```

A injects argument will get passed into the function, so we can use it add custom code in `injectPoint` as following.

For inject view:
```js
// The name of same `injectPoint` suggest be unique. If same, it will override low priority configurations.
// `locals` and `options` is the same as partial https://hexo.io/docs/helpers#partial.
// `order` defines the order of injection, which by default depends on the priority of injection.
hexo.extend.filter.register('theme_inject', function(injects) {
  // it will put code from this filePath into injectPoint.
  injects.[injectPoint].file(name, filePath, [locals, options, order]);
  // it will put raw string as code into injectPoint.
  injects.[injectPoint].raw(name, raw, [locals, options, order]);
});
```

{% note warning %}
You have to note `filePath`, it must be absolute path or relative to `hexo_dir`.
{% endnote %}

For inject style:
```js
hexo.extend.filter.register('theme_inject', function(injects) {
  // it will put styleFile into injectPoint.
  injects.[injectPoint].push(styleFile);
});
```

These are many `injectPoint`, defined in [`injects-point.js`](https://github.com/next-theme/hexo-theme-next/blob/master/scripts/events/lib/injects-point.js)
```js
module.exports = {
  views: ['head', 'header', 'sidebar', 'postMeta', 'postBodyEnd', ..., 'footer', 'bodyEnd'],
  styles: ['variable', 'mixin', 'style']
};
```

`custom_file_path` also uses this API, see [default-injects.js](https://github.com/next-theme/hexo-theme-next/blob/master/scripts/filters/default-injects.js). It will consume `custom` name in view inject points. So if you use `custom_file_path`, please not use `custom`.

#### Examples

**One:** load a custom script. We can add it in `bodyEnd`.

```js
hexo.extend.filter.register('theme_inject', function(injects) {
  injects.bodyEnd.raw('load-custom-js', '<script src="js-path-or-cdn.js"></script>', {}, {cache: true});
});
```

**Two:** add a custom `my-favourite-food.njk` to sidebar.

Step1: you should create `my-favourite-food.njk` in any path(e.g. `source/_data/`) as below. You can get variable from `hexo` or `local` defined in filter.
```html
{% for food in foods %}
  <div>{{food}}</div>
{% endfor %}
```

Step2: add filter to load it.
```js
hexo.extend.filter.register('theme_inject', function(injects) {
  injects.sidebar.file('my-favourite-food', 'source/_data/my-favourite-food.njk', {
    foods: ['apple', 'orange']
  });
});
```

**Three:** want to have big header, put `big-header.styl` to NexT.

Of course, you need to create this file first(e.g. `source/_data/big-header.styl`).
```css
h1 {
  font-size: 2rem;
}
```

And then add it in filter.
```js
hexo.extend.filter.register('theme_inject', function(injects) {
  injects.style.push('source/_data/big-header.styl');
});
```

#### Plugin

We also support hexo's plugin system, which makes it easy to extend functions without modifying the source code of the core module. You can see <https://hexo.io/docs/plugins.html#Plugin> to learn how to create a plugin.
