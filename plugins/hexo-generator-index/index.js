/* global hexo */

'use strict';

hexo.config.index_generator = Object.assign({
  per_page: typeof hexo.config.per_page === 'undefined' ? 10 : hexo.config.per_page,
  order_by: '-date',
  layout: ['index', 'archive'],
  single_lang_index: false,
  pagenation_dir: 'page',
}, hexo.config.index_generator);

hexo.extend.generator.register('index', require('./lib/generator'));
