---
title: Statistics and Analytics
description: NexT User Docs – Third-party Plugins Integration – Statistics and Analytics
---

{% note warning %}
NexT will not send record to analytics service provider as long as the page's host name does not match `url` option set in {% label info@Hexo config file %}. This will prevent local debugging from polluting analytics. Make sure you have configured `url` correctly, otherwise these statistics tools may not work as expected.
{% endnote %}

### Analytics Tools

#### Google Analytics

1. Create an account and log into [Google Analytics](https://analytics.google.com). [More detailed documentation](https://support.google.com/analytics/?hl=en#topic=3544906)
2. Edit {% label primary@NexT config file %} and fill `tracking_id` under section `google_analytics` with your Google track ID. Google track ID always starts with `UA-`.

    ```yml NexT config file
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
![NexT Baidu Analytics](/images/analytics-baidu-id.png)
<!-- endtab -->

<!-- tab NexT Config -->
Edit {% label primary@NexT config file %} and change the value of `baidu_analytics` to your script ID.

```yml NexT config file
# Baidu Analytics ID
baidu_analytics: your_id
```
<!-- endtab -->
{% endtabs %}

#### Growingio Analytics

Official documentation: https://docs.growingio.com/v3/developer-manual/sdkintegrated/web-js-sdk/latest-jssdk

Edit {% label primary@NexT config file %} and change the value of `growingio_analytics` to your project ID.

```yml NexT config file
# Growingio Analytics
growingio_analytics: # <project_id>
```

#### Cloudflare Web Analytics

Official documentation: https://www.cloudflare.com/web-analytics/

Edit {% label primary@NexT config file %} and change the value of `cloudflare_analytics` to your project ID.

```yml NexT config file
# Cloudflare Web Analytics
cloudflare_analytics:
```

#### Microsoft Clarity Analytics

Official documentation: https://clarity.microsoft.com/

Edit {% label primary@NexT config file %} and change the value of `clarity_analytics` to your project ID.

```yml NexT config file
# Microsoft Clarity Analytics
clarity_analytics: # <project_id>
```

#### Matomo Analytics (Self-managed)

Edit {% label primary@NexT config file %} and fill `server_url` and `site_id` under section `matomo` with the url of your backend server and your customized site ID.

```yml NexT config file
# Matomo Analytics
# See: https://matomo.org/
matomo:
  enable: false
  server_url: # https://www.example.com/
  site_id: # <your site id>
```

#### Umami Analytics (Self-managed)

Umami is a self-hosted web analytics solution. Official documentation: https://umami.is/

Edit {% label primary@NexT config file %}. Fill `script_url` under section `umami` with your tracking script URL, and change the value of `website_id` to your website ID.

```yml NexT config file
# Umami Analytics
umami:
  enable: true
  script_url: # https://umami.example.com/script.js
  website_id: # <your website id>
  host_url: # <your umami site url>
```

#### Plausible Analytics (Self-managed)

Opt for paid managed hosting or self-host it on your server. Official documentation: https://plausible.io/

Edit {% label primary@NexT config file %}. Fill `script_url` under section `plausible` with your tracking script URL, and change the value of `site_domain` to your website domain.

```yml NexT config file
# Plausible Analytics
plausible:
  enable: true
  script_url: # https://plausible.io/js/script.js
  site_domain: # www.example.com
```

### Counting Tools

#### LeanCloud (China)

Adding article reading times counting to NexT theme. Documentation how to set the counter up and running safely aviable in [hexo-leancloud-counter-security](https://github.com/theme-next/hexo-leancloud-counter-security).

{% tabs leanCloud-counter %}
<!-- tab Get App Keys → -->
1. Create an account or log in to [LeanCloud](https://console.leancloud.app/login), and then click the button to create an application in [dashboard](https://console.leancloud.app/apps).
    ![LeanCloud](/images/valine-1.png)
2. Go to the application you just created, select `Settings → App Keys` in the lower left corner, and you will see your APP ID and APP Key.
    ![LeanCloud](/images/valine-2.png)
<!-- endtab -->

<!-- tab Installation → -->
Install `hexo-leancloud-counter-security` by executing the following command in {% label info@site root dir %}:

```bash
npm install hexo-leancloud-counter-security
```
<!-- endtab -->

<!-- tab Hexo Config → -->
Edit {% label info@Hexo config file %} and add following content:

```yml Hexo config file
leancloud_counter_security:
  enable_sync: true
  app_id: <your app id>
  app_key: <your app key>
  username: <your username> # Will be asked while deploying if is left blank
  password: <your password> # Recommmended to be left blank. Will be asked while deploying if is left blank
```
<!-- endtab -->

<!-- tab NexT Config -->
Edit {% label primary@NexT config file %} and fill options under `leancloud_visitors` section.

```yml NexT config file
# Show number of visitors to each article.
# You can visit https://www.leancloud.cn get AppID and AppKey.
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
Login to [Firebase](https://console.firebase.google.com/u/0/) to get apiKey and projectId. The Web API Key gets generated once you go into the "Authentication" section for the first time.

![Firebase](/images/firebase-1.png)
![Firebase](/images/firebase.png)

[More detailed documentation](https://firebase.google.com/docs/firestore/)
<!-- endtab -->

<!-- tab Create Firestore Database → -->
1. Create a Firestore database in Firebase console.

![Firestore](/images/firestore-1.png)
![Firestore](/images/firestore-2.png)

2. Apply these rules in Firestore Database Rules:

```js
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /articles/{document=**} {
      allow read, create: if true;
      allow write: if request.resource.data.count==resource.data.count+1;
    }
    match /{document=**} {
      allow read, write: if false;
    }
  }
}
```

This configuration allows anyone to read the visitor count but prevents unauthorized writes to the database.

![Firestore](/images/firestore-3.png)
<!-- endtab --> 

<!-- tab NexT Config -->
Edit {% label primary@NexT config file %} and add or change `firestore` section:

```yml NexT config file
firestore:
  enable: true
  collection: articles #required, a string collection name to access firestore database
  apiKey: #required
  projectId: #required
```
Note: Firestore visitor counting tracks unique visitors (UV) only. The count won't increase on page refresh as it uses browser's localStorage. To test the counter:
- Clear localStorage in Developer Tools
- Use incognito/private mode
- Use different browsers
<!-- endtab -->
{% endtabs %}

#### Busuanzi Counting (China)

{% tabs busuanzi-counting %}

<!-- tab Global Settings → -->
Edit `busuanzi_count` option in {% label primary@NexT config file %}.
When `enable: true`, global setting is enabled. If `total_visitors`, `total_views`, `post_views` are all `false`, Busuanzi only counts but never shows.
<!-- endtab -->

<!-- tab Site UV Settings → -->
When `total_visitors: true`, it will show site UV in footer. You can also use font-awesome by setting `total_visitors_icon` to the name of the icon.

```yml NexT config file
busuanzi_count:
  total_visitors: true
  total_visitors_icon: fa fa-user
```
<!-- endtab -->

<!-- tab Site PV Settings → -->
When `total_views: true`, it will show site UV in footer. You can also use font-awesome by setting `total_views_icon` to the name of the icon.

```yml NexT config file
busuanzi_count:
  total_views: true
  total_views_icon: fa fa-eye
```
<!-- endtab -->

<!-- tab Per-page PV Settings -->
When `post_views: true`, it will show page PV in post meta. You can also use font-awesome by setting `post_views_icon` to the name of the icon.

```yml NexT config file
busuanzi_count:
  post_views: true
  post_views_icon: far fa-eye
```
<!-- endtab -->
{% endtabs %}
