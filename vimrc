" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Vundle and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.

set nocompatible               " be iMproved
filetype off                   " required!

let need_to_install_plugins=0
if empty(system("grep lazy_load ~/.vim/bundle/Vundle.vim/autoload/vundle.vim"))
  echoerr "Vundle plugins are not installed. Please run ~/.vim/bin/install"
else
  set rtp+=~/.vim/bundle/Vundle.vim

  call vundle#begin()

  Plugin 'VundleVim/Vundle.vim'

  "
  " Colorschemes
  "
  Plugin 'tpope/vim-vividchalk'
  Plugin 'chriskempson/base16-vim'
  Plugin 'molokai'
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'wgibbs/vim-irblack'
  Plugin 'chriskempson/vim-tomorrow-theme'
  Plugin 'candycode.vim'
  Plugin 'Colour-Sampler-Pack'
  Plugin 'flazz/vim-colorschemes'

  "
  " Ruby / Rails
  "
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-endwise'
  Plugin 'ecomba/vim-ruby-refactoring'
  Plugin 'nelstrom/vim-textobj-rubyblock'
  Plugin 'jgdavey/vim-blockle'
  Plugin 'tpope/vim-rbenv'
  Plugin 'tpope/vim-rake'

  "
  " Node.js
  "
  Plugin 'moll/vim-node'
  Plugin 'wavded/vim-stylus'

  "
  " General Editing
  "
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-surround'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'kana/vim-textobj-user'
  Plugin 'Julian/vim-textobj-variable-segment'
  Plugin 'kana/vim-textobj-line'
  Plugin 'thinca/vim-textobj-between'
  Plugin 'tpope/vim-unimpaired'
  Plugin 'sjl/gundo.vim'
  Plugin 'godlygeek/tabular'
  Plugin 'scrooloose/syntastic'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'ervandew/supertab'
  Plugin 'nertzy/j-split'
  Plugin 'matt-royal/diffthese'
  Plugin 'camelcasemotion'
  Plugin 'nertzy/edit-plus'
  Plugin 'brysgo/quickfixfix'
  Plugin 'Lokaltog/vim-easymotion'
  Plugin 'regreplop.vim'
  Plugin 'Peeja/insert_mode_background_color'
  Plugin 'vim-scripts/L9'
  Plugin 'Peeja/vim-cdo'
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'tomtom/tlib_vim'
  Plugin 'garbas/vim-snipmate'
  Plugin 'honza/vim-snippets'
  Plugin 'YankRing.vim'
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'editorconfig/editorconfig-vim'
  Plugin 'tpope/vim-projectionist'
  Plugin 'kien/rainbow_parentheses.vim'
  Plugin 'sbdchd/neoformat'

  "
  " Window Management
  "
  Plugin 'ZoomWin'

  "
  " Searching
  "
  Plugin 'mileszs/ack.vim'
  Plugin 'epmatsw/ag.vim'
  Plugin 'tpope/vim-abolish'
  Plugin 'henrik/vim-qargs'
  Plugin 'ctrlpvim/ctrlp.vim'

  "
  " Navigation
  "
  Plugin 'scrooloose/nerdtree'
  Plugin 'majutsushi/tagbar'

  "
  " Languages
  "
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'pangloss/vim-javascript'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'slim-template/vim-slim'
  Plugin 'nono/vim-handlebars'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'tpope/vim-haml'
  Plugin 'tpope/vim-cucumber'
  Plugin 'quentindecock/vim-cucumber-align-pipes'
  Plugin 'juvenn/mustache.vim'
  Plugin 'fatih/vim-go'
  Plugin 'rosstimson/scala-vim-support'
  Plugin 'guns/vim-clojure-static'
  Plugin 'chrisbra/csv.vim'
  Plugin 'elzr/vim-json'
  Plugin 'briancollins/vim-jst'
  Plugin 'digitaltoad/vim-jade'
  Plugin 'mxw/vim-jsx'
  Plugin 'lambdatoast/elm.vim'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'digitaltoad/vim-pug'
  Plugin 'elixir-lang/vim-elixir'
  Plugin 'luan/vim-concourse'

  "
  " Development Tool Integration
  "
  Plugin 'tpope/vim-fugitive'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'pivotal/tmux-config'
  Plugin 'tpope/vim-dispatch'
  Plugin 'carlobaldassi/ConqueTerm'
  Plugin 'sjl/vitality.vim'
  Plugin 'brysgo/test_server'
  Plugin 'mdelillo/vim-simple-bdd'

  call vundle#end()

  filetype plugin indent on

  syntax on

  runtime! init/**.vim

  if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
  endif
endif
