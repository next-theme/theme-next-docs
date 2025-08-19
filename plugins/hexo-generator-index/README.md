# hexo-generator-index

[![Build Status](https://github.com/hexojs/hexo-generator-index/workflows/Tester/badge.svg?branch=master)](https://github.com/hexojs/hexo-generator-index/actions?query=workflow%3ATester)
[![NPM version](https://badge.fury.io/js/hexo-generator-index.svg)](https://www.npmjs.com/package/hexo-generator-index)
[![Coverage Status](https://img.shields.io/coveralls/hexojs/hexo-generator-index.svg)](https://coveralls.io/r/hexojs/hexo-generator-index?branch=master)

Index generator for [Hexo].

It generates an archive of posts on your homepage, according to the `index` or `archive` layout of your theme.

## Installation

```bash
npm install hexo-generator-index --save
```

## Options

Add or modify the following section to your root `_config.yml` file.

```yaml
index_generator:
  path: ""
  per_page: 10
  order_by: -date
  pagination_dir: page
  layout: ["index", "archive"]
```

- **path**: Root path for your blog's index page.
  - default: `""`
- **per_page**: Posts displayed per page.
  - default: [`config.per_page`](https://hexo.io/docs/configuration.html#Pagination) as specified in the official Hexo docs (if present), otherwise `10`
  - `0` disables pagination.
- **order_by**: Posts order.
  - default: `-date` (date descending)
- **pagination_dir**: URL format.
  - default: `page`
  - e.g. set `awesome-page` makes the URL ends with `awesome-page/<page number>` for second page and beyond.
- **layout**: custom layout.
  - defalut: `["index", "archive"]`

## Usage

The `sticky` parameter in the post [Front-matter](https://hexo.io/docs/front-matter) will be used to pin the post to the top of the index page. Higher `sticky` means that it will be ranked first.

```yml
---
title: Hello World
date: 2013/7/13 20:46:25
sticky: 100
---
```

## Note

If your theme define a non-archive `index` layout (e.g. About Me page), this plugin would follow that layout instead and not generate an archive. In that case, use [hexo-generator-archive](https://github.com/hexojs/hexo-generator-archive) to generate an archive according to the `archive` layout.

## License

MIT

[Hexo]: https://hexo.io/
