---
title: Post Widgets
description: NexT User Docs – Third-party Plugins Integration – Post Widgets
---

### AddThis

{% tabs addthis %}
<!-- tab Sign Up → -->
Sign up in [AddThis](https://www.addthis.com). You can use Google / Facebook / Twitter to login.
<!-- endtab -->

<!-- tab AddThis ID → -->
Get AddThis ID in this menu: `Profile Settings` → `General` → `ID`. See example on the picture below:
![AddThis ID](/images/add-this-id.png)
<!-- endtab -->

<!-- tab NexT Config -->
Edit the value of `add_this_id` in the {% label primary@NexT config file %} as following:

```yml NexT config file
add_this_id: your_add_this_id
```
<!-- endtab -->
{% endtabs %}
