#!/bin/sh
# ============================================================== #
# Shell script to autodeploy Hexo & NexT & NexT website source.
# ============================================================== #
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:$PATH
export PATH

# https://en.wikipedia.org/wiki/ANSI_escape_code
#red='\033[0;31m'
#green='\033[0;32m'
#brown='\033[0;33m'
#blue='\033[0;34m'
#purple='\033[0;35m'
cyan='\033[0;36m'
#lgray='\033[0;37m'
#dgray='\033[1;30m'
lred='\033[1;31m'
lgreen='\033[1;32m'
yellow='\033[1;33m'
lblue='\033[1;34m'
lpurple='\033[1;35m'
lcyan='\033[1;36m'
white='\033[1;37m'
norm='\033[0m'
bold='\033[1m'

echo
echo "=============================================================="
echo " ${yellow}Checking starting directory structure...${norm}"
echo "=============================================================="
    echo "${lcyan}`pwd`${norm}"
    du -sh
    du -sh *

echo
echo "=============================================================="
echo " ${lgreen}Checking Node.js & NPM version...${norm}"
echo "=============================================================="
    echo "${yellow}Node version:${norm} ${lcyan}`node -v`${norm}"
    echo "${yellow}NPM version:${norm} ${lcyan}`npm -v`${norm}"

echo
echo "=============================================================="
echo " ${lgreen}Installing Hexo & NPM modules...${norm}"
echo "=============================================================="
    npm install --silent

echo
echo "=============================================================="
echo " ${yellow}Checking Hexo version...${norm}"
echo "=============================================================="
    hexo() {
        # Retains stderr, but suppresses stdout.
        npx hexo "$@" > /dev/null
    }
    hexo -v
    npm ls --depth 0

echo
echo "=============================================================="
echo " ${lpurple}Generating content for Muse...${norm}"
echo "=============================================================="
    hexo config url https://theme-next.js.org/muse
    hexo config theme_config.scheme Muse
    hexo config theme_config.sidebar.position right
    hexo clean && hexo g

    echo "${lred}`mv -v public muse`${norm}"

echo
echo "=============================================================="
echo " ${lpurple}Generating content for Mist...${norm}"
echo "=============================================================="
    hexo config url https://theme-next.js.org/mist
    hexo config theme_config.scheme Mist
    hexo clean && hexo g

    echo "${lred}`mv -v public mist`${norm}"

echo
echo "=============================================================="
echo " ${lpurple}Generating content for Pisces...${norm}"
echo "=============================================================="
    hexo config url https://theme-next.js.org/pisces
    hexo config theme_config.scheme Pisces
    hexo config theme_config.sidebar.position left
    hexo clean && hexo g

    echo "${lred}`mv -v public pisces`${norm}"

echo
echo "=============================================================="
echo " ${lpurple}Prepairing content for Gemini...${norm}"
echo "=============================================================="
    hexo config url https://theme-next.js.org
    hexo config theme_config.scheme Gemini
    hexo clean && hexo g

    echo "${yellow}robots.txt:${norm}"
    echo "User-agent: *
Disallow: /page/*/
Disallow: /archives/*
Disallow: /muse/*
Disallow: /mist/*
Disallow: /pisces/*
Host: https://theme-next.js.org" > public/robots.txt
    cat public/robots.txt

echo
echo "=============================================================="
echo " ${lpurple}Moving all schemes to public directory...${norm}"
echo "=============================================================="
    echo "${lred}`mv -v muse mist pisces -t public`${norm}"

echo
echo "=============================================================="
echo " ${yellow}Checking 'repo' directory structure...${norm}"
echo "=============================================================="
    echo "${lcyan}`pwd`${norm}"
    du -sh
    du -sh *

echo
echo "=============================================================="
echo " ${yellow}Checking 'public' directory structure...${norm}"
echo "=============================================================="
    cd public
    echo "${lcyan}`pwd`${norm}"
    du -sh
    du -sh *

echo
echo "=============================================================="
echo " ${lgreen}Done. Beginning to deploy site...${norm}"
echo "=============================================================="
