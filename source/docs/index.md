---
title: Documentation
date: 2018-02-10 00:00:00
description: NexT User Docs
---

### Elegant and Powerful Theme for Hexo

Theme NexT has the following features:

* No jQuery.
* Support [native dark mode](https://caniuse.com/#feat=prefers-color-scheme).
* Support Pjax to deliver a fast browsing experience.
* Integrated KaTeX and MathJax mathematical formula rendering.
* Integrated PDF.js and mermaid diagram.
* Support Disqus, Gitalk and Valine comment systems.
* Support a large number of third-party statistics and content sharing services.
* Easy to customize content or modify style.

### Four Schemes in One

By using different Schemes in NexT, you can simply change the style of your blog, and nearly all options can be used in all schemes.

![NexT Schemes](/images/docs/next-schemes.png)

### Multilingual Support

Thanks to the contribution of our users and developers, [NexT now supports over 20 languages](/docs/getting-started/internationalization.html#Choosing-Language).

{% gp 3-1 %}
![English translation](/images/docs/en.png)
![Chinese translation](/images/docs/cn.png)
![Russian translation](/images/docs/ru.png)
{% endgp %}

### Code Highlighting Themes

NexT uses code highlighting themes from the [Highlight.js](https://highlightjs.org) and [Prism](https://prismjs.com) package, and makes [more than 90 themes](/docs/theme-settings/#Codeblock-Style) available to you.

{% gp 5-2 %}
![Tomorrow Normal](/images/docs/tomorrow.png)
![Tomorrow Night](/images/docs/tomorrow-night.png)
![Tomorrow Night Eighties](/images/docs/tomorrow-night-eighties.png)
![Tomorrow Night Blue](/images/docs/tomorrow-night-blue.png)
![Tomorrow Night Bright](/images/docs/tomorrow-night-bright.png)
{% endgp %}

### Supported Browsers

We design NexT to support the latest web browsers. We support the current versions of Chrome, Firefox, Safari, and Microsoft Edge. Many CSS3 and ES6 features are used in theme NexT, including CSS Variables, Destructuring assignment, Arrow functions and Spread operator.

| Browser | Supported versions | Release date | Limitation
| - | - | - | - |
<i class="fab fa-internet-explorer fa-2x"></i> IE | N/A | Oct 17, 2013 | N/A |
<i class="fab fa-edge fa-2x"></i> Edge | 16+ | Oct 17, 2017 | [CSS Variables](https://caniuse.com/#feat=css-variables) |
<i class="fab fa-firefox fa-2x"></i> Firefox | 41+ | Sep 22, 2015 | [Destructuring assignment](https://caniuse.com/#feat=mdn-javascript_operators_destructuring) |
<i class="fab fa-chrome fa-2x"></i> Chrome | 49+ | Mar 3, 2016 | CSS Variables |
<i class="fab fa-safari fa-2x"></i> Safari | 10+ | Sep 20, 2016 | [Arrow functions](https://caniuse.com/#feat=arrow-functions) |
<i class="fab fa-opera fa-2x"></i> Opera | 37+ | May 4, 2016 | [Spread operator](https://caniuse.com/#feat=mdn-javascript_operators_spread_spread_in_arrays) |

Some other new Web APIs, such as [IntersectionObserver](https://caniuse.com/#feat=intersectionobserver) and [Fetch API](https://caniuse.com/#feat=fetch), are used by NexT plugins. They are not core functions of NexT, so we have no plans to fix their compatibility issues with legacy browsers.

In addition, [CSS position: sticky](https://caniuse.com/#feat=css-sticky) is used for sidebar positioning. On browsers that do not support this property, its fallback style `position: static` will be used.

### Customize Your NexT

NexT have flexible but simple options, and you can make your own blog with built-in third-party support. Now let's [get started](/docs/getting-started/).
