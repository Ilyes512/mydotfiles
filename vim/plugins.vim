filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/mydotfiles/vim/bundle/Vundle.vim
call vundle#begin('~/mydotfiles/vim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chriskempson/base16-vim'
Plugin 'hashivim/vim-vagrant'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'duggiefresh/vim-easydir'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'      " Required for Snipmate
Plugin 'tomtom/tlib_vim'                   " Required for Snipmate
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'                " Optional Snipmate snipits
Bundle 'edkolev/tmuxline.vim'
Bundle 'edkolev/promptline.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

