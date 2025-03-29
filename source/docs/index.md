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

We designed the NexT theme to support a wide range of mainstream browsers, include the current versions of Chrome, Firefox, Safari, and Microsoft Edge. Many CSS3 and ES6 features and new Web APIs have been utilized, including [CSS Variables](https://caniuse.com/css-variables), [IntersectionObserver](https://caniuse.com/intersectionobserver) and [prefers-color-scheme](https://caniuse.com/prefers-color-scheme), to make the NexT theme's code more concise, reliable, and secure. Statistics show that NexT is compatible with more than 95% of browsers.

NexT is tested to work on the following browsers:

| Browser | Tested versions | Release date |
| - | - | - |
<i class="fab fa-internet-explorer fa-2x"></i> IE | N/A | Oct 17, 2013 |
<i class="fab fa-chrome fa-2x"></i> Chrome | 80+ | Feb 5, 2020 |
<i class="fab fa-firefox-browser fa-2x"></i> Firefox | 74+ | Mar 10, 2020 |
<i class="fab fa-opera fa-2x"></i> Opera | 67+ | Mar 12, 2020 |
<i class="fab fa-safari fa-2x"></i> Safari | 13.1+ | Mar 24, 2020 |
<i class="fab fa-edge fa-2x"></i> Edge | 80+ | Feb 7, 2020 |

*The criterion being that on these browsers, the core functionalities and styles of the NexT theme work normally, excluding third-party plugins.*

If you need to support older browsers that are not on the supported list, you might consider using tools like [Babel.js](https://babeljs.io) and plugins like [hexo-babel](https://www.npmjs.com/package/hexo-babel).

### Customize Your NexT

NexT have flexible but simple options, and you can make your own blog with built-in third-party support. Now let's [get started](/docs/getting-started/).

[Tomorrow]: /images/tomorrow.svg
[Tomorrow Night]: /images/tomorrow-night.svg
[Tomorrow Night Eighties]: /images/tomorrow-night-eighties.svg
[Tomorrow Night Blue]: /images/tomorrow-night-blue.svg
[Tomorrow Night Bright]: /images/tomorrow-night-bright.svg
[Default]: /images/default.svg
