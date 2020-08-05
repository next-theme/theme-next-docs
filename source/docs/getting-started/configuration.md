---
title: Configuration
description: NexT User Docs – Starting to Use – Configuration
---

How to configure Hexo and NexT? The traditional approach is to store some options in {% label info@site config file %} and other options in {% label primary@theme config file %}. This approach is applicable, but it is not smooth to update NexT theme from pulling or downloading new releases.

At present, NexT encourages users to use the Alternate Theme Config. It's a feature of Hexo and the documentation is here: [Hexo Configuration](https://hexo.io/docs/configuration.html#Using-an-Alternate-Config).

This tutorial shows you how to configure NexT using Alternate Theme Config. Please choose only one of the following solutions and resume next steps.

### `_config.[name].yml`

With this way, all your configurations locate in config file `/_config.[name].yml`. Replace `[name]` with the value of `theme` option in {% label info@site config file %}, e.g. `next`.

#### Usage

1. Please ensure you are using Hexo 5.0 (or later).
2. Create a config file in site's root directory, e.g. `_config.next.yml`.
3. Copy needed NexT theme options from {% label primary@theme config file %} into this config file. If it is the first time to install NexT, then copy the whole configuration file by the following command:
    ```bash
    # Installed through npm
    cp node_modules/hexo-theme-next/_config.yml _config.next.yml
    # Installed through Git
    cp theme/next/_config.yml _config.next.yml
    ```

### `theme_config`

With this way, all your configurations locate in main {% label info@site config file %}. You don't need to edit {% label primary@theme config file %} or create any new files. But you need to **[keep up indentation](/docs/troubleshooting.html#Keep-Up-Indentation)** within `theme_config` option.

#### Usage

1. Please confirm that the `/source/_data/next.yml` file does not exist (backup and delete it if exists).
2. Copy needed NexT theme options from {% label primary@theme config file %} into {% label info@site config file %}, then
    2.1. Move all this settings to the right with two spaces (in Visual Studio Code: select all strings, <kbd>CTRL</kbd> + <kbd>]</kbd>).
    2.2. Add `theme_config:` parameter above all this settings.

### `next.yml` (Deprecated)

Older versions of NexT theme also provide another configuration method, which is to place the theme configuration in the `/source/_data/next.yml` file. This method is deprecated, please use `_config.next.yml` instead. If the `/source/_data/next.yml` file exists, move it to the Hexo root directory and rename it to `_config.next.yml`.
