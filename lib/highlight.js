// scripts/events/lib/highlight.js

const fs = require('fs');
const path = require('path');
const table = require('text-table');

function resolve(name) {
  return path.dirname(require.resolve(`${name}/package.json`));
}

function highlightTheme(name) {
  const file = `${resolve('highlight.js')}/styles/${name}.css`;
  const css = fs.readFileSync(file).toString();
  let rule = '';
  let background = '';
  let foreground = '';
  css.replace(/\.hljs(\s+|,[^{]+)\{(.*?)\}/sg, (match, $1, content) => {
    rule += content;
    return match;
  });
  rule.split('\n').forEach(line => {
    if (line.includes('background:')) background = line.split('background:')[1];
    else if (line.includes('background-color:')) background = line.split('background-color:')[1];
    else if (line.includes('color:')) foreground = line.split('color:')[1];
  });
  return {
    file,
    background,
    foreground
  };
}

function test(color) {
  const reg = /^\s*(#([\da-fA-F]{6}|[\da-fA-F]{3})|black|white);\s*$/;
  return reg.test(color.replace(/\/\*.*?\*\//g, ''));
}

const basename = `${resolve('highlight.js')}/styles/`;
const list = fs.readdirSync(basename).filter(name => name.endsWith('.css')).map(name => {
  let { file, background, foreground } = highlightTheme(name.replace('.css', ''));
  file = file.replace(basename, '');
  background = background.trim();
  foreground = foreground.trim();
  return [file, background, foreground];
}).filter(item => {
  return !(test(item[1]) && test(item[2]));
});

console.log(table(list));
