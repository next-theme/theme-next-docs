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

# NexT website repo directory
DIR_NAME="next-source"

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
    alias hexo="npx hexo"
    hexo -v
    npm ls --depth 0

echo
echo "=============================================================="
echo " ${lpurple}Generating content for Muse...${norm}"
echo "=============================================================="
    hexo config url https://theme-next.js.org/muse
    echo "${yellow}Setted url:${norm} ${lcyan}`hexo config url`${norm}"

    hexo config root /muse/
    echo "${yellow}Setted root:${norm} ${lcyan}`hexo config root`${norm}"

    hexo config theme_config.scheme Muse
    echo "${yellow}Setted scheme:${norm} ${lcyan}`hexo config theme_config.scheme`${norm}"

    hexo config theme_config.sidebar.position right
    echo "${yellow}Setted sidebar position:${norm} ${lcyan}`hexo config theme_config.sidebar.position`${norm}"

    hexo config theme_config.back2top.sidebar false
    echo "${yellow}Setted back2top in sidebar:${norm} ${lcyan}`hexo config theme_config.back2top.sidebar`${norm}"

    hexo clean && hexo g --silent
    echo "${lred}`mv -v public muse`${norm}"

echo
echo "=============================================================="
echo " ${lpurple}Generating content for Mist...${norm}"
echo "=============================================================="
    hexo config url https://theme-next.js.org/mist
    echo "${yellow}Setted url:${norm} ${lcyan}`hexo config url`${norm}"

    hexo config root /mist/
    echo "${yellow}Setted root:${norm} ${lcyan}`hexo config root`${norm}"

    hexo config theme_config.scheme Mist
    echo "${yellow}Setted scheme:${norm} ${lcyan}`hexo config theme_config.scheme`${norm}"

    hexo config theme_config.sidebar.position right
    echo "${yellow}Setted sidebar position:${norm} ${lcyan}`hexo config theme_config.sidebar.position`${norm}"

    hexo config theme_config.back2top.sidebar false
    echo "${yellow}Setted back2top in sidebar:${norm} ${lcyan}`hexo config theme_config.back2top.sidebar`${norm}"

    hexo clean && hexo g --silent
    echo "${lred}`mv -v public mist`${norm}"

echo
echo "=============================================================="
echo " ${lpurple}Generating content for Pisces...${norm}"
echo "=============================================================="
    hexo config url https://theme-next.js.org/pisces
    echo "${yellow}Setted url:${norm} ${lcyan}`hexo config url`${norm}"

    hexo config root /pisces/
    echo "${yellow}Setted root:${norm} ${lcyan}`hexo config root`${norm}"

    hexo config theme_config.scheme Pisces
    echo "${yellow}Setted scheme:${norm} ${lcyan}`hexo config theme_config.scheme`${norm}"

    hexo config theme_config.sidebar.position left
    echo "${yellow}Setted sidebar position:${norm} ${lcyan}`hexo config theme_config.sidebar.position`${norm}"

    hexo config theme_config.back2top.sidebar true
    echo "${yellow}Setted back2top in sidebar:${norm} ${lcyan}`hexo config theme_config.back2top.sidebar`${norm}"

    hexo clean && hexo g --silent
    echo "${lred}`mv -v public pisces`${norm}"

echo
echo "=============================================================="
echo " ${lpurple}Prepairing content for Gemini...${norm}"
echo "=============================================================="
    hexo config url https://theme-next.js.org
    echo "${yellow}Setted url:${norm} ${lcyan}`hexo config url`${norm}"

    hexo config root /
    echo "${yellow}Setted root:${norm} ${lcyan}`hexo config root`${norm}"

    hexo config theme_config.scheme Gemini
    echo "${yellow}Setted scheme:${norm} ${lcyan}`hexo config theme_config.scheme`${norm}"

    hexo config theme_config.sidebar.position left
    echo "${yellow}Setted sidebar position:${norm} ${lcyan}`hexo config theme_config.sidebar.position`${norm}"

    hexo config theme_config.back2top.sidebar true
    echo "${yellow}Setted back2top in sidebar:${norm} ${lcyan}`hexo config theme_config.back2top.sidebar`${norm}"

    hexo clean && hexo g --silent

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
echo " ${yellow}Checking '$DIR_NAME' directory structure...${norm}"
echo "=============================================================="
    mkdir -vp $DIR_NAME
    echo "${lred}`mv -v public $DIR_NAME`${norm}"
    cd $DIR_NAME
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
