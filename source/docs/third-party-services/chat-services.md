---
title: Chat Services
description: NexT User Docs – Third-party Plugins Integration – Chat Services
---

### Chatra

[Chatra](https://chatra.com) is a live chat messenger app for your website.

{% tabs Chatra %}
<!-- tab Enable Chatra → -->
Visit [Dashboard](https://app.chatra.io/settings/general) to get your ChatraID.

```yml NexT config file
# Chatra Support
chatra:
  enable: true
  async: true
  id: <ChatraID>
```

<!-- endtab -->

<!-- tab Activate sidebar button -->
After Chatra enabled, you can set `chat.enable` to `true` in {% label primary@NexT config file %}.

```yml NexT config file
# A button to open designated chat widget in sidebar.
# Firstly, you need enable the chat service you want to activate its sidebar button.
chat:
  enable: true
  icon: fa fa-comment
```
<!-- endtab -->
{% endtabs %}

### Tidio

[Tidio](https://www.tidio.com/) is a live chat messenger app for your website.

{% tabs Tidio %}
<!-- tab Enable Tidio → -->
Visit [Dashboard](https://www.tidio.com/panel/dashboard) to get your Public Key.

```yml NexT config file
# Tidio Support
tidio:
  enable: true
  key: <Publick Key>
```

<!-- endtab -->

<!-- tab Activate sidebar button -->
After Tidio enabled, you can set `chat.enable` to `true` in {% label primary@NexT config file %}.

```yml NexT config file
# A button to open designated chat widget in sidebar.
# Firstly, you need enable the chat service you want to activate its sidebar button.
chat:
  enable: true
  icon: fa fa-comment
```
<!-- endtab -->
{% endtabs %}
