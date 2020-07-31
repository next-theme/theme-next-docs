---
title: Statistics and Analytics
description: NexT User Docs – Third-party Service Integration – Statistics and Analytics
---

{% note warning %}
NexT will not send record to analytics service provider as long as the page's host name does not match `url` option set in {% label info@site config file %}. This will prevent local debugging from polluting analytics. Make sure you have configured `url` correctly, otherwise these statistics tools may not work as expected.
{% endnote %}

### Analytics Tools

#### Google Analytics

1. Create an account and log into [Google Analytics](https://analytics.google.com). [More detailed documentation](https://support.google.com/analytics/?hl=en#topic=3544906)
2. Edit {% label primary@theme config file %} and fill `tracking_id` under section `google_analytics` with your Google track ID. Google track ID always starts with `UA-`.
    ```yml next/_config.yml
    # Google Analytics
    google_analytics:
      tracking_id: UA-XXXXXXXX-X
      only_pageview: false
    ```

3. When field `only_pageview` is set to true, NexT will only send `pageview` event to Google Analytics.
The benefit of using this instead of `only_pageview: false` is reduce a external script on your site, which will give you better performance but no complete analytics function.

#### Baidu Analytics (China)

{% tabs baidu-analytics %}
<!-- tab Login → -->
Login to [Baidu Analytics](https://tongji.baidu.com) and locate to site code getting page.
<!-- endtab -->

<!-- tab Script ID → -->
Copy the script ID after `hm.js?`, like the following picture:
![NexT Baidu Analytics](/images/docs/analytics-baidu-id.png)
<!-- endtab -->

<!-- tab NexT Config -->
Edit {% label primary@theme config file %} and change section `baidu_analytics` to your script ID.
```yml next/_config.yml
# Baidu Analytics ID
baidu_analytics: your_id
```
<!-- endtab -->
{% endtabs %}

#### Growingio Analytics

Official documentation: https://docs.growingio.com/sdk-integration/sdk-2.x-docs/

#### CNZZ Analytics (China)

1. Create an account and log into [CNZZ Analytics](https://www.umeng.com/). [More detailed documentation](https://developer.umeng.com/docs/67963/detail/68609)
2. Set the value of section `cnzz_siteid` in {% label primary@theme config file %} to your CNZZ site ID. You can find this ID in link or the auto-generated script.
    ```yml next/_config.yml
    # CNZZ count
    #cnzz_siteid:
    ```

{% note info %}
The script will show «Webmaster Statistics» and it's not elegant, so we used a `display: none;` to hide it.
{% endnote %}

### Counting Tools

#### LeanCloud (China)

Adding article reading times counting to NexT theme. Documentation how to set the counter up and running safely aviable in [hexo-leancloud-counter-security](https://github.com/theme-next/hexo-leancloud-counter-security).

{% tabs leanCloud-counter %}
<!-- tab Installation → -->
Install `hexo-leancloud-counter-security` by executing the following command in {% label info@site root dir %}:
```bash
$ npm install hexo-leancloud-counter-security
```
<!-- endtab -->

<!-- tab Hexo Config → -->
Edit {% label info@site config file %} and add following content:
```yml hexo/_config.yml
leancloud_counter_security:
  enable_sync: true
  app_id: <your app id>
  app_key: <your app key>
  username: <your username> # Will be asked while deploying if is left blank
  password: <your password> # Recommmended to be left blank. Will be asked while deploying if is left blank
```
<!-- endtab -->

<!-- tab NexT Config -->
Edit {% label primary@theme config file %} and fill options under `leancloud_visitors` section.
```yml next/_config.yml
# Show number of visitors to each article.
# You can visit https://leancloud.cn get AppID and AppKey.
leancloud_visitors:
  enable: true
  app_id: #<app_id>
  app_key: #<app_key>
  # Required for apps from CN region
  server_url: # <your server url>
  # Dependencies: https://github.com/theme-next/hexo-leancloud-counter-security
  # If you don't care about security in lc counter and just want to use it directly
  # (without hexo-leancloud-counter-security plugin), set the `security` to `false`.
  security: true
```
<!-- endtab -->
{% endtabs %}

#### Firebase

Firebase Analytics provides the functionality of visitor statistics.

{% tabs firestore %}
<!-- tab Get apiKey & projectId → -->
Login to [Firebase](https://console.firebase.google.com/u/0/) to get apiKey and projectId. [More detailed documentation](https://firebase.google.com/docs/firestore/)
<!-- endtab -->

<!-- tab NexT Config -->
Edit {% label primary@theme config file %} and add or change `firestore` section:
```yml next/_config.yml
firestore:
  enable: true
  collection: articles #required, a string collection name to access firestore database
  apiKey: #required
  projectId: #required
```
<!-- endtab -->
{% endtabs %}

#### Busuanzi Counting (China)

{% tabs busuanzi-counting %}

<!-- tab Global Settings → -->
Edit `busuanzi_count` option in {% label primary@theme config file %}.
When `enable: true`, global setting is enabled. If `total_visitors`, `total_views`, `post_views` are all `false`, Busuanzi only counts but never shows.
<!-- endtab -->

<!-- tab Site UV Settings → -->
When `total_visitors: true`, it will show site UV in footer. You can also use font-awesome by setting `total_visitors_icon` to the name of the icon.
```yml next/_config.yml
busuanzi_count:
  total_visitors: true
  total_visitors_icon: fa fa-user
```
<!-- endtab -->

<!-- tab Site PV Settings → -->
When `total_views: true`, it will show site UV in footer. You can also use font-awesome by setting `total_views_icon` to the name of the icon.
```yml next/_config.yml
busuanzi_count:
  total_views: true
  total_views_icon: fa fa-user
```
<!-- endtab -->

<!-- tab Per-page PV Settings -->
When `post_views: true`, it will show page PV in post meta. You can also use font-awesome by setting `post_views_icon` to the name of the icon.
```yml next/_config.yml
busuanzi_count:
  post_views: true
  post_views_icon: fa fa-user
```
<!-- endtab -->
{% endtabs %}
