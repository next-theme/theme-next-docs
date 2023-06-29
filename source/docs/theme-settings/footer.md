---
title: Footer
description: NexT User Docs – Theme Settings – Footer
---

### Site Copyright Setting

#### Site Start Time

By default NexT shows current year in the footer like `© 2020`. You can configure it to show the time gap like `© 2015 - 2020` by editing value `since` in `footer` section in {% label primary@NexT config file %}.

```yml NexT config file
footer:
  since: 2020
```

#### Site Footer Icon

By default NexT shows red `heart` icon {% btn #,, heart %} with animation between year and copyright information in the footer. You can configure it by editing value `icon` in `footer` section in {% label primary@NexT config file %}.

{% tabs icon %}
<!-- tab <code>name</code> -->
The name of footer icon can be founded in [Font Awesome](https://fontawesome.com) site. `heart` is recommended.

```yml NexT config file
footer:
  icon:
    name: fa fa-user
```

<!-- endtab -->

<!-- tab <code>animated</code> -->
Set up animated of footer icon by changing the value of `icon.animated`:

* **`true`** → Icon will be animated.
* `false` → Icon will not be animated.

```yml NexT config file
footer:
  icon:
    animated: false
```
<!-- endtab -->

<!-- tab <code>color</code> -->
Set up color of footer icon by changing the value of `icon.color`. Please use Hex Code, and red (#ff0000) is recommended for `heart` icon.

```yml NexT config file
footer:
  icon:
    color: "#808080"
```

<!-- endtab -->
{% endtabs %}

#### Site Copyright Name

By default NexT shows the name of `author` from {% label info@Hexo config file %}. You can configure it by editing value `copyright` in `footer` section in {% label primary@NexT config file %}.

```yml NexT config file
footer:
  copyright:
```

Set `copyright` to `false` will disable the copyright statement completely.

{% note warning %}
This option will only customize the author name in the footer. The name in the Creative Commons License section at the end of each post is not affected.
{% endnote %}

### Site Platform Information

By default NexT shows Hexo and Theme & scheme information like `Powered by Hexo & NexT.Muse`. You can configure it by editing value `powered` in `footer` section in {% label primary@NexT config file %}.

```yml NexT config file
footer:
  powered: true
```

### Site Beian Information

Beian information is for Chinese users. By default NexT will not show the information of beian. You can configure it by editing values in `footer.beian` section in {% label primary@NexT config file %}.

```yml NexT config file
footer:
  beian:
    enable: true
    icp: 京ICP备 1234567890号-1
    gongan_id: 1234567890
    gongan_num: 京公网安备 1234567890号
    gongan_icon_url: /uploads/beian.png
```
