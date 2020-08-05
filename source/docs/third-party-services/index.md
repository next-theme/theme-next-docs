---
title: Third-party Services
description: NexT User Docs – Third-party Service Integration
---

Static website is limited in some functions, so we need third-party services to extend our site.
In any time you can extend needed functions by using third-party services supported by NexT.

### Adding Plugins

Plugins extend and expand the functionality of NexT. There are two types of plugins: core plugins and third-party plugins. The core plugins are loaded from your site by default, they are required by the basic functions of NexT. Third-party plugins provide a large number of optional features. They are loaded from jsDelivr CDN by default, because it is fast in everywhere.

Configuring these plugins is very easy. For example, if you want to use `pjax` in your site, just set `pjax` to `true` in {% label primary@theme config file %}:

```yml next/_config.yml
# Easily enable fast Ajax navigation on your website.
# For more information: https://github.com/next-theme/pjax
pjax: true
```

If you want to specify the CDN provider for any plugins, you need to set / update the CDN URL. See [Advanced Settings](/docs/advanced-settings.html) for more information.

Detailed documentation about these plugins is listed below.

### Math Equations

* [Math Equations](/docs/third-party-services/math-equations.html)

### Comment Systems

* [Overview](/docs/third-party-services/comments.html#Overview)
* [Disqus](/docs/third-party-services/comments.html#Disqus)
* [DisqusJS](/docs/third-party-services/comments.html#DisqusJS)
* [LiveRe](/docs/third-party-services/comments.html#LiveRe)
* [Gitalk](/docs/third-party-services/comments.html#Gitalk)
* [Valine (China)](/docs/third-party-services/comments.html#Valine)
* [Changyan (China)](/docs/third-party-services/comments.html#Changyan)

### Statistics and Analytics

#### Analytics

* [Google Analytics](/docs/third-party-services/statistics-and-analytics.html#Google-Analytics)
* [Baidu Analytics (China)](/docs/third-party-services/statistics-and-analytics.html#Baidu-Analytics-China)
* [Growingio Analytics](/docs/third-party-services/statistics-and-analytics.html#Growingio-Analytics)
* [CNZZ Analytics (China)](/docs/third-party-services/statistics-and-analytics.html#CNZZ-Analytics-China)

#### Statistics

* [LeanCloud (China)](/docs/third-party-services/statistics-and-analytics.html#LeanCloud-China)
* [Firebase](/docs/third-party-services/statistics-and-analytics.html#Firebase)
* [Busuanzi Counting](/docs/third-party-services/statistics-and-analytics.html#Busuanzi-Counting-China)

### Post Widgets

* [Widgetpack Rating](/docs/third-party-services/post-widgets.html#Widgetpack-Rating)
* [AddThis](/docs/third-party-services/post-widgets.html#AddThis)

### Search Services

* [Algolia Search](/docs/third-party-services/search-services.html#Algolia-Search)
* [Local Search](/docs/third-party-services/search-services.html#Local-Search)
* [Swiftype](/docs/third-party-services/search-services.html#Swiftype-Search)

### Chat Services

* [Chatra](/docs/third-party-services/chat-services.html#Chatra)
* [Tidio](/docs/third-party-services/chat-services.html#Tidio)

### External Libraries

* [PJAX](/docs/third-party-services/external-libraries.html#PJAX)
* [Fancybox](/docs/third-party-services/external-libraries.html#Fancybox)
* [MediumZoom](/docs/third-party-services/external-libraries.html#Medium-Zoom)
* [Lazyload](/docs/third-party-services/external-libraries.html#Lazyload)
* [Pangu Autospace](/docs/third-party-services/external-libraries.html#Pangu-Autospace)
* [Quicklink](/docs/third-party-services/external-libraries.html#Quicklink)
* [Motion](/docs/third-party-services/external-libraries.html#Animation-Effect)
* [Progress bar](/docs/third-party-services/external-libraries.html#Progress-Bar)
* [Canvas Ribbon](/docs/third-party-services/external-libraries.html#Canvas-Ribbon)
