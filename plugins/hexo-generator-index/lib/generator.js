'use strict';

const pagination = require('hexo-pagination');
const path = require('path');

function getIndexPages(indexPath, posts, config) {
  const paginationDir = config.index_generator.pagination_dir || config.pagination_dir || 'page';

  return pagination(indexPath, posts, {
    perPage: config.index_generator.per_page,
    layout: config.index_generator.layout || ['index', 'archive'],
    format: paginationDir + '/%d/',
    data: {
      __index: true
    }
  });
}

module.exports = function (locals) {
  const config = this.config;
  const posts = locals.posts.sort(config.index_generator.order_by);
  posts.data.sort((a, b) => (b.sticky || 0) - (a.sticky || 0));
  const indexPath = config.index_generator.path || '';
  const languages = [].concat(config.language || [])
    .filter(lang => lang != 'default');
  const defaultLang = languages[0] || 'en';

  // Generate index pages for each language
  let indexPages = [].concat.apply(
    [],
    languages.map(lang => getIndexPages(
      path.join(lang, indexPath),
      posts.filter(p => p.lang === lang),
      config))
  );

  // Generate Home Page
  indexPages = indexPages.concat(getIndexPages(
    indexPath,
    config.index_generator.single_lang_index ? posts.filter(p => p.lang === defaultLang) : posts,
    config
  ));
  return indexPages;
};
