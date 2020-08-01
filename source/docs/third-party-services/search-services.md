---
title: Search Services
description: NexT User Docs – Third-party Service Integration – Search Services
---

### Algolia Search

NexT provides Algolia search plugin for index your Hexo website content. What you should note here is that only turn on `enable` of `algolia_search` in {% label primary@theme config file %} cannot let you use the algolia search correctly, you need to install corresponding [Hexo Algolia](https://github.com/oncletom/hexo-algolia) plugin to seach your website with Algolia. Follow the steps described below to complete the installation of Algolia search.

{% tabs algolia-search %}
<!-- tab Registration → -->
Register at [Algolia](https://www.algolia.com), you can log in directly using GitHub or Google Account. Upon Customer's initial sign-up for an Account, Customer will have a free, fourteen (14) day evaluation period (the «Evaluation Period») for the Algolia Services commencing on the Effective Date, subject to the limitations on Algolia's website. After that, Algolia offers a free, branded version for up to 10k records and 100k operations per month.
<!-- endtab -->

<!-- tab Algolia Config → -->
1. If a tutorial pops up, you can skip it. Go straight to create an `Index` which will be used later.
![Algolia Create Index](/images/docs/algolia-1.png)

2. Go to the `API Keys` page and find your credentials. You will need the `Application ID` and the `Search-only API key` in the following sections. The `Admin API key` need to keep confidential. Never store your Admin API Key as `apiKey` in {% label primary@theme config file %}: it would give full control of your Algolia index to others and you don't want to face the consequences.
![Algolia API Keys](/images/docs/algolia-2.png)

3. In the `API Keys` page, click the `All API Keys` button to switch to the corresponding tab. Then click the `New API Key` button to activate a pop-up box where you can setup authorizations and restrictions with a great level of precision. Enter `addObject`, `deleteObject`, `listIndexes`, `deleteIndex` features in ACL permissions that will be allowed for the given API key. And then click the `Create` button. Copy this newly created key to the clipboard, we call it a `High-privilege API key`.
![Algolia API Keys 2](/images/docs/algolia-3.png)
![Algolia Configuring Records](/images/docs/algolia-4.png)
<!-- endtab -->

<!-- tab Hexo Config → -->
In your {% label info@site config file %}, add the following configuration and replace the `applicationID` & `apiKey` & `indexName` with corresponding fields obtained at Algolia.
```yml hexo/_config.yml
algolia:
  applicationID: 'Application ID'
  apiKey: 'Search-only API key'
  indexName: 'indexName'
  chunkSize: 5000
```
<!-- endtab -->

<!-- tab Algolia Module → -->
1. Algolia requires users to upload their search index data either manually or via provided APIs. Install and configure [Hexo Algolia](https://github.com/oncletom/hexo-algolia) in your Hexo directory. This plugin will index your site and upload selected data to Algolia.

    ```bash
    $ cd hexo-site
    $ npm install hexo-algolia
    ```

2. Run the following command to upload index data, keep a weather eye out the output of the command.

    ```bash
    $ export HEXO_ALGOLIA_INDEXING_KEY=High-privilege API key # Use Git Bash
    # set HEXO_ALGOLIA_INDEXING_KEY=High-privilege API key # Use Windows command line
    $ hexo clean
    $ hexo algolia
    ```

    ![Reload Index](/images/docs/algolia-5.png)
<!-- endtab -->

<!-- tab NexT Config -->
In {% label primary@theme config file %}, turn on `enable` of `algolia_search`. At the same time, you need to **turn off other search plugins** like Local Search. You can also adjust the text in `labels` according to your needs.
```yml next/_config.yml
# Algolia Search
algolia_search:
  enable: true
  hits:
    per_page: 10
  labels:
    input_placeholder: Search for Posts
    hits_empty: "We didn't find any results for the search: ${query}"
    hits_stats: "${hits} results found in ${time} ms"
```

If you want to use a different version from CDN, please follow the instructions below.

You need to **set vendors** in {% label primary@theme config file %}:
```yml next/_config.yml
vendors:
  ...
  # Algolia Search
  # algolia_search: //cdn.jsdelivr.net/npm/algoliasearch@4/dist/algoliasearch-lite.umd.js
  # instant_search: //cdn.jsdelivr.net/npm/instantsearch.js@4/dist/instantsearch.production.min.js
  algolia_search: //cdn.jsdelivr.net/npm/algoliasearch@4/dist/algoliasearch-lite.umd.js
  instant_search: //cdn.jsdelivr.net/npm/instantsearch.js@4/dist/instantsearch.production.min.js
  ...
```
<!-- endtab -->
{% endtabs %}

{% note danger %}
**Known Issues**

1. The latest version of the [Hexo-Algolia](https://github.com/oncletom/hexo-algolia) plugin removes the content indexing feature, given Algolia's free account limitation.
2. The [Hexo-Algoliasearch](https://github.com/LouisBarranqueiro/hexo-algoliasearch) plugin provides content indexing functionality. The same problem exists with `Record Too Big` for Algolia's free account.
{% endnote %}

### Local Search

Local search no need any external 3rd-party services and can be extra indexed by search engines. That search method recommended for most users.

{% tabs local-search %}
<!-- tab Installation → -->
Install `hexo-generator-searchdb` by executing the following command in {% label info@site root dir %}:
```bash
$ npm install hexo-generator-searchdb
```
<!-- endtab -->

<!-- tab Hexo Config → -->
Edit {% label info@site config file %} and add following content:
```yml hexo/_config.yml
search:
  path: search.xml
  field: post
  format: html
  limit: 10000
```
<!-- endtab -->

<!-- tab NexT Config -->
Edit {% label primary@theme config file %} to enable Local Search:
```yml next/_config.yml
# Local search
# Dependencies: https://github.com/next-theme/hexo-generator-searchdb
local_search:
  enable: true
  # If auto, trigger search by changing input.
  # If manual, trigger search by pressing enter key or search button.
  trigger: auto
  # Show top n results per article, show all results by setting to -1
  top_n_per_article: 1
  # Unescape html strings to the readable one.
  unescape: false
  # Preload the search data when the page loads.
  preload: false
```
<!-- endtab -->
{% endtabs %}

### Swiftype Search

{% tabs swiftype-search %}
<!-- tab Sign up → -->
Go to [Swiftype Sign Page](https://swiftype.com/users/sign_up) to sign up.
![Swiftype Sign up](/images/docs/swiftype-1.png)
<!-- endtab -->

<!-- tab Create Search Engine → -->
After signing up create a new search engine and follow instructions.
![Swiftype Create Search Engine](/images/docs/swiftype-2.png)
<!-- endtab -->

<!-- tab Customize and Enable Search → -->
After creating choose `Integrate` → `Install Search` in the menu to customize with instructions. Then click `Active` button finally.
![Swiftype Customize And Enable Search](/images/docs/swiftype-3.png)
<!-- endtab -->

<!-- tab Get Key → -->
Back to `INSTALL CODE` and copy your `swiftype_key`.
![Swiftype Get Key](/images/docs/swiftype-4.png)
<!-- endtab -->

<!-- tab Search Field → -->
Click `Change Configuration` → `Search Field`, then follow the instructions.
![Swiftype Search Field](/images/docs/swiftype-5.png)
<!-- endtab -->

<!-- tab NexT Config -->
Edit {% label primary@theme config file %} and fill section `swiftype_key` with value of your key gets:
```yml next/_config.yml
# Swiftype Search API Key
swiftype_key: xxxxxxxxx
```
<!-- endtab -->
{% endtabs %}
