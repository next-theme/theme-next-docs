---
title: Third-party Plugins
description: NexT User Docs – Third-party Plugins Integration
---

Static website is limited in some functions, so we need third-party services to extend our site.
In any time you can extend needed functions by using third-party services supported by NexT.

### Adding Plugins

Plugins extend and expand the functionality of NexT. There are two types of libraries: internal scripts and third-party plugins. The internal scripts are loaded from your site by default, they are required by the basic functions of NexT. Third-party plugins provide a large number of optional features. They are loaded from jsDelivr CDN by default, because it is fast in everywhere.

Configuring these plugins is very easy. For example, if you want to use `pjax` in your site, just set `pjax` to `true` in {% label primary@NexT config file %}:

```yml NexT config file
# Easily enable fast Ajax navigation on your website.
# For more information: https://github.com/next-theme/pjax
pjax: true
```

If you want to specify the CDN provider for any plugins, you need to set / update the CDN URL. See [Advanced Settings](/docs/advanced-settings/vendors.html) for more information.

Detailed documentation about these plugins is listed below.

### Math Equations

* [Math Equations](/docs/third-party-services/math-equations.html)

### Comment Systems

* [Overview](/docs/third-party-services/comments.html#Overview)
* [Disqus](/docs/third-party-services/comments.html#Disqus)
* [DisqusJS](/docs/third-party-services/comments.html#DisqusJS)
* [Changyan (China)](/docs/third-party-services/comments.html#Changyan)
* [LiveRe](/docs/third-party-services/comments.html#LiveRe)
* [Gitalk](/docs/third-party-services/comments.html#Gitalk)
* [Utterances](/docs/third-party-services/comments.html#Utterances)
* [Isso](/docs/third-party-services/comments.html#Isso)

### Statistics and Analytics

#### Analytics

* [Google Analytics](/docs/third-party-services/statistics-and-analytics.html#Google-Analytics)
* [Baidu Analytics (China)](/docs/third-party-services/statistics-and-analytics.html#Baidu-Analytics-China)
* [Growingio Analytics](/docs/third-party-services/statistics-and-analytics.html#Growingio-Analytics)
* [Cloudflare Web Analytics](/docs/third-party-services/statistics-and-analytics.html#Cloudflare-Web-Analytics)
* [Microsoft Clarity Analytics](/docs/third-party-services/statistics-and-analytics.html#Microsoft-Clarity-Analytics)
* [Matomo Analytics](/docs/third-party-services/statistics-and-analytics.html#Matomo-Analytics)
* [Umami Analytics](/docs/third-party-services/statistics-and-analytics.html#Umami-Analytics)
* [Plausible Analytics](/docs/third-party-services/statistics-and-analytics.html#Plausible-Analytics)

#### Statistics

* [LeanCloud (China)](/docs/third-party-services/statistics-and-analytics.html#LeanCloud-China)
* [Firebase](/docs/third-party-services/statistics-and-analytics.html#Firebase)
* [Busuanzi Counting](/docs/third-party-services/statistics-and-analytics.html#Busuanzi-Counting-China)

### Post Widgets

* [AddToAny](/docs/third-party-services/post-widgets.html#AddToAny)

### Search Services

* [Algolia Search](/docs/third-party-services/search-services.html#Algolia-Search)
* [Local Search](/docs/third-party-services/search-services.html#Local-Search)

### Chat Services

* [Chatra](/docs/third-party-services/chat-services.html#Chatra)
* [Tidio](/docs/third-party-services/chat-services.html#Tidio)
* [Gitter](/docs/third-party-services/chat-services.html#Gitter)

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
