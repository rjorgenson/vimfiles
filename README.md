## This is a constant work in progress

If you wish to use this VIM setup you can clone it to your ~/.vim directory

    git clone git://github.com/rjorgenson/vimfiles.git ~/.vim

or preferrable fork this repo and clone your own git repo, that way you can make and track any changes that you make.

link the included vimrc to your home directory

    ln -s ~/.vim/vimrc ~/.vimrc

populate the git submodules contained (plugins)

    cd ~/.vim && git submodules init && git submodules update

and configure any plugins that require configuration

## Plugins

Pathogen is already setup by default with this config once you update the git submodules. If you wish to setup any plugins not included the easiest way to do so is to add the git repo for the plugin as a submodule within this git repo

    git submodule add <git-clone-url>
    git submodule init && git submodule update

and then do any needed configurations in ~/.vim/vimrc

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
