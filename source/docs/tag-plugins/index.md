---
title: Tag Plugins
description: NexT User Docs – NexT Supported Tags
---

Tag Plugin is a way to make special style contents supported by Hexo. For example, we cannot show a image with custom size in standard Markdown. And then we can use tag plugins to solve it. [Hexo has a lot of tags](https://hexo.io/docs/tag-plugins) which can help user. And Hexo also have interfaces to themes which make themes able to create their own tags. Following tags are provided by NexT:

* [Centered Quote](#Centered-Quote)
* [Note](/docs/tag-plugins/note)
* [Tabs](/docs/tag-plugins/tabs)
* [PDF](/docs/tag-plugins/pdf)
* [Mermaid](/docs/tag-plugins/mermaid)
* [Label](/docs/tag-plugins/label)
* [Video](/docs/tag-plugins/video)
* [Button](/docs/tag-plugins/button)
* [Caniuse](/docs/tag-plugins/caniuse)
* [Group Pictures](/docs/tag-plugins/group-pictures)

These tag plugins are only available in the theme NexT. If you switch to other Hexo themes, they may cause rendering errors.

### Centered Quote

This tag will make a quote with two lines before and after it, and text quoted will be centered. When using centered quote, if we have multi-line text, and each line has a different length, the quote won't be symmetrical, so it's recommended to use when only have single line text. For example before article all after article to make a summary.

#### Usage

```html center-quote.js
{% centerquote %}Something{% endcenterquote %}
<!-- Tag Alias -->
{% cq %}Something{% endcq %}
```

#### Example

```md
{% cq %}Elegant in code, simple in core{% endcq %}
```

{% cq %}Elegant in code, simple in core{% endcq %}
