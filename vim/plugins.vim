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
Plug 'vim-scripts/TagHighlight'

" Templating
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'

" Theme
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline-themes'

" Elixir
Plug 'elixir-lang/vim-elixir'

" Git
Plug 'airblade/vim-gitgutter', { 'for': 'php' }

" PHP
" PHP Documentor for Vim
Plug 'tobyS/vmustache' | Plug 'tobyS/pdv', { 'for': 'php' }
Plug '2072/PHP-Indenting-for-VIm', { 'for': 'php' }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }
Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }

" JavaScript
Plug 'othree/yajs.vim', { 'for': 'javascript' }

" TypeScript
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }

" Vagrant
Plug 'hashivim/vim-vagrant'

" Ansible
Plug 'pearofducks/ansible-vim', { 'for': 'ansible' }

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" Additional Text Objects
Plug 'vim-scripts/argtextobj.vim'

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
