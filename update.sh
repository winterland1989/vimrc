#! /bin/bash

cd ~/.vim_runtime
rm -rf plugins
mkdir plugins
cat plugins.txt | awk '{print "wget -O "$1" "$2" && unzip -d plugins/ "$1" && mv plugins/"$1"-master plugins/"$1" && rm "$1}' | bash
