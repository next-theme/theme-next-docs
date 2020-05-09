---
title: Caniuse
description: NexT User Docs – NexT Supported Tags – Caniuse
---

### Usage

```md caniuse.js
{% caniuse feature @ periods %}
<!-- Tag Alias -->
{% can feature @ periods %}

feature : Search for the feature you want on https://caniuse.com, then click on the hash sign to the left of the search result heading and you will get the unique name of this feature.
periods : Select the browser versions to display. Supported values: past_1, past_2, past_3, past_4, past_5, current, future_3, future_2, future_1. If this value is empty, the default value 'current' will be used.
```

### Examples

#### Caniuse without periods

```md
{% caniuse fetch %}
```

{% caniuse fetch %}

#### Caniuse with current period

```md
{% caniuse sharedarraybuffer @ current %}
```

{% caniuse sharedarraybuffer @ current %}

#### Caniuse with future periods

```md
{% caniuse loading-lazy-attr @ future_3,future_2,future_1 %}
```

{% caniuse loading-lazy-attr @ future_3,future_2,future_1 %}

#### Caniuse with past periods

```md
{% caniuse link-rel-modulepreload @ past_1,past_2,past_3,past_4,past_5 %}
```

{% caniuse link-rel-modulepreload @ past_1,past_2,past_3,past_4,past_5 %}
