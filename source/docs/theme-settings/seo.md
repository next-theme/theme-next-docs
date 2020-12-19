---
title: SEO
description: NexT User Docs – Theme Settings – SEO
---

### SEO Setting

Next provides useful options for better Search Engine Optimization (SEO).

{% note info %}
By default a canonical link tag is created in Hexo after you have set up your URL `url: http://example.com` in {% label info@site config file %}. More detailed information can be found in [Consolidate duplicate URLs](https://support.google.com/webmasters/answer/139066).
{% endnote %}

Set the value `enable` to `true` in `index_with_subtitle` section to add `subtitle` information in {% label info@site config file %} to index page.

```yml next/_config.yml
index_with_subtitle: true
```

### Webmaster Tools

#### Google Webmaster Tools

Set the verification string of [Google Webmaster Tools](https://developers.google.com/search) which is used in submitting sitemap.

{% tabs google-webmaster-tools %}
<!-- tab Get Verification Code → -->
Login to Google Webmaster Tools and go to verification methods and choose `HTML Tag`, you will get some code:
```html
<meta name="google-site-verification" content="XXXXXXXXXXXXXXXXXXXXXXX">
```
<!-- endtab -->

<!-- tab NexT Config -->
Copy `XXXXXXXXXXXXXXXXXXXXXXX` value of `content` key.
Edit {% label primary@theme config file %} and add or change `google_site_verification` section:
```yml next/_config.yml
google_site_verification: XXXXXXXXXXXXXXXXXXXXXXX
```
<!-- endtab -->
{% endtabs %}

#### Bing Webmaster Tools

Set the verification string of [Bing Webmaster Tools](https://www.bing.com/webmasters) which is used in submitting sitemap.

{% tabs bing-webmaster-tools %}
<!-- tab Get Verification Code → -->
Login to Bing Webmaster Tools and go to verification methods and choose `HTML Tag`, you will get some code:
```html
<meta name="msvalidate.01" content="XXXXXXXXXXXXXXXXXXXXXXX">
```
<!-- endtab -->

<!-- tab NexT Config -->
Copy `XXXXXXXXXXXXXXXXXXXXXXX` value of `content` key.
Edit {% label primary@theme config file %} and add or change `bing_site_verification` section:
```yml next/_config.yml
bing_site_verification: XXXXXXXXXXXXXXXXXXXXXXX
```
<!-- endtab -->
{% endtabs %}

#### Yandex Webmaster Tools

Set the verification string of [Yandex Webmaster Tools](https://webmaster.yandex.ru/) which is used in submitting sitemap.

{% tabs yandex-webmaster-tools %}
<!-- tab Get Verification Code → -->
Login to Yandex Webmaster Tools and go to verification methods and choose `Meta Tag`, you will get some code:
```html
<meta name="yandex-verification" content="XXXXXXXXXXXXXXXXXXXXXXX">
```
<!-- endtab -->

<!-- tab NexT Config -->
Copy `XXXXXXXXXXXXXXXXXXXXXXX` value of `content` key.
Edit {% label primary@theme config file %} and add or change `yandex_site_verification` section:
```yml next/_config.yml
yandex_site_verification: XXXXXXXXXXXXXXXXXXXXXXX
```
<!-- endtab -->
{% endtabs %}

#### Baidu Webmaster Tools

Set the verification string of [Baidu Webmaster Tools](https://ziyuan.baidu.com/site/) which is used in submitting sitemap.

{% tabs Baidu-webmaster-tools %}
<!-- tab Get Verification Code → -->
Login to Baidu Webmaster Tools and go to verification methods and choose `HTML Tag`, you will get some code:
```html
<meta name="baidu-site-verification" content="code-XXXXXXXXXX">
```
<!-- endtab -->

<!-- tab NexT Config -->
Copy `code-XXXXXXXXXX` value of `content` key.
Edit {% label primary@theme config file %} and add or change `baidu_site_verification` section:
```yml next/_config.yml
baidu_site_verification: code-XXXXXXXXXX
```
<!-- endtab -->
{% endtabs %}

{% note info %}
By default Baidu will cache and rewrite your site to provide a webpage snapshot for mobile users. You can disable this by setting the site type.

![Baidu Webmaster Tools](/images/baidu.png)
{% endnote %}
