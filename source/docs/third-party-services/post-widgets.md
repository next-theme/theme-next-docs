---
title: Post Widgets
description: NexT User Docs – Third-party Service Integration – Post Widgets
---

### Widgetpack Rating

Rating service with login through any social networks like Facebook, Twitter, Google+, LinkedIn, Instagram and others.

{% tabs rating %}
<!-- tab Get ID → -->
Login to [widgetpack](https://widgetpack.com/admin#signin) and add new site, you will get your site ID:
```html
wpac_init.push({widget: 'Rating', id: ID});
```
<!-- endtab -->

<!-- tab NexT Config -->

You can enable it by setting value `rating.enable` to `true`, and copy `ID` value of `id` in {% label primary@theme config file %}. You can also configure the rating color by editing values in `rating.color` section.

```yml next/_config.yml
rating:
  enable: false
  id:     ID #<app_id>
  color:  fc6423
```
<!-- endtab -->
{% endtabs %}

### AddThis

{% tabs addthis %}
<!-- tab Sign Up → -->
Sign up in [AddThis](https://www.addthis.com). You can use Google/Facebook/Twitter to login.
<!-- endtab -->

<!-- tab AddThis ID → -->
Get AddThis ID in this menu: `More..` → `General` → `ID`. See example on the picture below:
![AddThis ID](/images/docs/add-this-id.png)
<!-- endtab -->

<!-- tab NexT Config -->
Edit the configurations in `add_this_id` section in the {% label primary@theme config file %} as following:
```yml next/_config.yml
add_this_id: your_add_this_id
```
<!-- endtab -->
{% endtabs %}
