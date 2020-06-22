---
title: Advanced Settings
description: NexT User Docs – Advanced Settings
---

Besides normal [Theme Settings](/docs/theme-settings/) and [Third-party Services](/docs/third-party-services/), NexT supports some advanced settings which makes NexT customizable.
Please note that those settings may lead to abnormal behavior if they are wrong. Change them only when you know for what they are.

### Third-party JS Libraries

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

You can set it to a proper CDN URL, which can make static assets (JavaScript Third-party Library) load faster. Now NexT contains following third-party library:

| Name               | Original Link                                            | Internal Version      |
| ------------------ | -------------------------------------------------------- | --------------------- |
| Anime.js           | [animejs.com](https://animejs.com)                       | 3.1.0                 |
| FontAwesome        | [fontawesome.io](http://fontawesome.io)                  | 5.13.0                |
| VelocityJS         | [velocityjs.org](http://velocityjs.org)                  | 1.2.1                 |
| VelocityJS UI Pack | [velocityjs.org/#uiPack](http://velocityjs.org/#uiPack)  | 1.2.1                 |

If you leave it blank, NexT will use [jsDelivr](https://www.jsdelivr.com/) as the default CDN provider. The reason that jsDelivr is chosen is because it is fast everywhere, and jsDelivr has the valid ICP license issued by the Chinese government, it can be accessed in China pretty well.

And we also provide other optional CDNs, including the famous [UNPKG](https://unpkg.com) and [CDNJS](https://cdnjs.com/).
Particularly, if you are a Chinese blogger or most of your visits come from China, please note that **the CDNJS is blocked in some parts of China**, don't use it as your CDN provider.

If you want to try the other CDNs not included in the optional list, you would better use the corresponding version.
«Internal version» is the version that NexT tested and uses. And if you need other versions you need to test them first.

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

**Two:** add a custom `my-favourite-food.swig` to sidebar.

Step1: you should create `my-favourite-food.swig` in any path(e.g. `source/_data/`) as below. You can get variable from `hexo` or `local` defined in filter.
```html
{% for food in foods %}
  <div>{{food}}</div>
{% endfor %}
```

Step2: add filter to load it.
```js
hexo.extend.filter.register('theme_inject', function(injects) {
  injects.sidebar.file('my-favourite-food', 'source/_data/my-favourite-food.swig', {
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
