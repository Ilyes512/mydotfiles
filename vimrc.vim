"----------Misc----------

if !has('nvim')
    set nocompatible              "Compatible mode breaks allot of keys like backspace, tab etc.
    set ttyfast                   "Send more characters for redraws
    set ttymouse=xterm2
endif

so ~/mydotfiles/vim/plugins.vim   "Include Vundle config

let mapleader = ','               "The default leader is '\'
set ttimeout                      "Remove the delay you get when switching out of 'Insert'-mode to 'Normal'-mode
set timeoutlen=1000
set updatetime=500                "Reduce vim's default update time of 4000 ms
set mouse=a                       "Enable mouse use in all modes
set nowrap                        "Dont wrap long lines
set scrolloff=1                   "Stay x amount of rows from the top/bottom when scrolling
set sidescroll=5                  "Stay x chars from the left or the right
set sidescrolloff=1               "When scrolling horizontally, do so by a number of x chars
set noerrorbells visualbell t_vb= "This should prevent vim from emitting any terminal 'bell' sounds
set clipboard=unnamed             "This should link vim's yank to system clipbard (needs more research)
filetype plugin on
filetype plugin indent on         "File-type based indentation
set wildmenu                      "Enhenced completion
set autoread                      "Reload file if changed outside of vim, while not changed in Vim
set history=1000                  "Set the Vim commandline history to x
set showcmd                       "Display the input for the next command
set tags+=tags,tags.vendor        "Define the tags files
set ignorecase                    "Searching is not case sensitive
set lazyredraw

"---------Autoreload changed files-----------

" Reload when entering the buffer or gaining focus
au FocusGained,BufEnter * :silent! !
" Save when exiting the buffer or losing focus
au FocusLost,WinLeave * :silent! w

"---------Spacing & Wrapping-----------

set autoindent
set backspace=2                    "Make's the backspace behave like in normal editor's
set tabstop=8                      "The maximum width of a tab
set shiftwidth=4                   "The size of a tab in spaces
set softtabstop=0                  "When non-zero it will insert a combination of spaces and tabs to simulate tab stop
set expandtab                      "Uses spaces for tabs
set smarttab                       "Auto insert spaces or tabs when going to a new line
"set wrap                          "only word wrap visually
"set linebreak                     "linebreak tells vim only yo wrap at a character in the breakat option.
"set nolist                        "List disables linebreak
"set textwidth=0                   "By setting the wrap with to 0 it is disabled
"set wrapmargin=0                  "The same as textwidth, except it takes the screenwidth into account

"----------Search----------

set hlsearch                      "Highlight all matched terms.
set incsearch                     "Incrementally highlight, as we type.

"----------Visuals----------

set number                                "Activate's line numbers
syntax on                                 "Activate's syntax colouring
set ruler                                 "Always show the line and column number
let t_Co=256                              "Use 256 colours.
let base16colorspace=256
colorscheme darkspace                     "The colour scheme (theme)
set background=dark                       "Use the dark background
set list listchars=tab:»·,trail:·,nbsp:·  "Show marks for trailing whitespace
set textwidth=110                         "Set the textwidth to <int> and show a line
set colorcolumn=+2
"Choose different colors for the linenumbers
highlight LineNr ctermbg=bg

"----------Split Management----------

set splitright                    "Make split default to below
set splitbelow                    "Make vsplit default to the right
"Easier mappings for navigating splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

"----------Mappings----------

"Make it easy to edit the .vimrc file
nmap <Leader>ev :tabedit ~/mydotfiles/vimrc.vim<cr>
"Make it easy to edit the plugins.vim file
nmap <Leader>ep :tabedit ~/mydotfiles/vim/plugins.vim<cr>

"This will remove the search highlighting
nmap <Leader><space> :nohlsearch<cr>

"Change the root working directory to the current file's one
nmap <Leader>cd : :cd %:p:h<CR>:pwd<CR>

"Disable arrow keys in normal mode
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
vnoremap <Up> <NOP>
vnoremap <Down> <NOP>
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>

"Allow using jj to return to normal mode
imap jj <Esc>

"Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"Search with ctags
nmap <Leader>f :tag<space>
"Refresh ctags
nmap <Leader>r :!ctags -R --exclude=vendor --exclude=node_modules<cr>
nmap <Leader>rv :!ctags -R -f tags.vendor vendor<cr>

