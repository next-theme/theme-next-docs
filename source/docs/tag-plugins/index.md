---
title: Tag Plugins
description: NexT User Docs – NexT Supported Tags
---

Tag Plugin is a way to make special style contents supported by Hexo. For example, we cannot show a image with custom size in standard Markdown. And then we can use tag plugins to solve it. [Hexo has a lot of tags](https://hexo.io/docs/tag-plugins) which can help user. And Hexo also have interfaces to themes which make themes able to create their own tags. Following tags are provided by NexT:

* [Button](/docs/tag-plugins/button.html)
* [Caniuse](/docs/tag-plugins/caniuse.html)
* [Centered Quote](#Centered-Quote)
* [Group Pictures](/docs/tag-plugins/group-pictures.html)
* [Label](/docs/tag-plugins/label.html)
* [Link Grid](/docs/tag-plugins/link-grid.html)
* [Mermaid](/docs/tag-plugins/mermaid.html)
* [WaveDrom](/doc/tag-plugins/wavedrom.html)
* [Note](/docs/tag-plugins/note.html)
* [PDF](/docs/tag-plugins/pdf.html)
* [Tabs](/docs/tag-plugins/tabs.html)
* [Video](#Video)

These tag plugins are only available in the theme NexT. If you switch to other Hexo themes, they may cause rendering errors.

### Centered Quote

This tag will make a quote with two lines before and after it, and text quoted will be centered. When using centered quote, if we have multi-line text, and each line has a different length, the quote won't be symmetrical, so it's recommended to use when only have single line text. For example before article all after article to make a summary.

#### Usage

```jinja
{% centerquote %}Something{% endcenterquote %}
```

or

```jinja
{% cq %}Something{% endcq %}
```

#### Examples

```jinja
{% cq %}Elegant in code, simple in core{% endcq %}
```

{% cq %}Elegant in code, simple in core{% endcq %}

### Video

#### Usage

```jinja
{% video url %}
```

#### Examples

```jinja
{% video https://example.com/sample.mp4 %}
```

```jinja
{% video /path/to/your/video.mp4 %}
```
