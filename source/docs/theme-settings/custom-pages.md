---
title: Custom Pages
description: NexT User Docs – Theme Settings - Custom Pages
---

### Custom Page Support

Next allows users to add custom pages in menu.

{% tabs adding-custom-page %}
<!-- tab Adding New Page → -->
In your terminal emulator, change to Hexo site dir. Use `hexo new page custom_name` to create a new `custom_name` page:

    $ cd your-hexo-site
    $ hexo new page custom_name

<!-- endtab -->

<!-- tab Setting Front-matter Values → -->
Front-matter is a block of YAML or JSON at the beginning of the file that is used to configure settings for your writings. Settings Front-matter values and more detailed can be found in [Front-matter](https://hexo.io/docs/front-matter). You can also add contents in `custom_name/index.md` if you like.

```md
title: custom_name
date: 2014-12-22 12:39:04
---
```
<!-- endtab -->

<!-- tab Editting Menu -->
Add `custom_name` to `menu` by editing {% label primary@theme config file %}, like adding `about` page:
```yml next/_config.yml
menu:
  home: / || fa fa-home
  archives: /archives/ || fa fa-archive
  about: /about/ || fa fa-user
```
<!-- endtab -->
{% endtabs %}

If you want to add Tags or Categories page, please continue reading.
Please read [Hexo's Docs of Categories & Tags](https://hexo.io/docs/front-matter#Categories-amp-Tags) to know how to add tags or categories for articles.
Following code shows you a example of article with tags:

{% tabs tags-variants %}
<!-- tab Variant 1 -->
```md
title: Tags Testing Article
tags: [Testing, Another Tag]
---
```
<!-- endtab -->

<!-- tab Variant 2 -->
```md
title: Tags Testing Article
tags:
  - Testing
  - Another Tag
---
```
<!-- endtab -->
{% endtabs %}

#### Adding «Tags» Page

Adding «Tags» page and show «Tags» link in menu. «Tags» page will show all tags of site. If no article has tags, this page will leave blank.

{% tabs adding-tags-page %}
<!-- tab Adding New Page → -->
In your terminal emulator, change to Hexo site dir. Use `hexo new page tags` to create a new `tags` page:

    $ cd your-hexo-site
    $ hexo new page tags

<!-- endtab -->

<!-- tab Setting Page Type → -->
Edit the new page and change the type to `"tags"`, theme will show tags cloud automatically in this page. Page content looks like following:

```md
title: Tags
date: 2014-12-22 12:39:04
type: tags
---
```
<!-- endtab -->

<!-- tab Editting Menu -->
Add `tags` to `menu` by editing {% label primary@theme config file %}, like following:
```yml next/_config.yml
menu:
  home: / || fa fa-home
  archives: /archives/ || fa fa-archive
  tags: /tags/ || fa fa-tags
```
<!-- endtab -->
{% endtabs %}

{% note warning %}
If you enable any comment system for your site, comments will be shown for all posts and pages.
See [«How to Disable Comments on Page»](/docs/faqs/#How-to-Disable-Comments-on-Page) if you want to do it for pages like `tags` or `categories`.
{% endnote %}

#### Tagcloud

By default, NexT has setted font color and size for tagcloud in tags page.
From NexT v7.0.2 you can customize them, just set related values in {% label primary@theme config file %}:

```yml next/_config.yml
tagcloud:
  # All values below are same as default, change them by yourself
  min: 12 # min font size in px
  max: 30 # max font size in px
  start: '#ccc' # start color (hex, rgba, hsla or color keywords)
  end: '#111' # end color (hex, rgba, hsla or color keywords)
  amount: 200 # amount of tags, chage it if you have more than 200 tags
```

#### Adding «Categories» Page

{% note default %}
«Categories» page can be added in similar way as [«Tags» page](#Adding-%C2%ABTags%C2%BB-Page), only name there is difference: just need to replace `tags` with `categories`.
{% endnote %}

#### Adding Google Calendar Page

{% tabs calendar %}
<!-- tab Adding Schedule Page → -->
In your terminal emulator, change to Hexo site dir. Use `hexo new page schedule` to create a new `schedule` page:

    $ cd your-hexo-site
    $ hexo new page schedule

<!-- endtab -->

<!-- tab Setting Front-matter Values → -->
Front-matter is a block of YAML or JSON at the beginning of the file that is used to configure settings for your writings. Settings Front-matter values and more detailed can be found in [Front-matter](https://hexo.io/docs/front-matter). You can also add contents in `schedule/index.md` if you like.

```md
title: Schedule
date: 2014-12-22 12:39:04
type: schedule
---
```
<!-- endtab -->

<!-- tab Editting Menu → -->
Add `schedule` to `menu` by editing {% label primary@theme config file %}:
```yml next/_config.yml
menu:
  home: / || fa fa-home
  archives: /archives/ || fa fa-archive
  schedule: /schedule/ || fa fa-calendar
```
<!-- endtab -->

<!-- tab Setting Google Calendar-->

{% subtabs calendar1 %}
<!-- tab Get calendar ID and API KEY →  -->
Login to [Google developers](https://console.developers.google.com/flows/enableapi?apiid=calendar) and add Google Calendar API, you will get your calendar ID and API KEY. [More detailed documentation](https://developers.google.com/calendar/quickstart/js)

References:
- API Documentation: https://developers.google.com/google-apps/calendar/v3/reference/events/list
- To get api_key: https://console.developers.google.com
- Create & manage a public Google calendar: https://support.google.com/calendar/answer/37083
<!-- endtab -->
<!-- tab NexT Config  -->
You can enable it by setting values in `calendar` part. Copy the value of calendar ID and API KEY in {% label primary@theme config file %}.

```yml next/_config.yml
calendar:
  calendar_id: <required>
  api_key: <required>
  orderBy: startTime
  offsetMax: 24
  offsetMin: 4
  timeZone:
  showDeleted: false
  singleEvents: true
  maxResults: 250
```
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->
{% endtabs %}

#### Custom 404 Page

{% tabs custom-404-page %}
<!-- tab Adding New Page → -->
In your terminal emulator, change to the `source` folder of Hexo site dir. Create a new folder called `404`, then create a new page in it:

    $ cd your-hexo-site/source
    $ mkdir 404
    $ touch 404/index.md

<!-- endtab -->

<!-- tab Editting Page → -->
If you would like to enable `commonweal 404`(A service provided by Tencent in China), Edit `404/index.md` like this:

    ---
    title: 404
    date: 1970-01-01 00:00:00
    ---
    <script src="//qzonestyle.gtimg.cn/qzone/hybrid/app/404/search_children.js"
            charset="utf-8" homePageUrl="/" homePageName="Back to home">
    </script>

You can also add any content you want to it.
<!-- endtab -->

<!-- tab Editting Menu → -->
Add `404` to `menu` by editing {% label primary@theme config file %}:
```yml next/_config.yml
menu:
  home: / || fa fa-home
  archives: /archives/ || fa fa-archive
  commonweal: /404/ || fa fa-heartbeat
```
<!-- endtab -->
{% endtabs %}
