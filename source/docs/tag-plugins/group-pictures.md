---
title: Group Pictures
description: NexT User Docs – NexT Supported Tags – Group Pictures
---

### Usage

```md group-pictures.js
{% grouppicture [group]-[layout] %}{% endgrouppicture %}
{% gp [group]-[layout] %}{% endgp %}

[group]  : Total number of pictures to add in the group.
[layout] : Default picture under the group to show.
```

### Examples

```md
{% grouppicture 6-3 %}
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
{% endgrouppicture %}
```
{% grouppicture 6-3 %}
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
{% endgrouppicture %}

```md
{% gp 5-2 %}
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
{% endgp %}
```
{% gp 5-2 %}
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
  ![](/images/docs/github.png)
{% endgp %}
