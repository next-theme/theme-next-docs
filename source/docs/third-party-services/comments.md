---
title: Comment Systems
description: NexT User Docs – Third-party Service Integration – Comment Systems
---

### Overview

#### Multiple Comment System Support

NexT allows you to enable multiple commenting systems at the same time. You can modify the following configuration to adjust the style or behavior of multiple commenting systems.

```yml next/_config.yml
# Multiple Comment System Support
comments:
  # Available values: tabs | buttons
  style: tabs
  # Choose a comment system to be displayed by default
  # Available values: changyan | disqus | disqusjs | gitalk | livere | valine
  active:
  # Setting `true` means remembering the comment system selected by the visitor
  storage: true
  # Lazyload all comment systems.
  lazyload: false
  # Modify icons and texts for any style, here are some examples
  nav:
    #disqus:
    #  text: Load Disqus
    #  order: -1
    #gitalk:
    #  order: -2
```

You can enable lazyload by setting value `comments.lazyload` to `true` in {% label primary@theme config file %}. NexT uses IntersectionObserver to lazyload the comments, which is not supported by IE and most browsers released before 2017.

{% caniuse intersectionobserver @ current,past_1,past_2,past_3,past_4,past_5 %}

If your blog readers are mostly using legacy browsers, please consider using [Intersection Observer polyfill](https://github.com/w3c/IntersectionObserver/tree/master/polyfill).

#### How to Disable Comments on Page

When you enabled comment service like Disqus, all new page will have comment service automatically. If you want to disable it in one page, just add `comments` key to [Front-matter](https://hexo.io/docs/front-matter) and set its value to `false`. Like following:

```md your-post.md
title: All tags
type: "tags"
comments: false
---
```

### Disqus

Disqus is a global comment system that improves discussion on websites and connects conversations across the web.

1. Create an account and log into [Disqus](https://disqus.com/). Once logged in, click the `GET STARTED` button on the homepage, then select `I want to install Disqus on my site` option and you will see the `Create a new site` interface.
2. Enter your `Website Name`, which will serve as your Disqus shortname, and select a Category from the drop-down menu. Then click `Create Site` button.
3. Choose `I don't see my platform listed, install manually with Universal Code`, configure Disqus for your site, and click `Complete Setup` button.
4. Set the value `enable` to `true`, add the obtained Disqus shortname (`shortname`), and edit other configurations in `disqus` section in the {% label primary@theme config file %} as following:
    ```yml next/_config.yml
    disqus:
      enable: false
      shortname: your-short-disqus-name
      count: true
    ```

### DisqusJS

Render Disqus comment component using Disqus API.

1. Get your Disqus API Key from [Disqus API Application](https://disqus.com/api/applications/).
2. Go to the settings page of your Disqus Application, enter your domain in Settings → Domains.
3. Get your Disqus Shortname from [General Settings - Disqus Admin](https://disqus.com/admin/settings/general/).
4. Set the value `enable` to `true`, add the obtained Disqus API Key (`apikey`) and Shortname (`shortname`), and edit other configurations in `disqusjs` section in the {% label primary@theme config file %} as following:
    ```yml next/_config.yml
    # DisqusJS
    # Alternative Disqus - Render comment component using Disqus API
    # Demo: https://suka.js.org/DisqusJS/
    disqusjs:
      enable: false
      # API Endpoint of Disqus API (https://disqus.com/api/)
      # leave api empty if you are able to connect to Disqus API
      # otherwise you need a reverse proxy for Disqus API
      # For example:
      # api: https://disqus.skk.moe/disqus/
      api:
      apikey: # register new application from https://disqus.com/api/applications/
      shortname: # See: https://disqus.com/admin/settings/general/
    ```

### LiveRe

LiveRe is a content platform based on social networking site reviews to help users communicate freely.

1. Create an account or log into [LiveRe](https://livere.com), click on the `installation` button and select the free city version, then click on the `install now` button.
2. Copy the `data-uid` field in the installation code to get your LiveRe UID.
3. Add the obtained LiveRe UID to the `livere_uid` section in the {% label primary@theme config file %} as following:

    ```yml next/_config.yml
    # Support for LiveRe comments system.
    # You can get your uid from https://livere.com/insight/myCode (General web site)
    livere_uid: your_uid
    ```

### Gitalk

Gitalk is a modern comment component based on Github Issue and Preact.

1. Click here to sign up for a [new OAuth Application](https://github.com/settings/applications/new). Other content can be filled in at will, but be sure to fill in the correct callback URL (usually the domain name corresponding to the comment page). Then you will get a Client ID and a Client secret.
2. Create a repository you want to store Gitalk comments in your GitHub.
3. Set the value `enable` to `true`, add Client ID (`client_id`) and Client secret (`client_secret`) in step 1, add your Github username (`github_id` and `admin_user`) and the created repository name (`repo`) in step 2, and edit other configurations in `gitalk` section in the {% label primary@theme config file %} as following:

    ```yml next/_config.yml
    # Gitalk
    # Demo: https://gitalk.github.io
    gitalk:
      enable: false
      github_id:  # Github repo owner
      repo:  # Repository name to store issues
      client_id:  # Github Application Client ID
      client_secret:  # Github Application Client Secret
      admin_user:  # GitHub repo owner and collaborators, only these guys can initialize github issues
      distraction_free_mode: true # Facebook-like distraction free mode
      # Gitalk's display language depends on user's browser or system environment
      # If you want everyone visiting your site to see a uniform language, you can set a force language value
      # Available value: en, es-ES, fr, ru, zh-CN, zh-TW
      language:
    ```

{% note warning %}
Hexo has encode URLs by default since version 4.0: [PR 3708](https://github.com/hexojs/hexo/pull/3708).
Gitalk relies on the md5 value of the page path for tagging, and this may cause issues. It's recommended to upgrade Hexo to 4.0 (or later), NexT to 7.7.0 (or later) to use Gitalk.
{% endnote %}

### Valine (China)

Valine is a fast, simple & efficient Leancloud based no back end comment system.

1. Create an account or log into [LeanCloud](https://leancloud.cn/dashboard/login.html#/signin), and then click on the bottom left corner to [create the application](https://leancloud.cn/dashboard/applist.html#/newapp) in [dashboard](https://leancloud.cn/dashboard/applist.html#/apps).
    ![Valine](/images/docs/valine-1.png)
2. Go to the application you just created, select `Settings → App Keys` in the lower left corner, and you will see your APP ID and APP Key.
    ![Valine](/images/docs/valine-2.png)
3. Set the value `enable` to `true`, add the obtained APP ID (`appId`) and APP Key (`appKey`), and edit other configurations in `valine` section in the {% label primary@theme config file %} as following:

    ```yml next/_config.yml
    # Valine
    # For more information: https://valine.js.org, https://github.com/xCss/Valine
    valine:
      enable: false
      appId:  # your leancloud application appid
      appKey:  # your leancloud application appkey
      placeholder: Just go go # comment box placeholder
      avatar: mm # gravatar style
      meta: [nick, mail, link] # Custom comment header
      pageSize: 10 # pagination size
      visitor: false # leancloud-counter-security is not supported for now. When visitor is set to be true, appid and appkey are recommended to be the same as leancloud_visitors' for counter compatibility. Article reading statistic https://valine.js.org/visitor.html
      comment_count: true # If false, comment count will only be displayed in post page, not in home page
      recordIP: false # Whether to record the commenter IP
      serverURLs: # When the custom domain name is enabled, fill it in here (it will be detected automatically by default, no need to fill in)
    ```

### Changyan (China)

Changyan is the industry's leading social commenting system, supporting both PC and mobile access methods, providing a new way of commenting on websites. Changyan has a variety of common account login, triple filtering mechanism, real-time data statistics, fast data export, comprehensive support for mobile and other leading functions. It fully satisfies the needs of major websites for user login, comment, sharing, and review.

1. Create an account or log into [Changyan](https://changyan.kuaizhan.com/), then add your site to get APP ID and APP KEY.
2. Set the value `enable` to `true`, and add the obtained APP ID (`appid`) and APP KEY (`appkey`) to the `changyan` section in the {% label primary@theme config file %} as following:

    ```yml next/_config.yml
    # changyan
    changyan:
      enable: false
      appid:
      appkey:
    ```

{% note warning %}
Please note that you should fill in the ICP record number of your website in time. If not, or the record information is not correct, the comment service will be stopped after 13 days. [Useful link](https://changyan.kuaizhan.com/help/o-beian.html)
{% endnote %}
