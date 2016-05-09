call plug#begin('~/mydotfiles/vim/plugged')

" Navigation
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'

" Util
Plug 'vim-airline/vim-airline'
Plug 'rking/ag.vim'
Plug 'skwp/greplace.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'duggiefresh/vim-easydir'
Plug 'tpope/vim-surround'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'scrooloose/nerdcommenter'

" Templating
Plug 'MarcWeber/vim-addon-mw-utils' | Plug 'tomtom/tlib_vim' | Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'                " Optional Snipmate snipits
Plug 'tobyS/vmustache' | Plug 'tobyS/pdv'


" Theme
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline-themes'

" Elixir
Plug 'elixir-lang/vim-elixir'

" Git
Plug 'airblade/vim-gitgutter', { 'for': 'php' }

" PHP
Plug '2072/PHP-Indenting-for-VIm', { 'for': 'php' }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }

" Vagrant
Plug 'hashivim/vim-vagrant'

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" Deoplete
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

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
