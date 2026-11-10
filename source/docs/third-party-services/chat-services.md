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

### Knocket

[Knocket](https://trtc.io/solutions/knocket) is a 100% free live chat widget — free forever, no ads, no seat limits.

{% tabs Knocket %}
<!-- tab Enable Knocket → -->
Visit [Knocket](https://trtc.io/solutions/knocket) to get your identifier.

```yml NexT config file
# Knocket Support
knocket:
  enable: true
  async: true
  identifier: <Your Knocket Identifier>
```

<!-- endtab -->

<!-- tab Activate sidebar button -->
After Knocket enabled, you can set `chat.enable` to `true` in {% label primary@NexT config file %}.

```yml NexT config file
# A button to open designated chat widget in sidebar.
# Firstly, you need enable the chat service you want to activate its sidebar button.
chat:
  enable: true
  icon: fa fa-comment
```
<!-- endtab -->
{% endtabs %}

### OneTag AI

[OneTag AI](https://onetagai.com) adds an "ask this page" button: visitors type a question and get an answer drawn from the page they are reading.

Visit [OneTag AI](https://onetagai.com) to get your key. It is a public site key with a hard usage cap, so it is safe to keep in the page source.

```yml NexT config file
# OneTag AI Support
onetag:
  enable: true
  key: <Your OneTag Key>
```

The button sits in the bottom corner opposite to the sidebar toggle. Nothing is loaded until `key` is set.
