#!/bin/sh
# ================================================================== #
# Shell script to autoinstall Hexo & NexT & NexT website source.
# ================================================================== #
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo
echo "=============================================================="
echo " Installing Hexo & NPM modules..."
echo "=============================================================="
    npm install

echo
echo "=============================================================="
echo " Checking Hexo version..."
echo "=============================================================="
    npx hexo -v
    npm ls --depth 0

echo
echo "=============================================================="
echo " Strarting Hexo server on \"http://localhost:4000\"..."
echo "=============================================================="
    npx hexo s
