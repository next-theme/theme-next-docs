---
title: Documentation
date: 2018-02-10 00:00:00
description: NexT User Docs
---

### Elegant and Powerful Theme for Hexo

Theme NexT has the following features:

* Vanilla JavaScript.
* Support [native dark mode](https://caniuse.com/prefers-color-scheme).
* Support [Pjax](https://github.com/MoOx/pjax) to deliver a fast browsing experience.
* Integrated [MathJax](https://www.mathjax.org) and [KaTeX](https://katex.org) mathematical formula rendering.
* Integrated [PDF.js](https://mozilla.github.io/pdf.js/) and [mermaid diagram](https://mermaid-js.github.io/mermaid/).
* Support [Disqus](https://disqus.com), [Changyan](https://changyan.kuaizhan.com), [LiveRe](https://livere.com), [Gitalk](https://gitalk.github.io), [Utterances](https://utteranc.es) and [Isso](https://isso-comments.de) comment systems.
* Support a large number of third-party statistics services.
* Easy to switch CDN provider.
* Easy to customize content or modify style.

### Four Schemes in One

By using different Schemes in NexT, you can simply change the style of your blog, and nearly all options can be used in all schemes.

{% darkmode_preview %}

### Multilingual Support

Thanks to the contribution of our users and developers, [NexT now supports over 20 languages](/docs/theme-settings/internationalization.html#Choosing-Language).

{% gp 3-1 %}
![English translation](/images/en.png)
![Chinese translation](/images/cn.png)
![Russian translation](/images/ru.png)
{% endgp %}

### Code Highlighting Themes

NexT uses code highlighting themes from the [Highlight.js](https://highlightjs.org) and [Prism](https://prismjs.com) package, and makes [more than 300 themes](/docs/theme-settings/miscellaneous.html#Codeblock-Style) available to you.

<!-- Inspired by https://github.com/sindresorhus/css-in-readme-like-wat -->
| Tomorrow                  | Tomorrow Night                  | Tomorrow Night Eighties                             |
| :-----------------------: | :-----------------------------: | :-------------------------------------------------: |
| ![Tomorrow][Tomorrow]     | ![Tomorrow Night][]             | ![Tomorrow Night Eighties][Tomorrow Night Eighties] |

| Tomorrow Night Blue                         | Tomorrow Night Bright                           | Default                  |
| :-----------------------------------------: | :---------------------------------------------: | :----------------------: |
| ![Tomorrow Night Blue][Tomorrow Night Blue] | ![Tomorrow Night Bright][Tomorrow Night Bright] | ![Default][Default]      |

### Supported Browsers

We design NexT to support the latest web browsers. We support the current versions of Chrome, Firefox, Safari, and Microsoft Edge. Many CSS3 and ES6 features are used in theme NexT, including CSS Variables, Destructuring assignment, Arrow functions and Spread operator.

| Browser | Supported versions | Release date |
| - | - | - |
<i class="fab fa-internet-explorer fa-2x"></i> IE | N/A | Oct 17, 2013 |
<i class="fab fa-chrome fa-2x"></i> Chrome | 60+ | Jul 25, 2017 |
<i class="fab fa-firefox-browser fa-2x"></i> Firefox | 55+ | Aug 8, 2017 |
<i class="fab fa-opera fa-2x"></i> Opera | 47+ | Aug 9, 2017 |
<i class="fab fa-safari fa-2x"></i> Safari | 11+ | Sep 19, 2017 |
<i class="fab fa-edge fa-2x"></i> Edge | 80+ | Feb 7, 2020 |

Some other new Web APIs, such as [IntersectionObserver](https://caniuse.com/intersectionobserver) and [Fetch API](https://caniuse.com/fetch), are used by NexT plugins. They are not core functions of NexT, so we have no plans to make them compatible with legacy browsers.

In addition, [CSS position: sticky](https://caniuse.com/css-sticky) is used for sidebar positioning. On browsers that do not support this property, its fallback style `position: static` will be used.

### Customize Your NexT

NexT have flexible but simple options, and you can make your own blog with built-in third-party support. Now let's [get started](/docs/getting-started/).

[Tomorrow]: /images/tomorrow.svg
[Tomorrow Night]: /images/tomorrow-night.svg
[Tomorrow Night Eighties]: /images/tomorrow-night-eighties.svg
[Tomorrow Night Blue]: /images/tomorrow-night-blue.svg
[Tomorrow Night Bright]: /images/tomorrow-night-bright.svg
[Default]: /images/default.svg
