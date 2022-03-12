---
title: PDF
description: NexT User Docs – NexT Supported Tags – PDF
---

### Settings

```yml NexT config file
pdf:
  enable: true
  # Default height
  height: 500px
```

### Usage

```jinja
{% pdf url [height] %}
```

- `url`      : The URL (Absolute path) of the PDF file.
- `[height]` : *Optional parameter.* Height of the PDF display element, e.g. 800px.

{% note warning %}
The loading of pdf.js or pdf file might be blocked by CORS policy. If you want to load resources from another website, make sure the Access-Control-Allow-Origin header is set correctly. See also [Access-Control-Allow-Origin - HTTP | MDN](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Origin).
{% endnote %}

### Examples

```jinja
{% pdf https://example.com/sample.pdf %}
```

```jinja
{% pdf /path/to/your/file.pdf 600px %}
```
