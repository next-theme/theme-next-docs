const path = require('path');
const fs = require('fs');
const { spawnSync } = require('child_process');

function parse(data) {
  data.sort((a, b) => {
    return new Date(b.created_at) - new Date(a.created_at);
  });
  data.forEach(release => {
    const version = release.tag_name.replace('v', '');
    console.log('Processing version %s', version);
    const filename = path.join(__dirname, `../source/_posts/next-${version.split('.').join('-')}-released.md`);
    if (fs.existsSync(filename)) return;
    const time = release.published_at.replace('T', ' ').replace('Z', '');
    const body = release.body
      .replace(/#(\d{1,4})/g, '[#$1](https://github.com/next-theme/hexo-theme-next/pull/$1)')
      .replace(/([0-9a-f]{7})([0-9a-f]{33})/g, '[$1](https://github.com/next-theme/hexo-theme-next/commit/$1$2)')
      .replace(/\r\n/g, '\n')
      .trim();
    const content = `---
title: NexT ${version} Released
date: ${time}
---

${body}

[Detailed changes for NexT v${version}](https://github.com/next-theme/hexo-theme-next/releases/tag/v${version})
`;
    fs.writeFileSync(filename, content);
  });
  spawnSync('npm', ['version', data[0].tag_name.replace('v', ''), '-m', `Release ${data[0].tag_name}`, '--force'], {
    stdio: "inherit"
  });
}

fetch('https://api.github.com/repos/next-theme/hexo-theme-next/releases', {
  headers: {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36'
  }
})
  .then(res => res.json())
  .then(parse);
