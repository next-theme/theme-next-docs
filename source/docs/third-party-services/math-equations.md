---
title: Math Equations
description: NexT User Docs – Third-party Plugins Integration – Math Equations
mathjax: true
---

### Settings

```yml NexT config file
# Math Formulas Render Support
math:
  # Default (false) will load mathjax / katex script on demand.
  # That is it only render those page which has `mathjax: true` in front-matter.
  # If you set it to true, it will load mathjax / katex script EVERY PAGE.
  every_page: false

  mathjax:
    enable: true
    # Available values: none | ams | all
    tags: none

  katex:
    enable: false
    # See: https://github.com/KaTeX/KaTeX/tree/master/contrib/copy-tex
    copy_tex: false
```

The `every_page` option controls whether to render Math Equations every page.

- **`false`** → The math rendering engine will load on demand. It will only render those posts which have `mathjax: true` in their front-matter.
- `true` → The math rendering engine will load on every page. Even if the page does not contain any math formulas.

{% note default **Examples with `every_page: false` option** %}

- This post will render the Math Equations

    ```md
    ---
    title: Will Render Math
    mathjax: true
    ---
    ```

- This post will NOT render the Math Equations

    ```md
    ---
    title: Not Render Math
    mathjax: false
    ---
    ```

- This post will NOT render the Math Equations either

    ```md
    ---
    title: Not Render Math Either
    ---
    ```

{% endnote %}

The `mathjax` and `katex` options are used to set the rendering engine. Please read the detailed document below.

### Render Engines

