---
title: NexT v7 Introduced
date: 2019-01-05 09:57:00
---

From this year we will start to development NexT v7. And NexT v6 will not be cutted-out for now. Instead of this, we will continue maintenance for version 6 with simultaneous development of version 7.

## Versions Difference

What changes planned in that versions? Good question, here they are:

* Development (**v7**) mean → all **bugfixes**, **optimizations** and **features** will be added in this version.
* Maintenance (**v6**) mean → all **bugfixes** and **optimizations (partially)** only will be added in this version.

As we can see, v6 will be more stable version, unlike of v7. If someone want more stability with less features, recommended to use v6 without any fear about no maintenance for this version in the future.

## Objectives of Version 7

There are several globally targets for NexT v7 changes planned:

* Replace all Nested Strings by Template Literals. This bring to code more readable (example: #557)
* Cut out all possible [3rd-party libraries](https://github.com/theme-next/hexo-theme-next/tree/master/source/lib) for provide minimum weight and maximum generation speed
* Targets, described in [NexT v7.x Roadmap](https://github.com/theme-next/hexo-theme-next/issues/67).

## Branching Models

All last year there are no problem with branching model management. All was simple:

1. We had **master** branch, which at the same time was **development** and **production** branch.
2. **Changes** created in separate temporarily branches were **merged into master** branch via pull request's.
3. **Once per month** we made **tag releases** from current **master** branch.

It was when NexT development came with single version. For now, we must support multiple versions: v6.x and v7.x, what bring some complicated as for maintainers and for users too.

Last several days I thinking a lot about this and it seems the right way was successfully founded. And before understand my decision, let's see on all articles I finded.

1. **A successful Git branching model** → https://nvie.com/posts/a-successful-git-branching-model/
   ![image](https://user-images.githubusercontent.com/16944225/50646627-d8d66e80-0f76-11e9-9d6e-44a3c7a46bb4.png)
2. **Cactus model** → https://barro.github.io/2016/02/a-succesful-git-branching-model-considered-harmful/
   ![image](https://user-images.githubusercontent.com/16944225/50647494-00c6d180-0f79-11e9-9e7b-e39c1af9e84b.png)
3. **OneFlow model** → https://www.endoflineblog.com/oneflow-a-git-branching-model-and-workflow
   ![image](https://user-images.githubusercontent.com/16944225/50647637-60bd7800-0f79-11e9-9216-41754c5d590f.png)
4. **A stable mainline branching model** → http://www.bitsnbites.eu/a-stable-mainline-branching-model-for-git/
   ![image](https://user-images.githubusercontent.com/16944225/50647741-a5491380-0f79-11e9-8166-d7379ce86444.png)
   ![image](https://user-images.githubusercontent.com/16944225/50647766-b8f47a00-0f79-11e9-9f5a-076ceaddd962.png)

So, lets comment this models:

1. A little bit complicated for development. `master` branch keep only releases versions, but we already have tags once per month. And I read some negative responses about this branching model.
2. Only one thing let me get to doubt: rebased branches. Yes, on local branches anyone can do what he's want, but we talking about remote branches, how we will working with them. This model is good, but need some changes to use it.
3. Again: `rebase` + `merge --no--ff` – only with a little difference with allow to minimize merged commits history. Anyway, history will not linear.
4. So, this is similar to our model, with except – releases created not only under the tags, but under branches too. As I understand, branches serve for temporary maintenance multiple software versions. And this model exactly what we need! With some changes, of course...

<!-- more -->
## NexT Branching Model

As described above, most liked branching model is 4. But need to make some changes in this model to be sure with NexT compatibility. Let's write in order:

1. We have **master** branch, which at the same time is **development** and **production** branch (as was before).
2. We turn off **merge** and **rebase** buttons to provide to all pulls be **squashed**. This will allow to get **single commits** from any features / bugfixes or optimizations.
3. We have separated **v6.x** branch and copy only **bugfixes** and some **optimizations** there via **cherry-pick** single commits, which previously we provide.
4. **Once per month** we will make **tag releases** from current **master** branch (it will be **NexT v7**) and from **v6.x** branch (it will be **NexT v6**).

![next-branches-model](https://user-images.githubusercontent.com/16944225/50718831-01a05600-1094-11e9-9ffd-2ebd562104ae.png)

**Only one question here**: do we need to have separated **v7.x** branch to advantage at most cases stable releases?

### Don't push «Update branch» button

To provide linear history, there is no need to update branch from master!

![image](https://user-images.githubusercontent.com/16944225/50719201-3236be80-1099-11e9-9792-aebc891157a6.png)

When we push this button, it's mean we will `merge` `master` branch into current `feature` or `bugfix` branch. As a result, history will not linear. So, **no need to push this button**.

## Some more about Git

### Merge ≠ Rebase. Why?

By default, GitHub merge pulls (Merge button) with `-no-ff` option. What's different with `merge` and `merge -no-ff`?
![image](https://user-images.githubusercontent.com/16944225/50647953-3a4c0c80-0f7a-11e9-851e-eb9f95291730.png)
As we see, it's like `rebase`, but with a little different. What's different?
![image](https://user-images.githubusercontent.com/16944225/50648058-7d0de480-0f7a-11e9-85e2-b0ac48c60371.png)
With `rebase` – rebased branch will be at the head from parent branch. It's like snake-game, but with separated sections.
With `merge` – we get same at the result, but both branches will be in the head.

### Cherry-pick

In simple words: you can copy any commit from any branch and paste this commit to the head of any another branch. In this picture commit F (feature-1) from feature branch was copied into G in master branch with this feature.
![image](https://user-images.githubusercontent.com/16944225/50648361-4ab0b700-0f7b-11e9-9df2-6cd9c5fb098f.png)
