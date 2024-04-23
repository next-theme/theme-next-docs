---
title: SEO
description: NexT User Docs – Theme Settings – SEO
---

### SEO Setting

Next provides useful options for better Search Engine Optimization (SEO).

{% note info %}
By default a canonical link tag is created in Hexo after you have set up your URL `url: http://example.com` in {% label info@Hexo config file %}. More detailed information can be found in [Consolidate duplicate URLs](https://support.google.com/webmasters/answer/139066).
{% endnote %}

Set the value of `index_with_subtitle` in {% label primary@NexT config file %} to `true` to add `subtitle` information to index page.

```yml NexT config file
index_with_subtitle: true
```

You can set `subtitle` in {% label info@Hexo config file %}.

### ExtURL

External URL with BASE64 encrypt & decrypt which provide nonsense for search engines to `<a>` tags.

#### Description

Search engines scan `<a>` tag with hight priority. You may add `external` / `nofollow` / `noopener` / `noreferrer` or any similar tricks, in any case all external links from your site will be indexed on your site. But here exists another trick: crawlers doesn't reproduce any javascript – this do clients on their local devices.
That tag give the way to set any external link without `<a>` tag. So, some crawlers like Yandex will not give away links weight from your site and this very useful for SEO. This tag perform:

* Replaces `a` HTML tag with `span` HTML tag.
* Crypt & Decrypt URL with BASE64. User cannot see base64 format in browser src for this link, but he will see tooltip where this URL pointed to or will be shown custom title which can be specified in `title` tag parameter.
* Backlinks by this tag will not be scanned by any monitoring. It's like you open new link with javascript at new tab.
* Works on mobile devices too, yep.

{% note warning %}
This tag was created exceptionally for better SEO-optimization. Any attempts to confuse end-user by phishing links not allowed!
{% endnote %}

#### Settings

Just one setting must be turned on under the `SEO Settings` section in {% label primary@theme config file %}:

```yml NexT config file
exturl: true
```

You can also enable the icon for it:

```yml NexT config file
exturl_icon: true
```

Then run the following command in {% label info@site root dir %} to ensure that `exturl` can be enabled or disabled correctly:
```bash
hexo clean
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
Edit {% label primary@NexT config file %} and add or change the value of `google_site_verification`:

```yml NexT config file
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
Edit {% label primary@NexT config file %} and add or change the value of `bing_site_verification`:

```yml NexT config file
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
Edit {% label primary@NexT config file %} and add or change the value of `yandex_site_verification`:

```yml NexT config file
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
Edit {% label primary@NexT config file %} and add or change the value of `baidu_site_verification`:

```yml NexT config file
baidu_site_verification: code-XXXXXXXXXX
```
<!-- endtab -->
{% endtabs %}

{% note info %}
By default Baidu will cache and rewrite your site to provide a webpage snapshot for mobile users. You can disable this by setting the site type.

![Baidu Webmaster Tools](/images/baidu.png)
{% endnote %}
