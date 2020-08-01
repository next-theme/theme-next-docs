const https = require('https');
const path = require('path');
const fs = require('fs');
const { spawnSync } = require('child_process');

https.get('https://api.github.com/repos/next-theme/hexo-theme-next/releases', {
  headers: {
    'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36'
  }
}, res => {
  let data = '';
  res.on('data', chunk => {
    data += chunk;
  });
  res.on('end', () => {
    if (res.statusCode === 200) {
      data = JSON.parse(data);
      parse(data);
    }
  });
}).on('error', err => {
  console.error('Failded to download release messages.');
  console.log(err);
});

function parse(data) {
  data.sort((a, b) => {
    return new Date(a.created_at) - new Date(b.created_at);
  });
  data.forEach(release => {
    let version = release.tag_name.replace('v', '');
    console.log('Processing version %s', version);
    let filename = path.join(__dirname, `../source/_posts/next-${version.split('.').join('-')}-released.md`);
    if (fs.existsSync(filename)) return;
    let time = release.published_at.replace('T', ' ').replace('Z', '');
    let body = release.body
      .replace(/#(\d{1,4})/g, '[#$1](https://github.com/next-theme/hexo-theme-next/pull/$1)')
      .replace(/([0-9a-f]{7})([0-9a-f]{33})/g, '[$1](https://github.com/next-theme/hexo-theme-next/commit/$1$2)')
      .replace(/\r\n/g, '\n');
    let content = `---
title: NexT ${version} Released
date: ${time}
---

${body}
`;
    fs.writeFileSync(filename, content);
  });
  spawnSync('npm', ['version', data[0].tag_name.replace('v', '')], {
    stdio: "inherit"
  });
}
