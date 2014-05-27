## This is a constant work in progress

If you wish to use this VIM setup you can clone it to your ~/.vim directory

    git clone git://github.com/rjorgenson/vimfiles.git ~/.vim

or preferrable fork this repo and clone your own git repo, that way you can make and track any changes that you make.

link the included vimrc to your home directory

    ln -s ~/.vim/vimrc ~/.vimrc

populate the git submodules contained (plugins)

    cd ~/.vim && git submodules init && git submodules update

and configure any plugins that require configuration

#### Optional

Create a localized tmp directory for storing backup, swap, and undo files. This directory will be ignored by git.

    mkdir ~/.vim/tmp

## Plugins

Plugins are handles by Vundle. This plugin is installed with the initial git submodules init && git submodules update. After that all plugins can be installed by updating the .vimrc file. Vundle documentation can be found here - https://github.com/gmarik/Vundle.vim

### Command-T

command-t requires ruby be installed on your system and that vim was compiled with ruby support. You can verify that ruby is installed with

    ruby --version

and that vim was compiled with ruby support with

    vim --version

Once you have verified this go into the command-t directory

    cd ~/.vim/bundle/command-t

and compile the program

    rake make

Now just launch vim and <Leader>t (\t) with this config will open the command-t file chooser.

## That's all for now, more to come. Will document the vimrc file at some point, I promise =]