For now, NexT provides two rendering engines for displaying Math Equations: [MathJax](https://www.mathjax.org) and [KaTeX](https://katex.org).

- MathJax is a JavaScript display engine for mathematics that works in all browsers. It is highly modular on input and output. Use MathML, TeX, and ASCIImath as input and produce HTML+CSS, SVG, or MathML as output.
- [KaTeX is a faster](https://www.intmath.com/cg5/katex-mathjax-comparison.php) math rendering engine compared to MathJax 3. And it could survive without JavaScript. But, for now [KaTeX supports less features](https://github.com/KaTeX/KaTeX/wiki/Things-that-KaTeX-does-not-(yet)-support) than MathJax. Here is a list of [TeX functions supported by KaTeX](https://katex.org/docs/supported.html).

Firstly, you need to choose a math rendering engine and turn on `enable` for it in {% label primary@NexT config file %}. Then you need to install the **corresponding Hexo Renderer** to fully support the display of Math Equations - Only turn on `enable` **may not let you see the displayed equations correctly**.

{% tabs render-engines %}
<!-- tab MathJax -->
**Renderer Choosing**

If you use MathJax to render Math Equations, you can choose [hexo-renderer-pandoc](https://github.com/wzpan/hexo-renderer-pandoc) as the Markdown renderer. It is recommended because it can handle mathematical formulas in markdown documents perfectly.

{% note warning %}
If you are using other renderers, such as [hexo-renderer-marked](https://github.com/hexojs/hexo-renderer-marked), you need to be aware of the conflict between LaTeX and Markdown syntax. For example, an underscore (`_`) may be interpreted as the start of italic text in Markdown, or subscripted mark in TeX. To avoid syntax errors, please use escape characters (`\_`) instead:

```diff
-$\epsilon_0$
+$\epsilon\_0$
-\begin{eqnarray*}
+\begin{eqnarray\*}
-\\
+\\\\
```
{% endnote %}

**Installation**

1. Firstly, set `mathjax` as rendering engine in {% label primary@NexT config file %}.

    ```yml NexT config file
    math:
      ...
      mathjax:
        enable: true
    ```

2. Then you need to uninstall the original renderer `hexo-renderer-marked`, and install `hexo-renderer-pandoc`:

    ```bash
    $ npm un hexo-renderer-marked
    $ npm i hexo-renderer-pandoc
    ```

3. If you are using `hexo-renderer-pandoc` version greater than 5.0.0, you need to set `pandoc.args` in {% label info@Hexo config file %}:

    ```yml Hexo config file
    # config of hexo-renderer-pandoc
    pandoc:
      args:
        - --mathjax
    ```

4. `hexo-renderer-pandoc` requires [pandoc](https://github.com/jgm/pandoc) to be installed, otherwise it will throw an error. Here's [how to install pandoc](https://github.com/jgm/pandoc/blob/master/INSTALL.md).

**Plugins**

All extensions of MathJax are loaded automatically. For example, `mhchem` is a tool for writing beautiful chemical equations easily. It implements the `\ce` and `\pu` chemical equation macros of the LaTeX mhchem package. More information: [MathJax/mhchem Manual](https://mhchem.github.io/MathJax-mhchem/).
<!-- endtab -->

<!-- tab KaTeX -->
**Renderer Choosing**

If you use KaTeX to render Math Equations, you can choose one of the Markdown renderers below:

- [hexo-renderer-markdown-it-plus](https://github.com/CHENXCHEN/hexo-renderer-markdown-it-plus)
- [hexo-renderer-markdown-it](https://github.com/hexojs/hexo-renderer-markdown-it)

**Installation**

1. Firstly, set `katex` as rendering engine in {% label primary@NexT config file %}.

    ```yml NexT config file
    math:
      ...
      katex:
        enable: true
    ```

2. Then you need to uninstall the original renderer `hexo-renderer-marked` and install one of the renderer plugins:

{% subtabs katex-renderer %}
<!-- tab hexo-renderer-markdown-it-plus -->

```bash
npm un hexo-renderer-marked
npm i hexo-renderer-markdown-it-plus
```
<!-- endtab -->

<!-- tab hexo-renderer-markdown-it -->

```bash
npm un hexo-renderer-marked
npm i hexo-renderer-markdown-it
```

If you use `hexo-renderer-markdown-it`, you also need to install `markdown-it-katex`:

```bash
npm i markdown-it-katex
```

And then in {% label info@Hexo config file %} you need to add `markdown-it-katex` as a plugin for `hexo-renderer-markdown-it`:

```yml Hexo config file
# config of hexo-renderer-markdown-it
markdown:
  render:
    html: true
    xhtmlOut: false
    breaks: true
    linkify: true
    typographer: true
    quotes: '“”‘’'
  plugins:
    - markdown-it-katex
```
<!-- endtab -->
{% endsubtabs %}

**Plugins**

Copy-tex extension for KaTeX modifies the copy/paste behavior in any browser supporting the Clipboard API so that, when selecting and copying whole KaTeX-rendered elements, the text content of the resulting clipboard renders KaTeX elements as their LaTeX source surrounded by specified delimiters. More information: [Copy-tex extension](https://github.com/KaTeX/KaTeX/tree/master/contrib/copy-tex).

```yml NexT config file
math:
  ...
  katex:
    # See: https://github.com/KaTeX/KaTeX/tree/master/contrib/copy-tex
    copy_tex: true
```

{% note danger %}
**Known Issues**

1. Firstly, please check [Common Issues](https://katex.org/docs/issues.html) of KaTeX.
2. Displayed Math (i.e. ` $$...$$ `) needs to started with new clear line.
    In other words: you must not have any characters (except of whitespaces) **before the opening ` $$ ` and after the ending ` $$ `** ([comment #32](https://github.com/theme-next/hexo-theme-next/pull/32#issuecomment-357489509)).
3. Don't support Unicode ([comment #32](https://github.com/theme-next/hexo-theme-next/pull/32#issuecomment-357489509)).
4. Inline Math (..` $...$ `) must not have white spaces **after the opening ` $ ` and before the ending ` $ `** ([comment #32](https://github.com/theme-next/hexo-theme-next/pull/32#issuecomment-357489509)).
5. If you use math in Heading (i.e. `## Heading`).
    Then in corresponding TOC item it will show the related LaTeX code 3 times ([comment #32](https://github.com/theme-next/hexo-theme-next/pull/32#issuecomment-359018694)).
6. If you use math in your post's title, it will not be rendered ([comment #32](https://github.com/theme-next/hexo-theme-next/pull/32#issuecomment-359142879)).
{% endnote %}
<!-- endtab -->
{% endtabs %}

{% note warning %}
After setting up the math rendering engine or installing / uninstalling the Markdown renderer, please execute `hexo clean`. Run standard Hexo generate, deploy process or start the server to test whether the plugin is working properly:

```bash
hexo clean && hexo g -d
# or hexo clean && hexo s
```

{% endnote %}

{% note warning %}
Except for the required renderer, any other Hexo math plugins are unnecessary and there is no need to manually import any JS or CSS files. If you have installed plugins such as `hexo-math` or `hexo-katex`, they may conflict with the built-in rendering engine of NexT.
{% endnote %}

### Examples

{% note info %}
The following examples are rendered by `mathjax` engine.
{% endnote %}

#### Numbering and Referring Equations in MathJax

In NexT v6.3.0, we have added feature to [automatic equation numbering](https://docs.mathjax.org/en/latest/input/tex/eqnumbers.html) with opportunity to make reference to that equations.

To enable this feature, you need to set `mathjax.tags` to `ams` in {% label primary@NexT config file %}.

```yml
math:
  mathjax:
    enable: true
    # Available values: none | ams | all
    tags: ams
```

And to make the automatic equation numbering work, you have to wrap your LaTeX equations in `equation` environment. Using the plain old style (i.e., wrap an equation with two dollar signs in each side) will not work. How to refer to an equation? Just give a `\label{}` tag and then in your later text, use `\ref{}` or `\eqref{}` to refer it. Using `\eqref{}` is preferred since if you use `\ref{}`, there are no parentheses around the equation number. Below are some of the common scenarios for equation numbering.

#### Simple Equations

For simple equations, use the following form to give a tag,

```latex
$$\begin{equation} \label{eq1}
e=mc^2
\end{equation}$$
```

$$\begin{equation} \label{eq1}
e=mc^2
\end{equation}$$

Then, you can refer to this equation in your text easily by using something like:

```latex
The famous matter-energy equation $\eqref{eq1}$ proposed by Einstein...
```

The famous matter-energy equation $\eqref{eq1}$ proposed by Einstein...

#### Multi-line Equations

For multi-line equations, inside the `equation` environment, you can use the `aligned` environment to split it into multiple lines:

```latex
$$\begin{equation} \label{eq2}
\begin{aligned}
a &= b + c \\
  &= d + e + f + g \\
  &= h + i
\end{aligned}
\end{equation}$$
```

$$\begin{equation} \label{eq2}
\begin{aligned}
a &= b + c \\\\
  &= d + e + f + g \\\\
  &= h + i
\end{aligned}
\end{equation}$$

```latex
Equation $\eqref{eq2}$ is a multi-line equation.
```

Equation $\eqref{eq2}$ is a multi-line equation.

#### Multiple Aligned Equations

We can use `align` environment to align multiple equations. Each of these equations will get its own numbers.

```latex
$$\begin{align}
a &= b + c \label{eq3} \\
x &= yz \label{eq4} \\
l &= m - n \label{eq5}
\end{align}$$
```

$$\begin{align}
a &= b + c \label{eq3} \\\\
x &= yz \label{eq4} \\\\
l &= m - n \label{eq5}
\end{align}$$

```latex
There are three aligned equations: equation $\eqref{eq3}$, equation $\eqref{eq4}$ and equation $\eqref{eq5}$.
```

There are three aligned equations: equation $\eqref{eq3}$, equation $\eqref{eq4}$ and equation $\eqref{eq5}$.

Since `align` in and of itself is a complete equation environment (read [here](https://tex.stackexchange.com/questions/95402/what-is-the-difference-between-aligned-in-displayed-mode-and-starred-align) about the difference between `aligned` and `align` in LaTeX). You do not need to wrap it with `equation` environment.

#### Exclude Equations from Numbering

In the `align` environment, if you do not want to number one or some equations, just use `\nonumber` right behind these equations. Like the following:

```latex
$$\begin{align}
-4 + 5x &= 2 + y \nonumber \\
w + 2 &= -1 + w \\
ab &= cb
\end{align}$$
```

$$\begin{align}
-4 + 5x &= 2 + y \nonumber \\\\
w + 2 &= -1 + w \\\\
ab &= cb
\end{align}$$

#### Use `\tag` to Tag Equations

Sometimes, you want to use more «exotic» style to refer your equation. You can use `\tag{}` to achieve this. For example:

```latex
$$x+1\over\sqrt{1-x^2} \tag{i}\label{eq_tag}$$
```

$$x+1\over\sqrt{1-x^2} \tag{i}\label{eq_tag}$$

```latex
Equation $\eqref{eq_tag}$ use `\tag{}` instead of automatic numbering.
```

Equation $\eqref{eq_tag}$ use `\tag{}` instead of automatic numbering.
