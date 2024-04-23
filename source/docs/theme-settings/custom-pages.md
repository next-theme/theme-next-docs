---
title: Custom Pages
description: NexT User Docs – Theme Settings - Custom Pages
---

### Custom Page Support

Next allows users to add custom pages in menu.

{% tabs adding-custom-page %}
<!-- tab Adding New Page → -->
Change to {% label info@site root directory %} in your terminal. Use `hexo new page custom-name` to create a new `custom-name` page:

```bash
cd hexo-site
hexo new page custom-name
```
<!-- endtab -->

<!-- tab Setting Front-matter Values → -->
Front-matter is a block of YAML or JSON at the beginning of the file that is used to configure settings for your writings. Settings front-matter values and more detailed can be found in [front-matter](https://hexo.io/docs/front-matter). You can also add contents in `custom-name/index.md` if you like.

```md
title: custom-name
date: 2014-12-22 12:39:04
---
```
<!-- endtab -->

<!-- tab Editting Menu -->
Add `custom-name` to `menu` by editing {% label primary@NexT config file %}, like adding `about` page:

```yml NexT config file
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

### Use Archive Page as Home Page

You can configure the path of archive and index generator in {% label info@Hexo config file %}, e.g.

```yml Hexo config file
archive_dir: /

index_generator:
  path: archives
  per_page: 10
  order_by: -date
```

### Adding «Tags» Page

Adding «Tags» page and show «Tags» link in menu. «Tags» page will show all tags of site. If no article has tags, this page will leave blank.

{% tabs adding-tags-page %}
<!-- tab Adding New Page → -->
Change to {% label info@site root directory %} in your terminal. Use `hexo new page tags` to create a new `tags` page:

```bash
cd hexo-site
hexo new page tags
```
<!-- endtab -->

<!-- tab Setting Page Type → -->
Edit the new page and change the type to `tags`, theme will show tags cloud automatically in this page. Page content looks like following:

```md
title: Tags
date: 2014-12-22 12:39:04
type: tags
---
```
<!-- endtab -->

<!-- tab Editting Menu -->
Add `tags` to `menu` by editing {% label primary@NexT config file %}, like following:

```yml NexT config file
menu:
  home: / || fa fa-home
  archives: /archives/ || fa fa-archive
  tags: /tags/ || fa fa-tags
```
<!-- endtab -->
{% endtabs %}

{% note warning %}
If you enable any comment system for your site, comments will be shown for all posts and pages.
See [«How to Disable Comments on Page»](/docs/third-party-services/comments.html#How-to-Disable-Comments-on-Page) if you want to do it for pages like `tags` or `categories`.
{% endnote %}

{% note warning %}
The default Hexo plugin `hexo-generator-tag` provides an option called `enable_index_page`, which will conflict with the «Tags» page created above. Make sure you have the option disabled.

```yml Hexo config file
tag_generator:
  enable_index_page: false
```
{% endnote %}

#### Tagcloud

By default, NexT has setted font color and size for tagcloud in tags page.
From NexT v7.0.2 you can customize them, just set related values in {% label primary@NexT config file %}:

```yml NexT config file
# TagCloud settings for tags page.
tagcloud:
  min: 12 # Minimum font size in px
  max: 30 # Maximum font size in px
  amount: 200 # Total amount of tags
  orderby: name # Order of tags
  order: 1 # Sort order
```

### Adding «Categories» Page

{% note default %}
«Categories» page can be added in similar way as [«Tags» page](#Adding-%C2%ABTags%C2%BB-Page), only name there is difference: just need to replace `tags` with `categories`.
{% endnote %}

### Adding Google Calendar Page

Mind that you need to make sure first you are adding a calendar that is set to public. If you are unsure, please [follow these instructions first to set a Google calendar public](https://docs.simplecalendar.io/make-google-calendar-public/) before adding it.

More detailed documentation on creating & managing a public Google calendar: https://support.google.com/calendar/answer/37083

{% tabs calendar %}
<!-- tab Setting Google Calendar → -->

{% subtabs calendar1 %}
<!-- tab Get Calendar ID and API KEY → -->
[Follow these instructions](https://docs.simplecalendar.io/find-google-calendar-id/) to find your Google Calendar ID.

Login to [Google developers](https://console.cloud.google.com/flows/enableapi?apiid=calendar) and add Google Calendar API, you will get your API KEY on the [credentials page](https://console.cloud.google.com/apis/credentials).
<!-- endtab -->
<!-- tab NexT Config -->
You can enable it by setting values in `calendar` part. Copy the value of Calendar ID and API KEY in {% label primary@NexT config file %}.

```yml NexT config file
calendar:
  calendar_id: <required>
  api_key: <required>
  orderBy: startTime
  showLocation: false
  offsetMax: 72
  offsetMin: 4
  showDeleted: false
  singleEvents: true
  maxResults: 250
```
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

<!-- tab Adding Schedule Page → -->
Change to {% label info@site root directory %} in your terminal. Use `hexo new page schedule` to create a new `schedule` page:

```bash
cd hexo-site
hexo new page schedule
```
<!-- endtab -->

<!-- tab Setting Page Type → -->
Edit the new page and change the type to `schedule`, theme will show schedule automatically in this page. Page content looks like following:

```md
title: Schedule
date: 2014-12-22 12:39:04
type: schedule
---
```
<!-- endtab -->

<!-- tab Editting Menu -->
Add `schedule` to `menu` by editing {% label primary@NexT config file %}:

```yml NexT config file
menu:
  home: / || fa fa-home
  archives: /archives/ || fa fa-archive
  schedule: /schedule/ || fa fa-calendar
```
<!-- endtab -->
{% endtabs %}

### Custom 404 Page

In your terminal, change to the `source` folder of {% label info@site root directory %}. Create a new folder called `404`, then create a new page in it:

```bash
cd hexo-site
hexo new page 404
```

Make sure `relative_link` is disabled in {% label info@Hexo config file %}:

```yml Hexo config file
relative_link: false
```

{% note warning %}
Whether users can be redirected to the 404 page depends on the settings of the website hosting service or web server, not Hexo. For example, if you use Nginx as the server, you also need to configure the 404 page in `nginx.conf` file.
{% endnote %}

#### Commonweal 404

If you would like to enable `commonweal 404` (A service provided by Tencent in China), Edit `404/index.md` like this:

```md
---
title: '404'
date: 2014-12-22 12:39:04
comments: false
---
<script src="//qzonestyle.gtimg.cn/qzone/hybrid/app/404/search_children.js"
        charset="utf-8" homePageUrl="/" homePageName="Back to home">
</script>
```

You can also add any content you want to it.

Add `404` to `menu` by editing {% label primary@NexT config file %}:

```yml NexT config file
menu:
  home: / || fa fa-home
  archives: /archives/ || fa fa-archive
  commonweal: /404/ || fa fa-heartbeat
```
