---
title: Troubleshooting
description: NexT User Docs – Troubleshooting
---

### Quick Debug Instructions

**Before submitting an Issue on GitHub, you can follow the steps below to debug:**

If you get an error message from Hexo or your browser:

* If the error comes from a Hexo plugin, such as hexo-word-counter, please submit an Issue to its GitHub repository.
* If the error comes from a third-party service, such as the Gitalk comment system, please submit an Issue to its GitHub repository.
* Otherwise, please search in Google / Stackoverflow / GitHub Issues, or report it to us when submitting a new Issue.

The following steps will help you determine the cause of the problem:

* Execute `hexo clean`, clear the browser cache and purge CDN cache (or disable all CDN services) - This may take some time to take effect.
* Disable browser plug-ins or use other devices and browsers to test, because bugs may only occur in specific browsers.
* Switch to another theme and check if the bug still exists (e.g. default theme landscape).
* Upgrade theme NexT to the latest version.
* Upgrade Hexo and all Hexo plugins to the latest version. You can use tools like [npm-check](https://www.npmjs.com/package/npm-check).
* Upgrade or downgrade Node.js to the latest LTS version.
* Uninstall all non-essential Hexo plugins, or delete `node_modules` and then reinstall all plugins using `npm install --force`.

If you decide to submit an Issue, please answer the following questions based on the Issue template:

* Can you reproduce the problem? Can you reliably reproduce the issue? If not, provide details about how often the problem happens and under which conditions it normally happens.
* Did the problem start happening recently or was this always a problem?
* If the problem started happening recently, can you reproduce the problem in an older version of NexT? What's the most recent version in which the problem doesn't happen? You can download older versions of NexT from [the releases page](https://github.com/next-theme/hexo-theme-next/releases).
* Which version of Node, Hexo and NexT are you using? You can get the exact version by running `node -v`, `hexo version` in your terminal.
* Which packages do you have installed? You can get that list by copying the output from `npm ls --depth 0` in Hexo root directory.

### Keep Up Indentation

When you edit any YAML configs, always need to keep up indents.
Currently, in all Hexo and NexT configuration files parameters uses **2 spaces indents** from parent option.

If you encounter other yaml errors, you can also check if there is a syntax problem in the configuration file or front-matter.

### Set `skip_render`

If you want to skip rendering for some files, you can set `skip_render` in the {% label info@Hexo config file %}.

```yml Hexo config file
skip_render:
  - robots.txt
  - CNAME
```

### Dark Mode not Working

There are 3 prerequisites for Dark Mode to work:
1. Enable `darkmode` in {% label primary@NexT config file %}.
2. Your browser supports `prefers-color-scheme` media query. (Supported by most browsers released after 2020)
3. Enable Dark Mode in your operating system settings.

In some operating systems, such as macOS, you can configure to enable dark mode at night. In other operating systems, the default color scheme is light, so you need to turn on Dark Mode in the system settings manually.

### TOC Issues

Do not write a skip-level heading in the post. For example, a third-tier heading `###` followed by a `#####` is not recommended.
See: https://github.com/theme-next/hexo-theme-next/issues/882

If you are using `hexo-renderer-markdown-it`, it's recommended to install `markdown-it-named-headings` to make the TOC work correctly.

```bash
npm install markdown-it-named-headings
```

See: https://github.com/theme-next/hexo-theme-next/issues/1168
Here is the [Pull Request with bugfix for default config](https://github.com/hexojs/hexo-renderer-markdown-it/pull/90) of `hexo-renderer-markdown-it` plugin.

### Favicon Set but Doesn't Work

Put your `favicon` under {% label info@site's %} `source` dir. If you find that your Favicon doesn't work, please clean your browser's cache first and then visit your Favicon's URL directly, which should be `http(s)://your-domain.com/favicon.ico`.

{% note warning %}
If your site is in a subdirectory please set it to `favicon: favicon.ico`.
{% endnote %}
