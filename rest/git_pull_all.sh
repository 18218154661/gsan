#!/bin/bash

# 获取 git 仓库路径

find `pwd` -type d -name ".git" > git_dir.txt

sed -i "s/\/.git/\//g" git_dir.txt

# 循环文件中的路径拉取数据

while read LINE

do

git clone "$LINE"

done < git_dir.txt