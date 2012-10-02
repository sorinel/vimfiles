Quick Tutorial
==============

Backup:

    mkdir ~/vim_backup
    mv ~/.vim ~/vim_backup
    mv ~/.vimrc ~/vim_backup
    mv ~/.gvimrc ~/vim_backup

Install:

    git clone git://github.com/sorinel/vimfiles.git ~/.vim
    ln -s ~/.vim/vimrc  ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Notes
=====
* Add in vimrc only references to the config files locate in ./config directory

* pathogen plugin in used. To add/remove a plugin add/remove the plugin to ./bundle directory
* plugins are in ./bundle directory
* plugins configuration are in ./config/plugin.vim
* plugins are .git submodules from github.com. 

Run:

    git submodule status
    git submodule update

to view submodules status and update them

Used scripts/code from
===========
evilchelu
mislav
tpope
scrooloose

