---
title: Note (Bootstrap Callout)
description: NexT User Docs – NexT Supported Tags – Note
---

### Settings

```yml next/_config.yml
note:
  # Note tag style values:
  #  - simple    bs-callout old alert style. Default.
  #  - modern    bs-callout new (v2-v3) alert style.
  #  - flat      flat callout style with background, like on Mozilla or StackOverflow.
  #  - disabled  disable all CSS styles import of note tag.
  style: simple
  icons: false
  # Offset lighter of background in % for modern and flat styles (modern: -12 | 12; flat: -18 | 6).
  # Offset also applied to label tag variables. This option can work with disabled note tag.
  light_bg_offset: 0
```

### Usage

```md note.js
{% note [class] [no-icon] [summary] %}
Any content (support inline tags too).
{% endnote %}

[class]   : default | primary | success | info | warning | danger.
[no-icon] : Disable icon in note.
[summary] : Optional summary of the note.

All parameters are optional.
```

### Examples

```md
{% note %}
#### Header
(without define class style)
{% endnote %}
```

{% note %}
#### Header
(without define class style)
{% endnote %}

```md
{% note default %}
#### Default Header
Welcome to [Hexo!](https://hexo.io)
{% endnote %}
```

{% note default %}
#### Default Header
Welcome to [Hexo!](https://hexo.io)
{% endnote %}

```md
{% note primary %}
#### Primary Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}
```

{% note primary %}
#### Primary Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}

```md
{% note info %}
#### Info Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}
```

{% note info %}
#### Info Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}

```md
{% note success %}
#### Success Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}
```

{% note success %}
#### Success Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}

```md
{% note warning %}
#### Warning Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}
```

{% note warning %}
#### Warning Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}

```md
{% note danger %}
#### Danger Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}
```

{% note danger %}
#### Danger Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}

```md
{% note info no-icon %}
#### No icon note
Note **without** icon: `note info no-icon`

note info, note info, note info
note info, note info, note info
note info, note info, note info
{% endnote %}
```

{% note info no-icon %}
#### No icon note
Note **without** icon: `note info no-icon`

note info, note info, note info
note info, note info, note info
note info, note info, note info
{% endnote %}

```md
{% note primary This is a summary %}
#### Details and summary
Note with summary: `note primary This is a summary`
```

{% note primary This is a summary %}
#### Details and summary
Note with summary: `note primary This is a summary`
{% endnote %}

```md
{% note success %}
#### Codeblock in note
{% code %}
code block in note tag
code block in note tag
code block in note tag
{% endcode %}
{% endnote %}
```

{% note success %}
#### Codeblock in note
{% code %}
code block in note tag
code block in note tag
code block in note tag
{% endcode %}
{% endnote %}

```md
{% note default %}
#### Lists in note
* ul
* ul
  * ul
  * ul
* ul

1. ol
2. ol
  1. ol
  2. ol
3. ol
{% endnote %}
```

{% note default %}
#### Lists in note
* ul
* ul
  * ul
  * ul
* ul

1. ol
2. ol
  3. ol
  4. ol
5. ol
{% endnote %}

```md
#### Table in Note
{% note default %}
| 1 | 2 |
| - | - |
| 3 | 4 |
| 5 | 6 |
| 7 | 8 |
{% endnote %}
```

{% note default %}
#### Table in note
| 1 | 2 |
| - | - |
| 3 | 4 |
| 5 | 6 |
| 7 | 8 |
{% endnote %}
