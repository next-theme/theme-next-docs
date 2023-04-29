---
title: Injects
description: NexT User Docs – Advanced Settings - Injects
---

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

These are many `injectPoint`, defined in [`utils.js`](https://github.com/next-theme/hexo-theme-next/blob/master/scripts/events/lib/utils.js#L60)

```js
module.exports = {
  views: ['head', 'header', 'sidebar', 'postMeta', 'postBodyStart', 'postBodyEnd', 'footer', 'bodyEnd', 'comment'],
  styles: ['variable', 'mixin', 'style']
};
```

`custom_file_path` also uses this API, see [`default-injects.js`](https://github.com/next-theme/hexo-theme-next/blob/master/scripts/filters/default-injects.js). It will consume `custom` name in view inject points. So if you use `custom_file_path`, please not use `custom`.

#### Examples

**One:** load a custom script. We can add it in `bodyEnd`.

```js
hexo.extend.filter.register('theme_inject', function(injects) {
  injects.bodyEnd.raw('load-custom-js', '<script src="js-path-or-cdn.js"></script>', {}, {cache: true});
});
```

**Two:** add a custom `my-favourite-food.njk` to sidebar.

Step1: you should create `my-favourite-food.njk` in any path(e.g. `source/_data/`) as below. You can get variable from `hexo` or `local` defined in filter.

```jinja
{% for food in foods %}
  <div>{{ food }}</div>
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
