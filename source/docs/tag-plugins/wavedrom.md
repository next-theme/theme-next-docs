---
title: WaveDrom
description: NexT User Docs – NexT Supported Tags – WaveDrom
---

### Settings

```yml NexT config file
# WaveDrom tag
wavedrom:
  enable: true
```

### Usage

```jinja
{% wavedrom %}
{% endwavedrom %}
```

### Examples

```jinja
{% wavedrom %}
{ signal : [
  { name: "clk",  wave: "p......" },
  { name: "bus",  wave: "x.34.5x",   data: "head body tail" },
  { name: "wire", wave: "0.1..0." },
]}
{% endwavedrom %}
```

{% wavedrom %}
{ signal : [
  { name: "clk",  wave: "p......" },
  { name: "bus",  wave: "x.34.5x",   data: "head body tail" },
  { name: "wire", wave: "0.1..0." },
]}
{% endwavedrom %}

```jinja
{% wavedrom %}
{ signal: [
  { name: 'A', wave: '01........0....',  node: '.a........j' },
  { name: 'B', wave: '0.1.......0.1..',  node: '..b.......i' },
  { name: 'C', wave: '0..1....0...1..',  node: '...c....h..' },
  { name: 'D', wave: '0...1..0.....1.',  node: '....d..g...' },
  { name: 'E', wave: '0....10.......1',  node: '.....ef....' }
  ],
  edge: [
    'a~b t1', 'c-~a t2', 'c-~>d time 3', 'd~-e',
    'e~>f', 'f->g', 'g-~>h', 'h~>i some text', 'h~->j'
  ],
  config:{skin:'lowkey'}
}
{% endwavedrom %}
```

{% wavedrom %}
{ signal: [
  { name: 'A', wave: '01........0....',  node: '.a........j' },
  { name: 'B', wave: '0.1.......0.1..',  node: '..b.......i' },
  { name: 'C', wave: '0..1....0...1..',  node: '...c....h..' },
  { name: 'D', wave: '0...1..0.....1.',  node: '....d..g...' },
  { name: 'E', wave: '0....10.......1',  node: '.....ef....' }
  ],
  edge: [
    'a~b t1', 'c-~a t2', 'c-~>d time 3', 'd~-e',
    'e~>f', 'f->g', 'g-~>h', 'h~>i some text', 'h~->j'
  ],
  config:{skin:'lowkey'}
}
{% endwavedrom %}

```jinja
{% wavedrom %}
{reg:[
    {bits: 7,  name: 0x07, attr: [
      'VLxU,VLE zero-extended',
      'VLxU,VLE zero-extended, fault-only-first',
      'VLxU sign-extended',
      'VLxU sign-extended, fault-only-first',
    ]},
    {bits: 5,  name: 'vd', attr: 'destination of load', type: 2},
    {bits: 3,  name: 'width'},
    {bits: 5,  name: 'rs1', attr: 'base address', type: 4},
    {bits: 5,  name: 'lumop', attr: [0, 16, 0, 16]},
    {bits: 1,  name: 'vm'},
    {bits: 3,  name: 'mop', attr: [0, 0, 4, 4]},
    {bits: 3,  name: 'nf'},
]}
{% endwavedrom %}
```

{% wavedrom %}
{reg:[
    {bits: 7,  name: 0x07, attr: [
      'VLxU,VLE zero-extended',
      'VLxU,VLE zero-extended, fault-only-first',
      'VLxU sign-extended',
      'VLxU sign-extended, fault-only-first',
    ]},
    {bits: 5,  name: 'vd', attr: 'destination of load', type: 2},
    {bits: 3,  name: 'width'},
    {bits: 5,  name: 'rs1', attr: 'base address', type: 4},
    {bits: 5,  name: 'lumop', attr: [0, 16, 0, 16]},
    {bits: 1,  name: 'vm'},
    {bits: 3,  name: 'mop', attr: [0, 0, 4, 4]},
    {bits: 3,  name: 'nf'},
]}
{% endwavedrom %}
