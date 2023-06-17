---
title: Post Widgets
description: NexT User Docs – Third-party Plugins Integration – Post Widgets
---

### AddToAny

{% tabs AddToAny %}
<!-- tab Enable AddToAny → -->
Edit {% label primary@NexT config file %} to enable AddToAny Share:

```yml NexT config file
# AddToAny Share. See: https://www.addtoany.com
addtoany:
  enable: true
  buttons:
    - facebook
    - twitter
```
<!-- endtab -->

<!-- tab Add Buttons -->
After AddToAny enabled, you can add more buttons.

```yml NexT config file
# AddToAny Share. See: https://www.addtoany.com
addtoany:
  enable: true
  buttons:
    - facebook
    - twitter
    - telegram
    - wechat
    - qzone
```
<!-- endtab -->
{% endtabs %}
