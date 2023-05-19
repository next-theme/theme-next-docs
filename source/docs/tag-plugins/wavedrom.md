---
title: WaveDrom
description: NexT User Docs – NexT Supported Tags – WaveDrom
---

### Settings

```yml NexT config file
# WaveDrom tag
wavedrom:
  enable: true
```

```yml Hexo config file
highlight:
  exclude_languages:
    - wavedrom
```

### Usage

```jinja
{% wavedrom %}
{% endwavedrom %}
```

or

~~~markdown
```wavedrom
```
~~~

### Examples

```jinja
{% wavedrom %}
{ signal : [
  { name: "clk",  wave: "p......" },
  { name: "bus",  wave: "x.34.5x",   data: "head body tail" },
  { name: "wire", wave: "0.1..0." },
]}
{% endwavedrom %}
```

{% wavedrom %}
{ signal : [
  { name: "clk",  wave: "p......" },
  { name: "bus",  wave: "x.34.5x",   data: "head body tail" },
  { name: "wire", wave: "0.1..0." },
]}
{% endwavedrom %}
