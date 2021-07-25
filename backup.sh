#!/bin/bash

STARTDIR="$(pwd)"

PASS=`cat .pass`
DATE=`date '+%Y-%m-%d %H:%M:%S'`

dconf dump /org/gnome/shell/extensions/dash-to-panel/ > dtp_settings
cp -rf ~/.vimrc $STARTDIR
cp -rf ~/.viminfo $STARTDIR
cp -rf ~/.toprc $STARTDIR
cp -rf ~/.tmux $STARTDIR
cp -rf ~/.python_history $STARTDIR
cp -rf ~/.nanorc  $STARTDIR
cp -rf ~/.lesshst $STARTDIR
cp -rf ~/.gitconfig $STARTDIR
cp -rf ~/.bashrc $STARTDIR
cp -rf ~/.bash_profile $STARTDIR
cp -rf ~/.bash_logout $STARTDIR
cp -rf ~/.bash_history $STARTDIR
cp -rf ~/.ssh $STARTDIR

zip -P$PASS -9 -q -r -m ./.ssh.zip ./.ssh
zip -P$PASS -9 -q -r -m ./.tmux.zip ./.tmux

git add .
git commit -a -m "new backup$DATE"
autotag
git push origin master
git push --tags



