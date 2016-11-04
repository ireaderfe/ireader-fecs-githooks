#!/bin/sh
cd ..
git clone https://github.com/ireaderfe/ireader-fecs-githooks.git
echo "拷贝文件...."

root=$(cd `dirname $0`; pwd)
gitPath=$root"/.git/"

if [ ! -d "$gitPath" ]; then
    echo "非git仓库，退出"
else
    cd fecs-git-hooks
    cp -f hooks/pre-commit ../.git/hooks/
    cp -f .fecsrc ../
    cd ..
    echo "pre-commit更新完成"
    echo ".fecsrc配置文件更新完成"
    
fi

rm -rf ireader-fecs-githooks
