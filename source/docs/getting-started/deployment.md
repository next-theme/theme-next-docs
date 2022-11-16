---
title: Deployment
description: NexT User Docs – Starting to Use — Deployment
---

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

This Github Action automating Hexo deployment workflow, to allow you to publish your Hexo site on Github Pages: [hexo-action](https://github.com/sma11black/hexo-action).

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