"----------Plugins----------

"**Vim-Plug**
autocmd FileType vim nmap <Leader>pi :PlugInstall<cr>
autocmd FileType vim nmap <Leader>pu :PlugUpdate<cr>
autocmd FileType vim nmap <Leader>pc :PlugClean<cr>

"**CtrlP**
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'order:ttb'
let g:ctrlp_map = '<Leader>p'
"Mapping CtrlP search sumbols
nmap <Leader>i :CtrlPBufTag<cr>
"Mapping CtrlP most recently used
nmap <Leader>e :CtrlPMRUFiles<cr>

"**NERDTree**
let NERDTreeHijackNetrw = 0          "NERDTree will not try to replace Netrw
"Toggle NERDTree
nmap <silent> <C-_> :NERDTreeToggle<cr>

"**Vim-airline**
set laststatus=2                               "Makes sure the vim-airline is always displayed
set ttimeoutlen=50                             "Removes a potential delay when switching Vim modes
set noshowmode                                 "Removes the default vim status bar
let g:airline#extensions#tabline#enabled = 1   "Enables airline styled tabs
let g:airline#extensions#tmuxline#enabled = 0  "Dont auto-theme the tmuxline
let g:airline_theme = 'tomorrow'
let g:airline_powerline_fonts = 1

"**Tmuxline**
let g:tmuxline_preset = {
  \ 'a'        : '#S',
  \ 'b'        : ['#I:#P', '#F'],
  \ 'win'      : '#I| #W',
  \ 'cwin'     : '#I| #W',
  \ 'x'        : '#(battery -pt -g=#eff1f5 -m=#ebcb8b -w=#bf616a)',
  \ 'y'        : ['%d-%b-%Y %H:%M'],
  \ 'z'        : ['#(whoami)', '#h'],
  \ 'options'  : {'status-justify' : 'left'},
  \ }

let g:tmuxline_theme = {
  \ 'a'    : [ 19, 4, 'bold' ],
  \ 'b'    : [ 20, 19 ],
  \ 'c'    : [ 20, 18 ],
  \ 'x'    : [ 20, 18 ],
  \ 'y'    : [ 20, 19 ],
  \ 'z'    : [ 19, 4 ],
  \ 'win'  : [ 20, 18 ],
  \ 'cwin' : [ 19, 4 , 'bold' ],
  \ 'bg'   : [ 20, 18 ],
  \ }

"**GitGutter**
let g:gitgutter_enabled = 0                        "Disable gitgutter by default
let g:gitgutter_max_signs = 500                    "Limit the number of gitgutter signs
let g:gitgutter_map_keys = 0                       "Disable gitgutter auto key bindings
let g:gitgutter_override_sign_column_highlight = 0 "Tell gitgutter to leave the column hightlighting alone
if exists('')                                      " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1           "Always show the gitgutter column even when there are no git changes
endif
"Toggle GitGutter
nmap <Leader>git :GitGutterToggle<cr>
"Change the column's background color
highlight SignColumn ctermbg=bg
"Change the background colors for the four different git signs
highlight GitGutterAdd ctermbg=bg
highlight GitGutterChange ctermbg=bg
highlight GitGutterDelete ctermbg=bg
highlight GitGutterChangeDelete ctermbg=bg

"**Better White Space**
"Toggle Vim-better-whitespace
nmap <Leader>tw :ToggleWhitespace<cr>
"Strip trailing whitespace
nmap <Leader>sw :StripWhitespace<cr>

"**VIm PHP Namespace**
" Add class to 'use' at the top
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

" Expand class to fully qualified class
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

" Sort namespaces
autocmd FileType php inoremap <Leader>ns <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>ns :call PhpSortUse()<CR>

"**PHP-VIm**
"!See Auto-Commands section for the rest!
function! PhpSyntaxOverride()
  hi! def link phpDocTags phpKeyword
  hi! def link phpDocParam phpType
endfunction

