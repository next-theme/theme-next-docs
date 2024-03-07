---
title: Configuration
description: NexT User Docs – Starting to Use – Configuration
---

How to configure NexT theme? The traditional approach is to edit default theme config file (`themes/next/_config.yml` or `node_modules/hexo-theme-next/_config.yml`) directly. However, the config file will be overwritten when upgrade NexT theme via git or npm, which brings inconvenience to the configuration of the theme.

At present, NexT encourages users to use the Alternate Theme Config. It's a feature of Hexo and the documentation is here: [Hexo Configuration](https://hexo.io/docs/configuration.html#Using-an-Alternate-Config).

This tutorial shows you how to configure NexT using Alternate Theme Config. Please choose only one of the following solutions and resume next steps.

### `_config.next.yml`

With this way, all your theme configurations locate in config file `/_config.[name].yml`. Replace `[name]` with the value of `theme` option in {% label info@Hexo config file %}. For NexT theme, the file name is `_config.next.yml` by default.

#### Usage

1. Please ensure you are using Hexo 5.0 or later.
2. Create the {% label primary@NexT config file %} named `_config.next.yml` in {% label info@site root directory %}.
3. Copy needed NexT theme options from default theme config file into this config file. If it is the first time to install NexT, then copy the whole default theme config file by the following command:

    ```bash
    # Installed through npm
    cp node_modules/hexo-theme-next/_config.yml _config.next.yml
    # Installed through Git
    cp themes/next/_config.yml _config.next.yml
    ```

### `theme_config`

With this way, all your Hexo and NexT configurations locate in main {% label info@Hexo config file %}. You don't need to edit default theme config file or create any new files. But you need to **[keep up indentation](/docs/troubleshooting.html#Keep-Up-Indentation)** within `theme_config` option.

#### Usage

Copy needed NexT theme options from default theme config file into {% label info@Hexo config file %}, then
1. Move all these settings to the right with two spaces indentation (in Visual Studio Code: select all strings, <kbd>CTRL</kbd> + <kbd>]</kbd>).
2. Add `theme_config:` parameter above all this settings.

### `next.yml` (Deprecated)

Older versions of NexT theme also provide another configuration method, which is to place the theme configuration in the `/source/_data/next.yml` file. This method is deprecated, please use `_config.next.yml` instead. If the `/source/_data/next.yml` file exists, move it to the Hexo root directory and rename it to `_config.next.yml`.
