---
title: Deployment
description: NexT User Docs – Starting to Use — Deployment
---

There are two main methods for deploying a Hexo site:

1. **Local Deployment**: This traditional method involves generating site files locally by executing Hexo commands, and deploying the website to a server using rsync or git through the appropriate Hexo deployer plugin. This approach requires you to manually handle the deployment process each time you update your site.

2. **Continuous Integration (CI)**: This is a more efficient and automated deployment method. You simply upload your blog's source code to a git repository, and the site is generated and published through an automated process. This method leverages services like GitHub Actions, GitLab CI/CD, or other CI tools to automate the deployment, making updates and management easier and more consistent.

### Local Deployment

1. Modify files locally.
2. Localization testing: `hexo clean && hexo s`.
3. Deployment: `hexo g -d`.

### Continuous Integration

* Edit the file directly online, effective immediately
* Automatic deployment, simultaneous deployment to multiple locations

#### Cloudflare Pages

[Cloudflare Pages](https://pages.cloudflare.com) is a JAMstack platform for frontend developers to collaborate and deploy websites. You can connect your GitHub or GitLab account with Cloudflare Pages. After that, you just need to push your blog source code to the repository, and create a new project in Cloudflare Pages. In the project's settings, you can configure the build settings as shown below.

![Cloudflare Pages](/images/cloudflare-pages.png)

Cloudflare Pages will automatically build and deploy your site.

#### Netlify

[Netlify](https://www.netlify.com) is an all-in-one platform for automating modern web projects. Replace your hosting infrastructure, continuous integration, and deployment pipeline with a single workflow. Integrate dynamic functionality like serverless functions, user authentication, and form handling as your projects grow.

Perhaps you have already found that this website is deployed on Netlify. Checkout `deploy.sh` and `netlify.toml` in [theme-next-docs](https://github.com/next-theme/theme-next-docs) repository for more information.

#### Github Pages

To publish your Hexo site on Github Pages, you need create a GitHub repository and push your local repository to it. Visit your GitHub repository, from the main menu choose Settings > Pages. In then center of your screen you will see this option:

![](/images/github-pages.png)

Change the Source to GitHub Actions. The change is immediate; you do not have to press a Save button.

Create an empty file `.github/workflows/hexo.yaml` in your local repository. Copy and paste the YAML below into the file you created. Change the branch name and other parameters as needed.

```yml .github/workflows/hexo.yaml
# Sample workflow for building and deploying a Hexo site to GitHub Pages
name: Deploy Hexo site to Pages

on:
  # Runs on pushes targeting the default branch
  push:
    branches: [$default-branch]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# Sets permissions of the GITHUB_TOKEN to allow deployment to GitHub Pages
permissions:
  contents: read
  pages: write
  id-token: write

# Allow only one concurrent deployment, skipping runs queued between the run in-progress and latest queued.
# However, do NOT cancel in-progress runs as we want to allow these production deployments to complete.
concurrency:
  group: "pages"
  cancel-in-progress: false

# Default to bash
defaults:
  run:
    shell: bash

jobs:
  # Build job
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3
        with:
          submodules: recursive
      - name: Setup Pages
        id: pages
        uses: actions/configure-pages@v3
      - name: Use Node.js 18.x
        uses: actions/setup-node@v3
        with:
          node-version: "18"
      - name: Install Dependencies
        run: npm install
      - name: Build with Hexo
        run: npx hexo g
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v1
        with:
          path: ./public

  # Deployment job
  deploy:
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    needs: build
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v2
```

Commit the change to your local repository with a commit message of something like "Add workflow", and push to GitHub. GitHub will build and deploy your site automatically. In the future, whenever you push a change from your local repository, GitHub will rebuild your site and deploy the changes.

#### Gitlab CI

[GitLab](https://docs.gitlab.com/ee/ci/) offers a continuous integration service and pages service. If you add a `.gitlab-ci.yml` file to the root directory of your repository, and configure your GitLab project to use a Runner, then each commit or push, triggers your CI pipeline. The `.gitlab-ci.yml` file tells the GitLab runner what to do. By default it runs a pipeline with three stages: build, test, and deploy. You don't need to use all three stages; stages with no jobs are simply ignored. And at the end, your websites will be published on GitLab Host automatically.

1. Add `.gitlab-ci.yml` to the root directory of your repository, and configure it.

    ```yml hexo/.gitlab-ci.yml
    image: node:lts

    before_script:
      # Set TimeZone, eg: Asia/Shanghai
      # - export TZ='Asia/Shanghai'
      # Restore last modified time
      - "git ls-files -z | while read -d '' path; do touch -d \"$(git log -1 --format=\"@%ct\" \"$path\")\" \"$path\"; done"

    pages:
      stage: build
      cache:
        paths:
        - node_modules/
      script:
      - npm install
      - npx hexo deploy
      artifacts:
        paths:
        - public
      only:
      - master
    ```

2. Upload `scaffolds`, `source`, `themes`, `.gitignore`, `.gitlab-ci.yml`, `_config.yml`, and `package.json` to [your Gitlab repository](https://gitlab.com/).

    ```git
    $ git init
    $ ssh -T git@gitlab.com
    $ git remote add origin YOUR-GITLAB-REPO-SSH-LINK
    $ git add .
    $ git commit -m "COMMIT MESSAGE"
    $ git push -u origin master
    ```

Now, your static website is available at `https://yourname.gitlab.io/project` that is similar to GitHub. [More GitLab Pages config in here](https://gitlab.com/help/user/project/pages/index.md).

Of course, you can also publish static website on GitHub Pages or others pages service. There are two ways to configure `.gitlab-ci.yml`:

{% tabs Gitlab CI %}
<!-- tab <code>HTTPS</code> -->

* Get the Access Token: `Settings` → `Developer settings` → `Personal access token` → `Generate new token`. Set access rights according to the actual situation. It should be noted that the access token is only displayed once on this page, and it should be copied, otherwise it can only be regenerated.
* Click `SETTINGS-CI/CD → Variables` in Gitlab, and defined access token as custom variable `GITHUB_ACCESS_TOKEN`. Or set `USERNAME` `PASSWORD` variable for coding repo.
* Configure `.gitlab-ci.yml`: **only add deploy stage at the end of this file**

    ```yml hexo/.gitlab-ci.yml
    github:
      stage: deploy
      script:
      - cd ./public
      - git init
      - git config --global user.name "YOUR-USER-NAME"
      - git config --global user.email "YOUR-EMAIL"
      - git add .
      - git commit -m "gitlab-auto-deploy"
      - git push --force --quiet --set-upstream https://$GITHUB_ACCESS_TOKEN@github.com/username/username.github.io.git master # replace github_access_token
      # - git config http.postBuffer 524288000
      # - git push --force --quiet --set-upstream https://$USERNAME:$PASSWORD@git.coding.net/username/reponame.git master # replace username & password, please escape the password
      only:
      - master
    ```
<!-- endtab -->
<!-- tab <code>SSH</code> -->
Deploy key is a SSH key set in your repo to grant client read-only (as well as r/w, if you want) access to your repo. This method is suitable for most public blog repositories and there are no private sub-modules in the repositories.

* Generate a deploy key

    ```git
    $ ssh-keygen -t rsa -b 4096 -C "{email}" -f ~/.ssh/deploy_key
    ```

* Click `SETTINGS-CI/CD → Variables` in Gitlab, copy the content of private key and defined it as custom variable `DEPLOY_PRIVATE_KEY`.
* Configure `.gitlab-ci.yml`: **only update script in `before_script`**

    ```yml hexo/.gitlab-ci.yml
    before_script:
      # Set TimeZone, eg: Asia/Shanghai
      # - export TZ='Asia/Shanghai'

      - git config --global user.name "YOUR-USER-NAME"
      - git config --global user.email "YOUR-EMAIL"

      # Restore last modified time
      - "git ls-files -z | while read -d '' path; do touch -d \"$(git log -1 --format=\"@%ct\" \"$path\")\" \"$path\"; done"
      # Install ssh-agent if not already installed, it is required by Docker.
      # (change apt-get to yum if you use a CentOS-based image)
      - 'which ssh-agent || ( apt-get update -y && apt-get install openssh-client -y )'
      # Run ssh-agent (inside the build environment)
      - eval $(ssh-agent -s)
      # Add the SSH key stored in SSH_PRIVATE_KEY variable to the agent store
      - ssh-add <(echo "$DEPLOY_PRIVATE_KEY")
      # For Docker builds disable host key checking. Be aware that by adding that
      # you are susceptible to man-in-the-middle attacks.
      # WARNING: Use this only with the Docker executor, if you use it with shell
      # you will overwrite your user's SSH config.
      - mkdir -p ~/.ssh
      - '[[ -f /.dockerenv ]] && echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config'
      # In order to properly check the server's host key, assuming you created the
      # SSH_SERVER_HOSTKEYS variable previously, uncomment the following two lines
      # instead.
      # - mkdir -p ~/.ssh
      # - '[[ -f /.dockerenv ]] && echo "$SSH_SERVER_HOSTKEYS" > ~/.ssh/known_hosts'

      # Install pandoc, eg: v1.19.2.1
      # - wget https://github.com/jgm/pandoc/releases/download/1.19.2.1/pandoc-1.19.2.1-1-amd64.deb
      # - dpkg -i ./pandoc-1.19.2.1-1-amd64.deb

    image: node:lts

    pages:
      cache:
        paths:
        - node_modules/
      script:
      - npm install
      - npx hexo deploy

      artifacts:
        paths:
          - public
      only:
        - master
    ```
<!-- endtab -->
{% endtabs %}

{% note danger %}
Variables are not masked, and their values can be shown in the job logs if explicitly asked to do so. So make sure gitlab pipelines can only be viewed by yourself.
{% endnote %}
