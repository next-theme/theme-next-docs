---
title: Custom Files
description: NexT User Docs – Theme Settings - Custom Files
---

### Custom File Support

PR [#868](https://github.com/theme-next/hexo-theme-next/pull/868) has adjusted the way of customizing the layout or style, canceling the custom files (such as `_custom/custom.styl`) in the original theme directory, and only retaining the way of specifying the custom file in the configuration file.

It is a good practice to separate the custom files from the theme files, so that you can add custom content without modifying the original source code of the theme, and avoid conflicts due to `git merge`.

As with "Next Data files", you can place all custom layouts or styles in a specific location (for example: `hexo/source/_data`). Add the custom file to `hexo/source/_data` and uncomment the content under the `custom_file_path` section in the {% label primary@theme config file %} (`next/_config.yml`)

{% note warning %}
The file name and path must be the same in `custom_file_path`.
{% endnote %}

```
custom_file_path:
  #head: source/_data/head.swig
  #header: source/_data/header.swig
  #sidebar: source/_data/sidebar.swig
  #postMeta: source/_data/post-meta.swig
  #postBodyEnd: source/_data/post-body-end.swig
  #footer: source/_data/footer.swig
  #bodyEnd: source/_data/body-end.swig
  #variable: source/_data/variables.styl
  #mixin: source/_data/mixins.styl
  #style: source/_data/styles.styl
```

You can also to rename all items in `next/languages` files or metas related in your favorite languages using [Data files](/docs/getting-started/configuration).

1. creat a `languages.yml` in `source\_data`.
2. insert following codes: (be careful about the two-space indent)

    ```yaml
    # language
    zh-CN:
      # items
      post:
        copyright:
          # the translation you perfer
          author: 本文博主
    ```

This situation is also available for off-list items. For example, Next uses [Theme Inject](/docs/advanced-settings#Injects) to introduce the commments systems. You can rename the returned value in chinese as followed:

```yaml
# language
zh-CN:
  # items
  post:
    comments:
      valine:  评论
```

{% note info %}
If you still need a custom file in the theme directory, download the [js script](https://gist.github.com/jiangtj/016596bbf9c49f3bd1afbc408d499127) and place it under Hexo or the theme's scripts. (It is not recommended or guaranteed to support this practice in the future)
{% endnote %}

In addition to `custom_file_path`, we also provide a more flexible way to customize, you can read the [Theme Inject](/docs/advanced-settings#Injects) in documentation.
