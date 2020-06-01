---
title: Advanced Settings
description: NexT User Docs – Advanced Settings
---

Besides normal [Theme Settings](/docs/theme-settings/) and [Third-party Services](/docs/third-party-services/), NexT supports some advanced settings which makes NexT customizable.
Please note that those settings may lead to abnormal behavior if they are wrong. Change them only when you know for what they are.

### Third-party JS Libraries

This feature is located under `vendors` section in {% label primary@theme config file %}.
`_internal: lib` is used to tell NexT where internal library is located and you shouldn't change this in most cases.

And next part is config of each library; if you leave it blank NexT will use internal version. Each config is in format of `libname: CDN URL`. For example:

```yml
anime: //cdn.jsdelivr.net/npm/animejs@3.1.0/lib/anime.min.js
```

You can set it to a proper CDN URL, which can make static assets (JavaScript Third-party Library) load faster. Now NexT contains following third-party library:

| Name               | Original Link                                            | Internal Version      |
| ------------------ | -------------------------------------------------------- | --------------------- |
| Anime.js           | [animejs.com](https://animejs.com)                       | 3.1.0                 |
| FontAwesome        | [fontawesome.io](http://fontawesome.io)                  | 5.13.0                |
| VelocityJS         | [velocityjs.org](http://velocityjs.org)                  | 1.2.1                 |
| VelocityJS UI Pack | [velocityjs.org/#uiPack](http://velocityjs.org/#uiPack)  | 1.2.1                 |

NexT use the [jsDelivr](https://www.jsdelivr.com/) as the default CDN service provider. The reason that jsDelivr is chosen is because it is fast everywhere, and jsDelivr has the valid ICP license issued by the Chinese government, it can be accessed in China pretty well.

And we also provide other optional CDNs, including the famous [CDNJS](https://cdnjs.com/).
Particularly, if you are a Chinese blogger or most of your visits come from China, please note that **the CDNJS is blocked in some parts of China**, don't use it as your CDN.

If you want to try the other CDNs not included in the optional list, you would better use the corresponding version.
«Internal version» is the version that NexT tested and uses. And if you need other versions you need to test them first.

```yml next/_config.yml
# Script Vendors. Set a CDN address for the vendor you want to customize.
# Be aware that you would better use the same version as internal ones to avoid potential problems.
# Please use the https protocol of CDN files when you enable https on your site.
vendors:
  # Internal path prefix. Please do not edit it.
  _internal: lib

  # Internal version: 3.1.0
  # Example:
  # anime: //cdn.jsdelivr.net/npm/animejs@3.1.0/lib/anime.min.js
  anime:

  # Internal version: 5.13.0
  # fontawesome: //cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5/css/all.min.css
  # fontawesome: //cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css
  fontawesome:

  # MathJax
  # Example:
  # mathjax: //cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js
  mathjax:

  # KaTeX
  # Example:
  # katex: //cdn.jsdelivr.net/npm/katex@0/dist/katex.min.css
  # katex: //cdnjs.cloudflare.com/ajax/libs/KaTeX/0.7.1/katex.min.css
  # copy_tex_js: //cdn.jsdelivr.net/npm/katex@0/dist/contrib/copy-tex.min.js
  # copy_tex_css: //cdn.jsdelivr.net/npm/katex@0/dist/contrib/copy-tex.min.css
  katex:
  copy_tex_js:
  copy_tex_css:

  # Internal version: 0.2.8
  # Example:
  # pjax: //cdn.jsdelivr.net/gh/next-theme/pjax@0/pjax.min.js
  pjax:

  # FancyBox
  # Example:
  # jquery: //cdn.jsdelivr.net/npm/jquery@3/dist/jquery.min.js
  # fancybox: //cdn.jsdelivr.net/gh/fancyapps/fancybox@3/dist/jquery.fancybox.min.js
  # fancybox_css: //cdn.jsdelivr.net/gh/fancyapps/fancybox@3/dist/jquery.fancybox.min.css
  jquery:
  fancybox:
  fancybox_css:

  # Medium-zoom
  # Example:
  # mediumzoom: //cdn.jsdelivr.net/npm/medium-zoom@1/dist/medium-zoom.min.js
  mediumzoom:

  # Lazyload
  # Example:
  # lazyload: //cdn.jsdelivr.net/npm/lozad@1/dist/lozad.min.js
  # lazyload: //cdnjs.cloudflare.com/ajax/libs/lozad.js/1.9.0/lozad.min.js
  lazyload:

  # Pangu
  # Example:
  # pangu: //cdn.jsdelivr.net/npm/pangu@4/dist/browser/pangu.min.js
  # pangu: //cdnjs.cloudflare.com/ajax/libs/pangu/4.0.7/pangu.min.js
  pangu:

  # Quicklink
  # Example:
  # quicklink: //cdn.jsdelivr.net/npm/quicklink@1/dist/quicklink.umd.js
  quicklink:

  # DisqusJS
  # Example:
  # disqusjs_js: //cdn.jsdelivr.net/npm/disqusjs@1/dist/disqus.js
  # disqusjs_css: //cdn.jsdelivr.net/npm/disqusjs@1/dist/disqusjs.css
  disqusjs_js:
  disqusjs_css:

  # Valine
  # Example:
  # valine: //cdn.jsdelivr.net/npm/valine@1/dist/Valine.min.js
  # valine: //cdnjs.cloudflare.com/ajax/libs/valine/1.4.14/Valine.min.js
  valine:

  # Gitalk
  # Example:
  # gitalk_js: //cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.min.js
  # gitalk_css: //cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.css
  gitalk_js:
  gitalk_css:

  # Algolia Search
  # Example:
  # algolia_search: //cdn.jsdelivr.net/npm/algoliasearch@4/dist/algoliasearch-lite.umd.js
  # instant_search: //cdn.jsdelivr.net/npm/instantsearch.js@4/dist/instantsearch.production.min.js
  algolia_search:
  instant_search:

  # Mermaid
  # Example:
  # mermaid: //cdn.jsdelivr.net/npm/mermaid@8/dist/mermaid.min.js
  # mermaid: //cdnjs.cloudflare.com/ajax/libs/mermaid/8.0.0/mermaid.min.js
  mermaid:

  # Internal version: 1.2.1
  # Example:
  # velocity: //cdn.jsdelivr.net/npm/velocity-animate@1/velocity.min.js
  # velocity: //cdnjs.cloudflare.com/ajax/libs/velocity/1.2.1/velocity.min.js
  # velocity_ui: //cdn.jsdelivr.net/npm/velocity-animate@1/velocity.ui.min.js
  # velocity_ui: //cdnjs.cloudflare.com/ajax/libs/velocity/1.2.1/velocity.ui.min.js
  velocity:
  velocity_ui:

  # Internal version: 1.0.2
  # Example:
  # pace: //cdn.jsdelivr.net/npm/pace-js@1/pace.min.js
  # pace: //cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/pace.min.js
  # pace_css: //cdn.jsdelivr.net/npm/pace-js@1/themes/blue/pace-theme-minimal.css
  # pace_css: //cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/themes/blue/pace-theme-minimal.min.css
  pace:
  pace_css:

  # Internal version: 1.0.0
  # Example:
  # three: //cdn.jsdelivr.net/gh/next-theme/theme-next-three@1/three.min.js
  # three_waves: //cdn.jsdelivr.net/gh/next-theme/theme-next-three@1/three-waves.min.js
  # canvas_lines: //cdn.jsdelivr.net/gh/next-theme/theme-next-three@1/canvas_lines.min.js
  # canvas_sphere: //cdn.jsdelivr.net/gh/next-theme/theme-next-three@1/canvas_sphere.min.js
  three:
  three_waves:
  canvas_lines:
  canvas_sphere:

  # Internal version: 1.0.0
  # Example:
  # canvas_ribbon: //cdn.jsdelivr.net/gh/next-theme/theme-next-canvas-ribbon@1/canvas-ribbon.js
  canvas_ribbon:
```

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
