call plug#begin('~/mydotfiles/vim/plugged')

" Navigation
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'

" Util
Plug 'vim-airline/vim-airline'
Plug 'rking/ag.vim'
Plug 'skwp/greplace.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'duggiefresh/vim-easydir'
Plug 'tpope/vim-surround'

" Snipmate
Plug 'MarcWeber/vim-addon-mw-utils' | Plug 'tomtom/tlib_vim' | Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'                " Optional Snipmate snipits

" Theme
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline-themes'

" Elixir
Plug 'elixir-lang/vim-elixir'

" PHP
Plug '2072/PHP-Indenting-for-VIm'
Plug 'airblade/vim-gitgutter'

" Vagrant
Plug 'hashivim/vim-vagrant'

" Add plugins to &runtimepath
call plug#end()

" Brief help
" :PlugInstall [name ...] [#threads]  Install plugins
" :PlugUpdate [name ...] [#threads]   Install or update plugins
" :PlugClean[!]                       Remove unused directories (bang version will clean without prompt)
" :PlugUpgrade                        Upgrade vim-plug itself
" :PlugStatus                         Check the status of plugins
" :PlugDiff                           Examine changes from the previous update and the pending changes
" :PlugSnapshot[!] [output path]      Generate script for restoring the current snapshot of the plugins
