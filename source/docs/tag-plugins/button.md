---
title: Button
description: NexT User Docs – NexT Supported Tags – Button
---

### Usage

```md button.js
{% button url, text, icon [class], [title] %}
<!-- Tag Alias -->
{% btn url, text, icon [class], [title] %}

url     : Absolute or relative path to URL.
text    : Button text. Required if no icon specified.
icon    : Font Awesome icon name (without 'fa-' at the begining). Required if no text specified.
[class] : Font Awesome class(es): fa-fw | fa-lg | fa-2x | fa-3x | fa-4x | fa-5x
          Optional parameter.
[title] : Tooltip at mouseover.
          Optional parameter.
```

### Examples

```md
{% button #, Text %}
```

{% button #, Text %}

#### Button with text & title

```md
{% btn #, Text %}{% btn #, Text & Title,, Title %}
```

{% btn #, Text %}{% btn #, Text & Title,, Title %}

```md
{% btn #, Text %} {% btn #, Text & Title,, Title %}
```

{% btn #, Text %} {% btn #, Text & Title,, Title %}

```md
{% btn #, Text %}
{% btn #, Text & Title,, Title %}
```

{% btn #, Text %}
{% btn #, Text & Title,, Title %}

#### Button with icon

```md
<div>{% btn #,, home fa-5x %}{% btn #,, home fa-5x %}{% btn #,, home fa-5x %}</div>
<div>{% btn #,, home fa-4x %}{% btn #,, home fa-4x %}{% btn #,, home fa-4x %}</div>
<div>{% btn #,, home fa-3x %}{% btn #,, home fa-3x %}{% btn #,, home fa-3x %}</div>
<div>{% btn #,, home fa-2x %}{% btn #,, home fa-2x %}{% btn #,, home fa-2x %}</div>
<div>{% btn #,, home fa-lg %}{% btn #,, home fa-lg %}{% btn #,, home fa-lg %}</div>
<div>{% btn #,, home %}{% btn #,, home %}{% btn #,, home %}</div>
```

<div>{% btn #,, home fa-5x %}{% btn #,, home fa-5x %}{% btn #,, home fa-5x %}</div>
<div>{% btn #,, home fa-4x %}{% btn #,, home fa-4x %}{% btn #,, home fa-4x %}</div>
<div>{% btn #,, home fa-3x %}{% btn #,, home fa-3x %}{% btn #,, home fa-3x %}</div>
<div>{% btn #,, home fa-2x %}{% btn #,, home fa-2x %}{% btn #,, home fa-2x %}</div>
<div>{% btn #,, home fa-lg %}{% btn #,, home fa-lg %}{% btn #,, home fa-lg %}</div>
<div>{% btn #,, home %}{% btn #,, home %}{% btn #,, home %}</div>

#### Button with text & icon

```md
<p>{% btn #, Text & Icon (buggy), home %}
{% btn #, Text & Icon (fixed width), home fa-fw %}</p>
```

<p>{% btn #, Text & Icon (buggy), home %}
{% btn #, Text & Icon (fixed width), home fa-fw %}</p>

```md
<p>{% btn #, Text & Large Icon, home fa-fw fa-lg %}
{% btn #, Text & Large Icon & Title, home fa-fw fa-lg, Title %}</p>
```

<p>{% btn #, Text & Large Icon, home fa-fw fa-lg %}
{% btn #, Text & Large Icon & Title, home fa-fw fa-lg, Title %}</p>

#### Button inside text

```md
Lorem {% btn #, Lorem, home fa-fw fa-lg %} ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident {% btn #, Ipsum, home fa-fw fa-lg %}, sunt in culpa qui officia deserunt mollit anim id est laborum.
```

Lorem {% btn #, ipsum, home fa-fw fa-lg %} dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure {% btn #, dolor, home fa-fw fa-lg %} in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non {% btn #, proident, home fa-fw fa-lg %}, sunt in culpa qui officia deserunt mollit anim id est laborum.

#### Button inside other tag

```md
{% note info %}
{% btn #, Text & Icon, home fa-fw %}

{% btn #,, home, Title %}{% btn #, Text %}

[Link](#)
{% endnote %}
```
{% note info %}
{% btn #, Text & Icon, home fa-fw fa-lg %}

{% btn #,, home fa-lg, Title %}{% btn #, Text %}

[Link](#)
{% endnote %}

#### Button margin

```md
<div class="text-center"><div>{% btn #,, heading %}{% btn #,, fab fa-edge %}{% btn #,, times %}{% btn #,, far fa-circle %}</div>
<div>{% btn #,, italic %}{% btn #,, fab fa-scribd %}</div>
<div>{% btn #,, fab fa-google %}{% btn #,, fab fa-chrome %}{% btn #,, fab fa-opera %}{% btn #,, gem fa-rotate-270 %}</div></div>
```

<div class="text-center"><div>{% btn #,, heading %}{% btn #,, fab fa-edge %}{% btn #,, times %}{% btn #,, far fa-circle %}</div>
<div>{% btn #,, italic %}{% btn #,, fab fa-scribd %}</div>
<div>{% btn #,, fab fa-google %}{% btn #,, fab fa-chrome %}{% btn #,, fab fa-opera %}{% btn #,, gem fa-rotate-270 %}</div></div>

#### Button with relative URL

```md
<div class="text-center">{% btn #, Previous Chapter, arrow-left fa-fw fa-lg, Previous Chapter (Full Image) %} {% btn #, Next Chapter, arrow-right fa-fw fa-lg, Next Chapter (Label) %}</div>
```

<div class="text-center">{% btn /docs/tag-plugins/full-image, Previous Chapter, arrow-left fa-fw fa-lg, Previous Chapter (Full Image) %} {% btn /docs/tag-plugins/label, Next Chapter, arrow-right fa-fw fa-lg, Next Chapter (Label) %}</div>

#### Button with absolute URL

```md
<div class="text-center">{% btn https://github.com/next-theme/hexo-theme-next, NexT, fab fa-github fa-fw fa-lg, NexT source code %}</div>
```

<div class="text-center">{% btn https://github.com/next-theme/hexo-theme-next, NexT, fab fa-github fa-fw fa-lg, NexT source code %}</div>
