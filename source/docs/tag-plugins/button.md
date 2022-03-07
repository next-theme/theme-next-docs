---
title: Button
description: NexT User Docs – NexT Supported Tags – Button
---

### Usage

```jinja
{% button url, text, icon [class], [title] %}
```

or

```jinja
{% btn url, text, icon [class], [title] %}
```

- `url`     : Absolute or relative path to URL.
- `text`    : Button text. Required if no icon specified.
- `icon`    : Font Awesome icon name. Required if no text specified.
- `[class]` : *Optional parameter.* Font Awesome class(es): `fa-fw` | `fa-lg` | `fa-2x` | `fa-3x` | `fa-4x` | `fa-5x`
- `[title]` : *Optional parameter.* Tooltip at mouseover.

### Examples

```jinja
{% button #, Text %}
```

{% button #, Text %}

#### Button with text & title

```jinja
{% btn #, Text %}{% btn #, Text & Title,, Title %}
```

{% btn #, Text %}{% btn #, Text & Title,, Title %}

```jinja
{% btn #, Text %} {% btn #, Text & Title,, Title %}
```

{% btn #, Text %} {% btn #, Text & Title,, Title %}

```jinja
{% btn #, Text %}
{% btn #, Text & Title,, Title %}
```

{% btn #, Text %}
{% btn #, Text & Title,, Title %}

#### Button with icon

```jinja
{% btn #,, home fa-5x %}
{% btn #,, home fa-4x %}
{% btn #,, home fa-3x %}
{% btn #,, home fa-2x %}
{% btn #,, home fa-lg %}
{% btn #,, home %}
```

{% btn #,, home fa-5x %}
{% btn #,, home fa-4x %}
{% btn #,, home fa-3x %}
{% btn #,, home fa-2x %}
{% btn #,, home fa-lg %}
{% btn #,, home %}

#### Button with text & icon

```jinja
{% btn #, Text & Icon (buggy), home %}
{% btn #, Text & Icon (fixed width), home fa-fw %}
```

{% btn #, Text & Icon (buggy), home %}
{% btn #, Text & Icon (fixed width), home fa-fw %}

```jinja
{% btn #, Text & Large Icon, home fa-fw fa-lg %}
{% btn #, Text & Large Icon & Title, home fa-fw fa-lg, Title %}
```

{% btn #, Text & Large Icon, home fa-fw fa-lg %}
{% btn #, Text & Large Icon & Title, home fa-fw fa-lg, Title %}

#### Button inside text

```jinja
Lorem {% btn #, Lorem, home fa-fw fa-lg %} ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident {% btn #, Ipsum, home fa-fw fa-lg %}, sunt in culpa qui officia deserunt mollit anim id est laborum.
```

Lorem {% btn #, ipsum, home fa-fw fa-lg %} dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure {% btn #, dolor, home fa-fw fa-lg %} in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non {% btn #, proident, home fa-fw fa-lg %}, sunt in culpa qui officia deserunt mollit anim id est laborum.

#### Button inside other tag

```jinja
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

```jinja
<div class="text-center"><div>{% btn #,, heading %}{% btn #,, fab fa-edge %}{% btn #,, times %}{% btn #,, circle-notch %}</div>
<div>{% btn #,, italic %}{% btn #,, fab fa-scribd %}</div>
<div>{% btn #,, fab fa-google %}{% btn #,, fab fa-chrome %}{% btn #,, fab fa-opera %}{% btn #,, gem fa-rotate-270 %}</div></div>
```

<div class="text-center"><div>{% btn #,, heading %}{% btn #,, fab fa-edge %}{% btn #,, times %}{% btn #,, circle-notch %}</div>
<div>{% btn #,, italic %}{% btn #,, fab fa-scribd %}</div>
<div>{% btn #,, fab fa-google %}{% btn #,, fab fa-chrome %}{% btn #,, fab fa-opera %}{% btn #,, gem fa-rotate-270 %}</div></div>

#### Button with relative URL

```jinja
<div class="text-center">{% btn #, Previous Chapter, arrow-left fa-fw fa-lg, Previous Chapter (Full Image) %} {% btn #, Next Chapter, arrow-right fa-fw fa-lg, Next Chapter (Label) %}</div>
```

<div class="text-center">{% btn /docs/tag-plugins/full-image, Previous Chapter, arrow-left fa-fw fa-lg, Previous Chapter (Full Image) %} {% btn /docs/tag-plugins/label, Next Chapter, arrow-right fa-fw fa-lg, Next Chapter (Label) %}</div>

#### Button with absolute URL

```jinja
<div class="text-center">{% btn https://github.com, GitHub, fab fa-github fa-fw fa-lg, GitHub %}</div>
```

<div class="text-center">{% btn https://github.com, GitHub, fab fa-github fa-fw fa-lg, GitHub %}</div>