"**VIm-PHP-CS-Fixer**
let g:php_cs_fixer_level = "all"                  " which level ? Needs to be 'all' if you want to use config file
let g:php_cs_fixer_config_file = $HOME . "/mydotfiles/php_cs.php"
let g:php_cs_fixer_enable_default_mapping = 0     " Enable the default mappings
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
nnoremap <silent><leader>pcd :wa \| call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :update \| call PhpCsFixerFixFile()<CR>
nnoremap <silent><leader>ld :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>l :call PhpCsFixerFixFile()<CR>

"**Vim-Tmux-Navigator**
" This is a temp fix for: https://github.com/neovim/neovim/issues/2294
" Also see this comment: https://github.com/neovim/neovim/issues/2294#issuecomment-78045837
if has('nvim')
  "nmap <bs> :<C-U>TmuxNavigateLeft<cr>
  let g:tmux_navigator_no_mappings = 1
  nnoremap <silent> <C-J> :TmuxNavigateDown<cr>
  nnoremap <silent> <C-K> :TmuxNavigateUp<cr>
  nnoremap <silent> <C-L> :TmuxNavigateRight<cr>
  nnoremap <silent> <C-H> :TmuxNavigateLeft<cr>
  nnoremap <silent> <C-\\> :TmuxNavigatePrevious<cr>
endif

"**Deoplete**
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab>   pumvisible() ? "\<C-N>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<C-P>" : "\<s-tab>"

"**UltiSnips**
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-S>"
let g:UltiSnipsJumpForwardTrigger="<C-F>"
let g:UltiSnipsJumpBackwardTrigger="<C-B>"
" :UltiSnipsEdit will split vertically
let g:UltiSnipsEditSplit="vertical"

"**Emmet**
let g:user_emmet_leader_key='<C-E>'

"**PHP-Documentor-for-VIm**
let g:pdv_template_dir = $HOME . "/mydotfiles/vim/plugged/pdv/templates"
nnoremap <Leader>d :call pdv#DocumentCurrentLine()<CR>

"**Tagbar**
nmap <Leader>t :TagbarToggle<CR>

"**Neomake**
let g:neomake_php_phpcs_args_standard="PSR2"

"----------The Silver Searcher----------
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor\ --skip-vcs-ignores

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g "" --skip-vcs-ignores'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  " Setup ag for :Gsearch
  let g:grep_cmd_opts = '--line-numbers --noheading'
endif

nnoremap \ :Ag<SPACE>

"----------Local config----------
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

"----------Auto-Commands----------
"Neomake
autocmd! BufWritePost * Neomake

"Phpcd
"autocmd FileType php setlocal omnifunc=phpcd#CompletePHP

"Automatically source the Vimrc file on save. The augroup makes sure it's only applied once and prevents vim from freezing
augroup autosourcing
  autocmd!
  autocmd BufWritePost vimrc.vim source %
augroup END

"**PHP-VIm**
augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

" Notes
" - zz will center the screen
" - zt will move the screen to the top
" - zb will move the screen to the bottom
" - <C-D> will scroll the screen down
" - <C-U> will scroll the screen up
" - <C-]> will try to find the class/method/property trough ctags
" - When searching with ctags you can go to the next with ":tn",
"   go to the previous with ":tp" or see a list with ":ts"
" - In normal mode you can replace the inside of (), "", [] etc. with
"   "ci)", 'ci"' and "ci]". Use "ca" instead if you also want to include
"   the parenthesis (you also use "da" or "di" for deleting).
" - H, L and M will move the cursor to the top, bottom and middle respectively
" - ]m and ]M will move you to the start or end of the next method
" - [m and [M will move you to the previous start or end of the method
" - :copen opens quickfix
" - :grep 'string' / :Ag 'string' search recursively for a string
" - ; and , will move the cursor to the next or previous character respectively after searching for a letter with f
" - :bufdo bd! Close all buffers
" - :wa Write all
" - :qa Close all
" - :x Save and quit
" - :mksession session_file_name.vim Save the open session so that you can get back to your list of open files laterA
" - vim -S session_file_name.vim Restore a session
" - :tab e filepath open a file in a new tab
" - :gt and gT or :tabn and :tabp got to the next tab or the previous tab
" - :Gsearch Search files and show them in a split buffer. Changes are saved with :Greplace
" - <C-6> Toggle between two (last used) files
" - :TmuxlineSnapshot! ~/mydotfiles/tmuxline.conf Regenerate tmuxline
"   theme

" vim:set ft=vim et sw=2:
