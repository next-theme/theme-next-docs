---
title: Wavedrom
description: NexT User Docs – NexT Supported Tags – Wavedrom
---

### Settings

```yml NexT config file
# Wavedrom tag
wavedrom:
  enable: true
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
