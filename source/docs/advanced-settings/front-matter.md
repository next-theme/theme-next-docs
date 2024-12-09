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
`author` | `string` | Author name for post copyright | `author` in Hexo config file
`post_link` | `string` | The original link of the reposted article | None
`copyright_reprint` | `bool` | It shows that the article is a reprint article and needs to enter `author` and `post_link` together. | `false`
`link` | `string` | Clicking on the post title on the index or archive page will redirect to the set external link | None
`description` | `string` | Docs [here](/docs/theme-settings/posts.html#Preamble-Text) | None
`direction` | `string` | Available value: `rtl` | None
`header` | `boolean` | Whether to display the post header | `true`
`mathjax` | `boolean` | MathJax support | Depends on `math.every_page` in NexT config file
`sidebar` | `boolean` | Whether the sidebar will be shown | Depends on `sidebar.display` in NexT config file
`copyright` | `boolean` | Whether to display copyright notices below the post with `creative_commons.license` and `creative_commons.post` enabled | `true`
`sticky` | `number` | Pin the post to the top of the index page. [hexo-generator-index](https://github.com/hexojs/hexo-generator-index) plugin required | 0
`quicklink` | `object` (1) | Quicklink support | From NexT config file
`reward_settings` | `object` (1) | Reward settings | From NexT config file
`toc` | `object` (1) | Table of Contents in the sidebar | From NexT config file
`noindex` | `boolean` | Whether to add `noindex` in meta to disallow robots index.[block-indexing](https://developers.google.com/search/docs/crawling-indexing/block-indexing?visit_id=638645567819389813-970569186&rd=1&hl=zh-cn)| `false`

(1): They have the same structure as the options in {% label primary@NexT config file %}.

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
```

### Undocumented Front-matter Variables

The following variables are not mentioned in the Hexo documentation, but are required by [hexo-theme-unit-test](https://github.com/hexojs/hexo-theme-unit-test).

Setting | Type | Example
--- | --- | ---
`link` | `string` | [link-post](https://github.com/hexojs/hexo-theme-unit-test/blob/master/source/_posts/link-post.md)
`photos` | `array` | [gallery-post](https://github.com/hexojs/hexo-theme-unit-test/blob/master/source/_posts/gallery-post.md)
