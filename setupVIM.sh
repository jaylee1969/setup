#!/bin/bash
# get vim plugin files and .vimrc files from github

# Install pathogen.vim to simplify deployment of vim plugins
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -Sso ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
# Install SnipMate.vim
cd ~/.vim/bundle
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/garbas/vim-snipmate.git
# Install surround.vim
git clone https://github.com/tpope/vim-surround.git
# Install l9.vim
git clone https://github.com/vim-scripts/L9.git
# Install fuzzy finder
git clone https://github.com/vim-scripts/FuzzyFinder.git
# Install example snippets files
git clone https://github.com/honza/vim-snippets.git
# Install MatchTagAlways
git clone https://github.com/Valloric/MatchTagAlways.git

# install custom vim environment
cd ~
git clone https://github.com/jaylee1969/mydotfiles.git
ln -sf mydotfiles/.vimrc .
