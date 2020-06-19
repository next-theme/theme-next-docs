---
title: Documentation
date: 2018-02-10 00:00:00
description: NexT User Docs
---

### Elegant and Powerful Theme for Hexo

Theme NexT has the following features:

* No jQuery.
* Support native dark mode.
* Support Pjax to deliver a fast browsing experience.
* Integrated KaTeX and MathJax mathematical formula rendering.
* Integrated PDF.js and mermaid diagram.
* Support Disqus, Gitalk and Valine comment systems.
* Support a large number of third-party statistics and content sharing services.
* Easy to customize content or modify style.
* Visit the [Awesome NexT](https://github.com/next-theme/awesome-next) list for more plugins.

### Four Schemes in One

By using different Schemes in NexT, you can simply change the style of your blog, and nearly all options can be used in all schemes.

![NexT Schemes](/images/docs/next-schemes.png)

### Multilingual Support

Thanks to the contribution of our users and developers, [NexT now supports over 20 languages](/docs/getting-started/internationalization.html#Choosing-Language).

### Code Highlighting Themes

NexT uses code highlighting themes from the [Highlight.js](https://highlightjs.org) and [Prism](https://prismjs.com) package, and makes more than 90 themes available to you.

{% gp 5-2 %}
![Tomorrow Normal](/images/docs/tomorrow.png)
![Tomorrow Night](/images/docs/tomorrow-night.png)
![Tomorrow Night Eighties](/images/docs/tomorrow-night-eighties.png)
![Tomorrow Night Blue](/images/docs/tomorrow-night-blue.png)
![Tomorrow Night Bright](/images/docs/tomorrow-night-bright.png)
{% endgp %}

### Supported Browsers

We design NexT to support the latest web browsers. We support the current versions of Chrome, Firefox, Safari, and Microsoft Edge. Many CSS3 and ES6 features are used in theme NexT, including `Promise`, Arrow functions, Template Literals and CSS Variables.
We use IntersectionObserver to lazyload the comments and track TOC links, which is not supported by IE and most browsers released before 2016.

{% caniuse intersectionobserver @ current,past_1,past_2,past_3,past_4,past_5 %}

If your blog readers are mostly using legacy browsers, please consider using [Intersection Observer polyfill](https://github.com/w3c/IntersectionObserver/tree/master/polyfill).

### Customize Your NexT

NexT have flexible but simple options, and you can make your own blog with built-in third-party support. Now let's [get started](/docs/getting-started/).
