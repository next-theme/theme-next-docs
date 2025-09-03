---
title: Comment Systems
description: NexT User Docs – Third-party Plugins Integration – Comment Systems
---

### Overview

#### Multiple Comment System Support

NexT allows you to enable multiple commenting systems at the same time. You can modify the following configuration to adjust the style or behavior of multiple commenting systems.

```yml NexT config file
# Multiple Comment System Support
comments:
  # Available values: tabs | buttons
  style: tabs
  # Choose a comment system to be displayed by default
  # Available values: disqus | disqusjs | changyan | livere | gitalk | utterances | isso
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

You can enable lazyload by setting value `comments.lazyload` to `true` in {% label primary@NexT config file %}. NexT uses IntersectionObserver to lazyload the comments, which is not supported by IE and most browsers released before 2017.

{% caniuse intersectionobserver @ current,past_1,past_2,past_3,past_4,past_5 %}

#### How to Disable Comments on Page

When you enabled comment service like Disqus, all new page will have comment service automatically. If you want to disable it in one page, just add `comments` key to [front-matter](https://hexo.io/docs/front-matter) and set its value to `false`. Like following:

```md your-post.md
title: All tags
type: "tags"
comments: false
---
```

#### Rename Comment Count Text

You can rename the post meta text of comment count using `languages.yml`: [Override Default Translations](/docs/theme-settings/internationalization.html#Override-Default-Translations).

### Disqus

Disqus is a global comment system that improves discussion on websites and connects conversations across the web.

1. Create an account and log into [Disqus](https://disqus.com/). Once logged in, click the `GET STARTED` button on the homepage, then select `I want to install Disqus on my site` option and you will see the `Create a new site` interface.
2. Enter your `Website Name`, which will serve as your Disqus shortname, and select a Category from the drop-down menu. Then click `Create Site` button.
3. Choose `I don't see my platform listed, install manually with Universal Code`, configure Disqus for your site, and click `Complete Setup` button.
4. Set the value `enable` to `true`, add the obtained Disqus shortname (`shortname`), and edit other configurations in `disqus` section in the {% label primary@NexT config file %} as following:

    ```yml NexT config file
    disqus:
      enable: false
      shortname: your-short-disqus-name
      count: true
    ```

{% note warning %}
By default, Disqus enables advertisements and tracking codes, including the insertion of Viglink redirect links into web pages. This may cause inconvenience to visitors. In the Disqus settings, this behavior can be stopped by unchecking the `Affiliate links` option. Other advertising and tracking options can also be customized.
![Algolia API Keys](/images/disqus.png)
{% endnote %}

### DisqusJS

Render Disqus comment component using Disqus API.

