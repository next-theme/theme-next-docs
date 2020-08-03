---
title: Troubleshooting
description: NexT User Docs – Troubleshooting
---

### Quick Debug Instructions

**Before submitting an Issue on GitHub, you can follow the steps below to debug:**

* If the error comes from a third-party service, such as the Gitalk comment system, please submit an Issue to its GitHub repository.
* Execute `hexo clean`, clear the browser cache and disable all CDN services (e.g. Cloudflare Rocket Loader) - This may take some time to take effect.
* Disable browser plug-ins or use other devices and browsers to test, because bugs may only occur in specific browsers.
* Switch to another theme and check if the bug still exists (e.g. default theme landscape). In other words, prove that this is a bug of NexT, not Hexo.
* Upgrade theme NexT to the latest version.
* Upgrade Hexo and Hexo plugins to the latest version.
* Upgrade or downgrade Node.js to the latest LTS version.
* Uninstall all non-essential Hexo plugins, or delete `node_modules` and then reinstall all plugins using `npm install --force`.

If you get an error message from Hexo or your browser, please search in Google / Stackoverflow / GitHub Issues, or report it to us when submitting a new Issue.

### Keep Up Indentation

When you edit any YAML configs, always need to keep up indents.
Currently, in all Hexo and NexT configuration files parameters uses **2 spaces indents** from parent option.

For example, we want to change NexT scheme from standart `Muse` to `Gemini` and want to use `theme_config` feature with [Alternate Theme Config](/docs/getting-started/configuration.html#theme-config).

{% tabs keep-up-indentation %}
<!-- tab NexT Config → -->
We open {% label primary@theme config file %} and under the «Scheme Settings» section copy next parameters:

```yml next/_config.yml
# ---------------------------------------------------------------
# Scheme Settings
# ---------------------------------------------------------------

scheme: Muse
#scheme: Mist
#scheme: Pisces
#scheme: Gemini
```
<!-- endtab -->

<!-- tab Hexo Config -->
Then we open {% label info@site config file %} and paste these parameters under `theme_config` section:

{% subtabs 2-spaces-indents %}
<!-- tab {% label danger@Nothing Happen %}-->
```yml hexo/_config.yml
theme_config:

#scheme: Muse
#scheme: Mist
#scheme: Pisces
scheme: Gemini
```

Nothing will happen here because indentation not keeped up. Hexo just can't read these parameters because subparameters (children parameters of `theme_config` parameter) does not exist. Let's see [same configuration with indents](#2-spaces-indents-2).
<!-- endtab -->

<!-- tab {% label success@Working Normally %}-->
```yml hexo/_config.yml
theme_config:

  #scheme: Muse
  #scheme: Mist
  #scheme: Pisces
  scheme: Gemini
```

And here Hexo can read these parameters as `theme_config.scheme: Gemini` in same way, as NexT can read `scheme: Gemini` parameter. So, with 2 spaces indents from parent option(s) Hexo will load all NexT parameters and work fine.
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->
{% endtabs %}

### Backtick Code Block in Tags

For Hexo before version 4.0, when backtick code block(s) exists inside other tags (like `blockquote`, `note`, `tabs`), that code block will be generated as «undefined» string in HTML. There are several ways to resolve this:

{% tabs backtick-code-block %}
<!-- tab {% label success@Tagged Code Block %} -->
Instead of [Backtick Code Block](https://hexo.io/docs/tag-plugins#Backtick-Code-Block) you can also use tagged [Code Block](https://hexo.io/docs/tag-plugins#Code-Block).
But in rare cases standard code block can obtain errors inside other tags.
<!-- endtab -->

<!-- tab HTML tags -->
Use HTML tags instead of Hexo tags: `<pre><code>`.
In this case you can't add code syntax highlighting.
<!-- endtab -->

<!-- tab Bugfix for Backtick -->
Here is the [PR with bugfix for backtick code block inside tags](https://github.com/hexojs/hexo/pull/2321) (Submitted in 2016, merged three years later).
So, upgrade to Hexo 4.0 or higher, if you need to use backtick code block inside tags.

{% note danger %}
Sometimes during generate you can see «{% label danger@Error: Unmatched placeholder remains! %}» message.
This mean somewhere in your posts, blocks with tags was commented out with `{% raw %}{#{% endraw %}` and `{% raw %}#}{% endraw %}` symbols:

{% tabs unmatched-placeholder-remains %}
<!-- tab {% label danger@Error %} -->
```
{% raw %}{#
{% label error@Unmatched placeholder remains! %}
#}{% endraw %}
```
<!-- endtab -->

<!-- tab {% label success@Success %} -->
```
{% raw %}
{% label error@Unmatched placeholder remains! %}
{% endraw %}
```
<!-- endtab -->
{% endtabs %}

{% endnote %}
<!-- endtab -->
{% endtabs %}

### TOC Issues

Do not write a skip-level heading in the post. For example, a third-tier heading `###` followed by a `#####` is not recommended.
See: https://github.com/theme-next/hexo-theme-next/issues/882

If you are using `hexo-renderer-markdown-it`, it's recommended to install `markdown-it-named-headings` to make the TOC work correctly.
```bash
npm install markdown-it-named-headings
```
See: https://github.com/theme-next/hexo-theme-next/issues/1168
Here is the [PR with bugfix for default config](https://github.com/hexojs/hexo-renderer-markdown-it/pull/90) of `hexo-renderer-markdown-it` plugin.

### Favicon Set but Doesn't Work

Put your `favicon` under {% label info@site's %} `source` dir. If you find that your Favicon doesn't work, please clean your browser's cache first and then visit your Favicon's URL directly, which should be `http(s)://your-domain.com/favicon.ico`.

{% note warning %}
If your site is in a subdirectory please set it to `favicon: favicon.ico`.
{% endnote %}
