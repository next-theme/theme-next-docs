---
title: Group Pictures
description: NexT User Docs – NexT Supported Tags – Group Pictures
---

### Usage

```jinja
{% grouppicture [number]-[layout] %}
{% endgrouppicture %}
```

or

```jinja
{% gp [number]-[layout] %}
{% endgp %}
```

- `[number]` : *Optional parameter.* Total number of pictures to add in the group pictures.
- `[layout]` : *Optional parameter.* The index of the layout, which can be obtained according to the figure below. For example, if you want to apply the second layout to 4 pictures, then use

    ```jinja
    {% grouppicture 4-2 %}{% endgrouppicture %}
    ```

![Group Picture Layout](/images/group-picture-1.png)
![Group Picture Layout](/images/group-picture-2.png)

{% note info %}
It's recommended to use Group Pictures with [Fancybox](/docs/third-party-services/external-libraries.html#Fancybox) enabled.
{% endnote %}

{% note warning %}
Please use absolute paths for `<img>` inside group pictures. See [this issue](https://github.com/next-theme/hexo-theme-next/issues/639#issuecomment-1514390433) for details.
{% endnote %}

### Examples

```jinja
{% grouppicture 3-3 %}
![](/images/next.png)
![](/images/next.png)
![](/images/next.png)
{% endgrouppicture %}
```

{% grouppicture 3-3 %}
![](/images/next.png)
![](/images/next.png)
![](/images/next.png)
{% endgrouppicture %}

```jinja
{% gp 5-2 %}
![](/images/next.png)
![](/images/next.png)
![](/images/next.png)
![](/images/next.png)
![](/images/next.png)
{% endgp %}
```

{% gp 5-2 %}
![](/images/next.png)
![](/images/next.png)
![](/images/next.png)
![](/images/next.png)
![](/images/next.png)
{% endgp %}
