---
title: PDF
description: NexT User Docs – NexT Supported Tags – PDF
---

### Settings

```yml next/_config.yml
pdf:
  enable: true
  # Default height
  height: 500px
```

### Usage

```md pdf.js
{% pdf url [height] %}

[url]    : Relative path to PDF file.
[height] : Optional. Height of the PDF display element, e.g. 800px.
```

### Examples

```md
{% pdf https://example.com/sample.pdf %}
```

```md
{% pdf /path/to/your/file.pdf 600px %}
```