1. Get your Disqus API Key from [Disqus API Application](https://disqus.com/api/applications/).
2. Go to the settings page of your Disqus Application, enter your domain in Settings → Domains.
3. Get your Disqus Shortname from [General Settings - Disqus Admin](https://disqus.com/admin/settings/general/).
4. Set the value `enable` to `true`, add the obtained Disqus API Key (`apikey`) and Shortname (`shortname`), and edit other configurations in `disqusjs` section in the {% label primary@NexT config file %} as following:

    ```yml NexT config file
    # DisqusJS
    # Demo: https://disqusjs.skk.moe
    disqusjs:
      enable: false
      # API Endpoint of Disqus API (https://disqus.com/api/docs/)
      # leave api empty if you are able to connect to Disqus API
      # otherwise you need a reverse proxy for Disqus API
      # For example:
      # api: https://disqus.skk.moe/disqus/
      api:
      apikey: # register new application from https://disqus.com/api/applications/
      shortname: # See: https://disqus.com/admin/settings/general/
    ```

### Changyan (China)

Changyan is the industry's leading social commenting system, supporting both PC and mobile access methods, providing a new way of commenting on websites. Changyan has a variety of common account login, triple filtering mechanism, real-time data statistics, fast data export, comprehensive support for mobile and other leading functions. It fully satisfies the needs of major websites for user login, comment, sharing, and review.

1. Create an account or log into [Changyan](https://changyan.kuaizhan.com/), then add your site to get APP ID and APP KEY.
2. Set the value `enable` to `true`, and add the obtained APP ID (`appid`) and APP KEY (`appkey`) to the `changyan` section in the {% label primary@NexT config file %} as following:

    ```yml NexT config file
    # changyan
    changyan:
      enable: false
      appid:
      appkey:
      count: true
    ```
Note: after you comment, it will take some time for you to see the increase in the number of comments.

### LiveRe

LiveRe is a content platform based on social networking site reviews to help users communicate freely.

1. Create an account or log into [LiveRe](https://livere.com), click on the `installation` button and select the free city version, then click on the `install now` button.
2. Copy the `data-uid` field in the installation code to get your LiveRe UID.
3. Add the obtained LiveRe UID to the `livere_uid` section in the {% label primary@NexT config file %} as following:

    ```yml NexT config file
    # Support for LiveRe comments system.
    # You can get your uid from https://livere.com/insight/myCode (General web site)
    livere_uid: your_uid
    ```

### Gitalk

Gitalk is a modern comment component based on Github Issue and Preact.

1. Click here to sign up for a [new OAuth Application](https://github.com/settings/applications/new). Other content can be filled in at will, but be sure to fill in the correct callback URL (usually the domain name corresponding to the comment page). Then you will get a Client ID and a Client secret.
2. Create a repository you want to store Gitalk comments in your GitHub.
3. Set the value `enable` to `true`, add Client ID (`client_id`) and Client secret (`client_secret`) in step 1, add your Github username (`github_id` and `admin_user`) and the created repository name (`repo`) in step 2, and edit other configurations in `gitalk` section in the {% label primary@NexT config file %} as following:

    ```yml NexT config file
    # Gitalk
    # For more information: https://gitalk.github.io
    gitalk:
      enable: false
      github_id: # GitHub repo owner
      repo: # Repository name to store issues
      client_id: # GitHub Application Client ID
      client_secret: # GitHub Application Client Secret
      admin_user: # GitHub repo owner and collaborators, only these guys can initialize gitHub issues
      distraction_free_mode: true # Facebook-like distraction free mode
      # When the official proxy is not available, you can change it to your own proxy address
      proxy: https://cors-anywhere.azm.workers.dev/https://github.com/login/oauth/access_token # This is official proxy address
      # Gitalk's display language depends on user's browser or system environment
      # If you want everyone visiting your site to see a uniform language, you can set a force language value
      # Available values: en | es-ES | fr | ru | zh-CN | zh-TW
      language:
    ```

{% note warning %}
Gitalk relies on the md5 value of the page path for tagging, the comments will not be loaded correctly if a page's permalink is changed.
{% endnote %}

{% note warning %}
If your GitHub username contains only numbers, YAML will parse it as an integer, causing Gitalk to fail to load. To avoid this, you can add quotes around the `github_id` and `admin_user` values in the {% label primary@NexT config file %}. For example:

```yml NexT config file
gitalk:
  enable: true
  github_id: "12345678"
```
{% endnote %}

### Utterances

A lightweight comments widget built on GitHub issues. Use GitHub issues for blog comments, wiki pages and more!

```yml NexT config file
# Utterances
# For more information: https://utteranc.es
utterances:
  enable: false
  repo: user-name/repo-name # Github repository owner and name
  # Available values: pathname | url | title | og:title
  issue_term: pathname
  # Available values: github-light | github-dark | preferred-color-scheme | github-dark-orange | icy-dark | dark-blue | photon-dark | boxy-light
  theme: github-light
```

### Isso

Isso – *Ich schrei sonst* – is a lightweight commenting server written in Python and JavaScript. It aims to be a drop-in replacement for Disqus.

1. You need to [install and configure Isso](https://isso-comments.de/docs/reference/installation/) on your server first.
2. Set the value `isso` in the {% label primary@NexT config file %} as the value `data-isso` in Isso script. An exemplary script tag is given in the `Integration` section of the [Isso quickstart document](https://isso-comments.de/docs/guides/quickstart/#integration), you need to modify it according to the URL of your server.

    ```yml NexT config file
    # Isso
    # For more information: https://isso-comments.de
    isso: # <data_isso>
    ```
