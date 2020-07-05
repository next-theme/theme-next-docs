---
title: Front Matter
description: NexT User Docs – Theme Settings - Front Matter
---

> Front-matter is a block of YAML or JSON at the beginning of the file that is used to configure settings for your writings. Front-matter is terminated by three dashes when written in YAML or three semicolons when written in JSON.  
— from [Hexo site](https://hexo.io/docs/front-matter).

**YAML**
```yml
---
title: Hello World
date: 2013/7/13 20:46:25
---
```

**JSON**
```json
"title": "Hello World",
"date": "2013/7/13 20:46:25"
;;;
```

Next extends and provide more variables. It allows users to configure a single page.

### Settings & Their Default Values

Setting | Type | Description | Default
--- | --- | --- | ---
`author` | `string` | Author name for post copyright | `author` in Hexo `_config.yml`
`description` | `string` | Docs [here](/docs/theme-settings/posts.html#Preamble-Text) | None
`direction` | `string` | Available value: `rtl` | None
`header` | `boolean` | Whether to display the post header in index page | `true`
`mathjax` | `boolean` | MathJax support | `!math.per_page` in `_config.yml`
`sidebar` | `boolean` | Whether the sidebar will be shown | Depends on `sidebar.display` in `_config.yml`
`sticky` | `number` | [hexo-generator-indexed](https://github.com/next-theme/hexo-generator-indexed) plugin required | 0
`quicklink` | `object` (1) | Quicklink support | From `_config.yml`
`reward_settings` | `object` (1) | Reward settings | From `_config.yml`
`toc` | `object` (1) | Table of Contents in the sidebar | From `_config.yml`

(1): they have same structure with the configuration file.

**Example**

```yml
toc:
  enable: true
  number: false
  max_depth: 3
reward_settings:
  enable: true
  comment: Buy me a coffee
quicklink:
  enable: true
  delay: true
  timeout: 3000
  priority: true
  ignores:
```

### Undocumented Front-matter Variables

The following variables are not mentioned in the Hexo documentation, but are required by [hexo-theme-unit-test](https://github.com/hexojs/hexo-theme-unit-test).

Setting | Type | Example
--- | --- | ---
`link` | `string` | [link-post](https://github.com/hexojs/hexo-theme-unit-test/blob/master/source/_posts/link-post.md)
`photos` | `array` | [gallery-post](https://github.com/hexojs/hexo-theme-unit-test/blob/master/source/_posts/gallery-post.md)
