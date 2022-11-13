---
title: Internationalization
description: NexT User Docs – Starting to Use – Internationalization
---

### Choosing Language

Edit {% label info@Hexo config file %}, set the value of `language` to the language you need. For example, English looks like this:

```yml Hexo config file
language: en
```

NexT now supports following languages:

| Language               | Example               | Code    |
| ---------------------- | --------------------- | ------- |
| Arabic                 | عربي                  | `ar`    |
| Bengali                | বাংলা                  | `bn`    |
| Chinese (Simplified)   | 简体中文               | `zh-CN` |
| Chinese (Traditional)  | 繁體中文               | `zh-TW` |
| Chinese (Hong Kong)    | 繁體中文-香港           | `zh-HK` |
| Dutch                  | Niederländisch        | `nl`    |
| English                | English               | `en`    |
| French                 | Français              | `fr`    |
| German                 | Deutsch               | `de`    |
| Indonesian             | Indonesia             | `id`    |
| Italian                | Italiano              | `it`    |
| Japanese               | 日本語                 | `ja`    |
| Korean                 | 한국어                 | `ko`    |
| Persian                | فارسی                 | `fa`    |
| Portuguese             | Português             | `pt`    |
| Portuguese (Brazilian) | Português (Brazilian) | `pt-BR` |
| Russian                | Русский               | `ru`    |
| Sinhala                | සිංහල                  | `si`    |
| Spanish                | Español               | `es`    |
| Turkish                | Türk                  | `tr`    |
| Turkmen                | Türkmençe             | `tk`    |
| Ukrainian              | Український           | `uk`    |
| Vietnamese             | Tiếng Việt            | `vi`    |

{% note primary %}
The files in the `language` directory are automatically generated, you do not need to modify them directly. Please submit translations via [Crowdin](https://crowdin.com/project/hexo-theme-next) if you would like to add or improve translation for NexT theme.
{% endnote %}

### Multilingual Switcher

Set multiple languages in {% label info@Hexo config file %}, e.g.

```yml Hexo config file
language:
  - zh-CN
  - en
```

Then turn on `language_switcher` in {% label primary@NexT config file %}:

```yml NexT config file
# Show multilingual switcher in footer.
language_switcher: true
```

### Override Default Translations

If you would like to customize the default translation, you do not need to modify the translation files in the `languages` directory. You can override all translations using [Data Files](https://hexo.io/docs/data-files).

1. Create a `languages.yml` in `source/_data`.
2. Insert following codes: (be careful about the two-space indent)

    ```yml languages.yml
    # language
    zh-CN:
      # items
      post:
        copyright:
          # the translation you prefer
          author: 本文博主
    en:
      menu:
        schedule: Calendar
    ```

This situation is also available for off-list items. For example, Next uses [Theme Inject](/docs/advanced-settings/injects.html) to introduce the comments systems. You can rename the returned value in chinese as followed:

```yml languages.yml
# language
zh-CN:
  # items
  post:
    comments:
      disqus: 评论
```
