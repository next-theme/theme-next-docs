---
title: Search Services
description: NexT User Docs – Third-party Plugins Integration – Search Services
---

### Algolia Search

NexT provides Algolia search plugin to search your Hexo website content. It should be noted that only turn on `enable` of `algolia_search` in {% label primary@NexT config file %} does not allow you to use the Algolia search correctly. You need to install the corresponding Hexo plugin to index your website on Algolia: [Hexo Algolia](https://github.com/thom4parisot/hexo-algolia) or [Hexo Algoliasearch](https://github.com/LouisBarranqueiro/hexo-algoliasearch).

{% note danger %}
**Known Issues**

1. The latest version of the [Hexo Algolia](https://github.com/thom4parisot/hexo-algolia) plugin removes the content indexing feature, given Algolia's free account limitation.
2. The [Hexo Algoliasearch](https://github.com/LouisBarranqueiro/hexo-algoliasearch) plugin provides content indexing functionality. The same problem exists with `Record Too Big` for Algolia's free account.
{% endnote %}

Follow the steps described below to complete the installation of Algolia search.

{% tabs algolia-search %}
<!-- tab Registration → -->
Register at [Algolia](https://www.algolia.com), you can log in directly using GitHub or Google Account. Upon Customer's initial sign-up for an Account, Customer will have a free, fourteen (14) day evaluation period (the «Evaluation Period») for the Algolia Services commencing on the Effective Date, subject to the limitations on Algolia's website. After that, Algolia offers a free, branded version for up to 10k records and 100k operations per month.

If a tutorial pops up, you can skip it. Go straight to create an `Index` which will be used later.
![Algolia Create Index](/images/algolia-1.png)
<!-- endtab -->

<!-- tab Algolia Config → -->
1. Go to the `API Keys` page and find your credentials. You will need the `Application ID` and the `Search-only API key` in the following sections. The `Admin API key` need to keep confidential. Never store your Admin API Key as `apiKey` in {% label info@Hexo config file %}: it would give full control of your Algolia index to others and you don't want to face the consequences.
![Algolia API Keys](/images/algolia-2.png)

2. In the `API Keys` page, click the `All API Keys` button to switch to the corresponding tab. Then click the `New API Key` button to activate a pop-up box where you can setup authorizations and restrictions with a great level of precision. Enter `addObject`, `deleteObject`, `listIndexes`, `deleteIndex` features in ACL permissions that will be allowed for the given API key. And then click the `Create` button. Copy this newly created key to the clipboard, we call it a `High-privilege API key`.
![Algolia API Keys 2](/images/algolia-3.png)
![Algolia Configuring Records](/images/algolia-4.png)
<!-- endtab -->

<!-- tab Algolia Plugin → -->
Algolia requires users to upload their search index data either manually or via provided APIs. You need to choose one of the following two plugins to install. Both plugins will index your site and upload selected data to Algolia.

{% subtabs algolia-plugin %}
<!-- tab Hexo Algolia -->
Install and configure [Hexo Algolia](https://github.com/thom4parisot/hexo-algolia) in your Hexo directory.

```bash
cd hexo-site
npm install hexo-algolia
```

In your {% label info@Hexo config file %}, add the following configuration and replace the `Application ID`, `Search-only API key` and `indexName` with corresponding fields obtained at Algolia.

```yml Hexo config file
algolia:
  applicationID: "Application ID"
  apiKey: "Search-only API key"
  indexName: "indexName"
```

Run the following command to upload index data, keep a weather eye out the output of the command.

```bash
export HEXO_ALGOLIA_INDEXING_KEY=High-privilege API key # Use Git Bash
# set HEXO_ALGOLIA_INDEXING_KEY=High-privilege API key # Use Windows command line
hexo clean
hexo algolia
```

![Reload Index](/images/algolia-5.png)
<!-- endtab -->
<!-- tab Hexo Algoliasearch -->
Install and configure [Hexo Algoliasearch](https://github.com/LouisBarranqueiro/hexo-algoliasearch) in your Hexo directory.

```bash
cd hexo-site
npm install hexo-algoliasearch
```

In your {% label info@Hexo config file %}, add the following configuration and replace the `Application ID`, `Search-only API key`, `High-privilege API key` and `indexName` with corresponding fields obtained at Algolia.

```yml Hexo config file
algolia:
  appId: "Application ID"
  apiKey: "Search-only API key"
  adminApiKey: "High-privilege API key"
  indexName: "indexName"
  chunkSize: 5000
  fields:
    - content:strip:truncate,0,500
    - excerpt:strip
    - gallery
    - permalink
    - photos
    - slug
    - tags
    - title
```

Run the following command to upload index data, keep a weather eye out the output of the command.

```bash
hexo clean
hexo algolia
```
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

<!-- tab NexT Config -->
In {% label primary@NexT config file %}, turn on `enable` of `algolia_search`. At the same time, you need to **turn off other search plugins** like Local Search. You can also adjust the text in `labels` according to your needs.

```yml NexT config file
# Algolia Search
algolia_search:
  enable: true
  hits:
    per_page: 10
```
<!-- endtab -->
{% endtabs %}

### Local Search

Local search does not require any external 3rd-party services and can be extra indexed by search engines. This search method is recommended for most users.

{% tabs local-search %}
<!-- tab Installation → -->
Install `hexo-generator-searchdb` by executing the following command in {% label info@site root dir %}:

```bash
npm install hexo-generator-searchdb
```
<!-- endtab -->

<!-- tab Hexo Config → -->
Edit {% label info@Hexo config file %} and add following content:

```yml Hexo config file
search:
  path: search.xml
  field: post
  content: true
  format: html
```
<!-- endtab -->

<!-- tab NexT Config -->
Edit {% label primary@NexT config file %} to enable Local Search:

```yml NexT config file
# Local search
# Dependencies: https://github.com/next-theme/hexo-generator-searchdb
local_search:
  enable: true
  # Show top n results per article, show all results by setting to -1
  top_n_per_article: 1
  # Unescape html strings to the readable one.
  unescape: false
  # Preload the search data when the page loads.
  preload: false
```
<!-- endtab -->
{% endtabs %}
