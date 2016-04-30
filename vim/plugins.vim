filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/mydotfiles/vim/bundle/Vundle.vim
call vundle#begin('~/mydotfiles/vim/bundle')

Plugin 'VundleVim/Vundle.vim'

" Navigation
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

" Util
Plugin 'vim-airline/vim-airline'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Bundle 'edkolev/tmuxline.vim'
Bundle 'edkolev/promptline.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'duggiefresh/vim-easydir'
Plugin 'tpope/vim-surround'

" Snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'      " Required for Snipmate
Plugin 'tomtom/tlib_vim'                   " Required for Snipmate
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'                " Optional Snipmate snipits

" Theme
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline-themes'

" Elixir
Plugin 'elixir-lang/vim-elixir'

" PHP
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'airblade/vim-gitgutter'

" Vagrant
Plugin 'hashivim/vim-vagrant'

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

