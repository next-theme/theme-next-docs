---
title: Post Settings
description: NexT User Docs – Theme Settings – Posts
---

### Preamble Text

It's a common need to show some part of article in home page and then give a link to full article. NexT gives two ways to control how article is shown in home page. In other words, you can use following ways to show summary of articles and a **Read More** button.

{% tabs preamble %}
<!-- tab {% label success@Tag more %} -->
Use `<!-- more -->` in your article to break your article manually, which is recommended by Hexo.

<!-- endtab -->

<!-- tab <code>excerpt_description</code> -->
If you have added `description` and set its value to your article summary in [front-matter](https://hexo.io/docs/front-matter), NexT excerpts `description` as preamble text in homepage by default. Without `description`, the full contents would be the preamble text in homepage.

You can disable it by setting value `excerpt_description` to `false` in {% label primary@NexT config file %}.

```yml NexT config file
excerpt_description: true
```

<!-- endtab -->
{% endtabs %}

{% note info %}
It is recommended to use `<!-- more -->` (the first way) which can not only control what you want to show better, but also let Hexo's plugins use it easily.
{% endnote %}

### Post Meta Display

NexT supports post created date, post updated date and post categories display.

{% tabs postmeta %}
<!-- tab <code>item_text</code> -->
By default NexT shows the description text of post meta. You can disable it by setting value `post_meta.item_text` to `false` in {% label primary@NexT config file %}.

```yml NexT config file
post_meta:
  item_text: true
```
<!-- endtab -->

<!-- tab <code>created_at</code> -->
By default NexT shows the post created date in post meta section and created time in popup. You can disable it by setting value `post_meta.created_at` to `false` in {% label primary@NexT config file %}.

```yml NexT config file
post_meta:
  created_at: true
```
<!-- endtab -->

<!-- tab <code>updated_at</code> -->

{% note warning %}
Make sure you set `use_date_for_updated` and `updated_option` in {% label info@Hexo config file %} correctly, otherwise this option will not take effect. See also [Date / Time format](https://hexo.io/docs/configuration#Date-Time-format).
{% endnote %}

{% subtabs postmeta1 %}
<!-- tab <code>enable</code> -->
By default NexT shows the post updated date in post meta section and updated time in popup. You can disable it by setting value `post_meta.updated_at.enable` to `false` in {% label primary@NexT config file %}.

```yml NexT config file
post_meta:
  updated_at:
    enable: true
```
<!-- endtab -->

<!-- tab <code>another_day</code> -->
By default, if updated/edited date is the same as created date, edited time would be displayed in popup message. You can disable it by setting value `post_meta.updated_at.another_day` to `false` in {% label primary@NexT config file %}.
In other words:

* If true, show updated date label only if `updated date` is different from `created date` (post edited in another day than was created).
* And if post was edited in same day as created, edited time will show in popup title under created time label.
* If false show anyway, but if post edited in same day, show only edited time.

```yml NexT config file
post_meta:
  updated_at:
    another_day: true
```
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

<!-- tab <code>categories</code> -->
By default NexT shows the post categories in post meta section. You can disable it by setting value `post_meta.categories` to `false` in {% label primary@NexT config file %}.

```yml NexT config file
post_meta:
  categories: true
```
<!-- endtab -->

{% endtabs %}

### Post Wordcount

{% tabs wordcount %}
<!-- tab Installation → -->
Install `hexo-word-counter` by executing the following command in {% label info@site root dir %}:

```bash
npm install hexo-word-counter
hexo clean
```
<!-- endtab -->

<!-- tab Hexo Config → -->
Activate this plugin in {% label info@Hexo config file %} by enabled any option:

{% subtabs wordcount1 %}
<!-- tab <code>symbols</code> -->
By default NexT shows the number of post words in post meta section. You can disable it by setting value `symbols_count_time.symbols` to `false` in {% label info@Hexo config file %}.

```yml Hexo config file
symbols_count_time:
  symbols: true
```
<!-- endtab -->

<!-- tab <code>time</code> -->
By default NexT shows the estimated reading time of post in post meta section. You can disable it by setting value `symbols_count_time.time` to `false` in {% label info@Hexo config file %}.

```yml Hexo config file
symbols_count_time:
  time: true
```
<!-- endtab -->

<!-- tab <code>total_symbols</code> -->
By default NexT shows the number of all posts words in footer section. You can disable it by setting value `symbols_count_time.total_symbols` to `false` in {% label info@Hexo config file %}.

```yml Hexo config file
symbols_count_time:
  total_symbols: true
```
<!-- endtab -->

<!-- tab <code>total_time</code> -->
By default NexT shows the estimated reading time of all posts in footer section. You can disable it by setting value `symbols_count_time.total_time` to `false` in {% label info@Hexo config file %}.

```yml Hexo config file
symbols_count_time:
  total_time: true
```
<!-- endtab -->

<!-- tab <code>awl</code> -->
`awl` means the average Word Length (chars count in word). You can check this [here](https://charactercounttool.com/).

```yml NexT config file
symbols_count_time:
  awl: 4
```
<!-- endtab -->

<!-- tab <code>wpm</code> -->
`wpm` means the average words per minute. You can check this [here](https://wordcounter.net/).

```yml NexT config file
symbols_count_time:
  wpm: 275
```
<!-- endtab -->

{% endsubtabs %}

<!-- endtab -->

<!-- tab NexT Config -->
After the plugin enabled, you may adjust options in `symbols_count_time` section in {% label primary@NexT config file %}:

{% subtabs wordcount2 %}
<!-- tab <code>separated_meta</code> -->
By default NexT shows the words counts and estimated reading time in a separated line. You can add them into one line by setting value `symbols_count_time.separated_meta` to `false` in {% label primary@NexT config file %}.

```yml NexT config file
symbols_count_time:
  separated_meta: true
```
<!-- endtab -->

<!-- tab <code>item_text_total</code> -->
By default NexT doesn't shows the text description of the words counts and estimated reading time in footer section. You can enable it by setting value `symbols_count_time.item_text_total` to `false` in {% label primary@NexT config file %}.

```yml NexT config file
symbols_count_time:
  item_text_total: true
```
<!-- endtab -->

{% endsubtabs %}

<!-- endtab -->
{% endtabs %}

### Tag Icon

By default, tags at the bottom of posts have a symbol # at there left side.

If you prefer icon instead of symbol, edit {% label primary@NexT config file %} like following:

```yml NexT config file
tag_icon: true
```

### Donate Settings

NexT theme provides a donation feature that allows readers to show appreciation for your work. You can display QR codes for various payment methods (such as WeChat Pay, Alipay, Bitcoin, etc.) at the end of your articles, making it convenient for readers to support your content creation efforts. What you need is:

1. Get your WeChat / Alipay / Bitcoin receive money QRcode image(s) and put into `source/images` under {% label primary@theme directory %} or upload it(them) to an image cloud to get the absolute HTTP address(es).
2. Set needed values in  {% label primary@NexT config file %}:

    ```yml NexT config file
    # Donate (Sponsor) settings
    # Front-matter variable (nonsupport animation).
    reward_settings:
      # If true, a donate button will be displayed in every article by default.
      enable: true
      animation: false

    reward:
      wechatpay: /images/wechatpay.png
      alipay: /images/alipay.png
      bitcoin: /images/bitcoin.png
    ```

You can also add QRcode of other platforms, e.g.

```yml NexT config file
paypal: /images/paypal.png
monero: /images/monero.png
```

### Follow Me

NexT theme offers a "Follow Me" feature that enables you to showcase your social media presence and other communication channels. This allows your readers to follow your content across various platforms, helping you build and maintain a stronger connection with your audience. You can display links to popular social networks, messaging platforms, or RSS feeds, each accompanied by its corresponding icon for better visual recognition.

```yml NexT config file
# Subscribe through Telegram Channel, Twitter, etc.
# Usage: `Key: permalink || icon` (Font Awesome)
follow_me:
  #Twitter: https://twitter.com/username || fab fa-twitter
  #Telegram: https://t.me/channel_name || fab fa-telegram
  #WeChat: /images/wechat_channel.jpg || fab fa-weixin
  #RSS: /atom.xml || fa fa-rss
```

You can add links of other platforms not listed here, for example:

```yml NexT config file
follow_me:
  Zhihu: https://www.zhihu.com/people/username || fab fa-zhihu
```

### Related Popular Posts

The "Related Popular Posts" feature helps you increase reader engagement by displaying a list of related articles in the sidebar. This encourages visitors to explore more of your content that matches their interests, potentially increasing page views and create a better user experience.

To utilize this feature, you'll need to install a third-party plugin [hexo-related-posts](https://github.com/sergeyzwezdin/hexo-related-posts) first, as NexT relies on its functionality to analyze and determine content relationships.

{% tabs related_posts %}
<!-- tab Installation → -->
Install `hexo-related-posts` by executing the following command in {% label info@site root dir %}:

```bash
npm install hexo-related-posts
hexo clean
```

Enable this plugin in {% label info@Hexo config file %} by adding the following line:

```yml Hexo config file
related_posts:
  enable: true
```

For more configuration options, please refer to the plugin's documentation.
<!-- endtab -->

<!-- tab <code>enable</code> -->
You can enable the "Related Popular Posts" feature by setting value `related_posts.enable` to `true` in {% label primary@NexT config file %}.

```yml NexT config file
related_posts:
  enable: true
```

In other words, you have to set `related_posts.enable` to `true` in both {% label info@Hexo config file %} and {% label primary@NexT config file %}, to enable this feature.
<!-- endtab -->

<!-- tab <code>icon</code> -->
By default NexT shows the `signs-post` icon {% btn #,, signs-post %} before `title`. The name of icon can be found in [Font Awesome](https://fontawesome.com) site. You can configure it by editing value `icon` in `related_posts` section in {% label primary@NexT config file %}.

```yml NexT config file
related_posts:
  icon: fa fa-signs-post
```
<!-- endtab -->
{% endtabs %}

### Post Edit

NexT supports the edit functionality of your posts. By enabling this feature, users can quickly browse and modify the blog's source code on GitHub.

{% tabs post_edit %}
<!-- tab <code>enable</code> -->
You can enable it by setting value `post_edit.enable` to `true` in {% label primary@NexT config file %}.

```yml NexT config file
post_edit:
  enable: true
```
<!-- endtab -->

<!-- tab <code>url</code> -->
You should create a source repository of your post files. The `url` setting depends on the source project in github.

* For site repository
  * Link for view source: `url: https://github.com/.../tree/master/source/_posts/`
  * Link for fork & edit: `url: https://github.com/.../edit/master/source/_posts/`
* For post repository
  * Link for view source: `url: https://github.com/.../_posts/tree/master/`
  * Link for fork & edit: `url: https://github.com/.../_posts/edit/master/`

```yml NexT config file
post_edit:
  url:
```
<!-- endtab -->

{% endtabs %}

### Post Navigation

Show previous post and next post in post footer if exists.

```yml NexT config file
post_navigation: left
```
