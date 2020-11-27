---
title: Group Pictures
description: NexT User Docs – NexT Supported Tags – Group Pictures
---

### Usage

```md group-pictures.js
{% grouppicture [group]-[layout] %}{% endgrouppicture %}
{% gp [group]-[layout] %}{% endgp %}

[group]  : Optional parameter.
           Total number of pictures to add in the group.
[layout] : Optional parameter.
           Default picture under the group to show.
```

### Examples

```md
{% grouppicture 6-3 %}
![](/images/next.svg)
![](/images/next.svg)
![](/images/next.svg)
![](/images/next.svg)
![](/images/next.svg)
![](/images/next.svg)
{% endgrouppicture %}
```
{% grouppicture 6-3 %}
![](/images/next.svg)
![](/images/next.svg)
![](/images/next.svg)
![](/images/next.svg)
![](/images/next.svg)
![](/images/next.svg)
{% endgrouppicture %}

```md
{% gp 5-2 %}
![](/images/next.svg)
![](/images/next.svg)
![](/images/next.svg)
![](/images/next.svg)
![](/images/next.svg)
{% endgp %}
```
{% gp 5-2 %}
![](/images/next.svg)
![](/images/next.svg)
![](/images/next.svg)
![](/images/next.svg)
![](/images/next.svg)
{% endgp %}
