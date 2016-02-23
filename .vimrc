"----------Misc----------
set nocompatible                  "Compatible mode breaks allot of keys like backspace, tab etc.

so ~/.vim/plugins.vim             "Include Vundle config

set timeoutlen=1000 ttimeoutlen=0 "Remove the delay you get when switching out of Insert mode to Normal mode
set backspace=indent,eol,start    "Make's the backspace behave like in normal editor's
let mapleader = ','               "The default leader is \, changed to ,
set tabstop=4                     "When hitting enter it uses a tab of 4 spaces width
set expandtab                     "Uses spaces for tabs
set shiftwidth=4                  "When hitting tab it uses a tab of 4 spaces width
set updatetime=500                "Reduce vim's default update time of 4000 ms

set linespace=0

set wrap                          "Only word wrap visually
set linebreak                     "Linebreak tells Vim only yo wrap at a character in the breakat option.
set nolist                        "List disables linebreak
set textwidth=0                   "By setting the wrap with to 0 it is disabled
set wrapmargin=0                  "The same as textwidth, except it takes the screenwidth into account

"----------Search----------
set hlsearch                      "Highlight all matched terms.
set incsearch                     "Incrementally highlight, as we type.

"----------Visuals----------
set number                        "Activate's line numbers
syntax enable                     "Activate's syntax colouring
let t_Co=256                      "Use 256 colours.
let base16colorspace=256
colorscheme base16-ocean          "The colour scheme (theme)
set background=dark               "Use the dark background
let g:solarized_termcolors=256
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1

"----------GitGutter----------
"Limit the number of gitgutter signs
let g:gitgutter_max_signs = 500

"Disable gitgutter auto key bindings
let g:gitgutter_map_keys = 0

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
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Make it easy to edit the plugins.vim file
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>

"Make it easy to run Vundle's install and update commands
nmap <Leader>pi :PluginInstall<cr>
nmap <Leader>pu :PluginUpdate<cr>

"This will remove the search highlighting
nmap <Leader><space> :nohlsearch<cr>

"Toggle NERDTree
nmap <C-_> :NERDTreeToggle<cr>

"Change the root working directory to the current file's one
nmap <Leader>cd : :cd %:p:h<CR>:pwd<CR>

"Mapping CtrlP search sumbols
nmap <C-O> :CtrlPBufTag<cr>

"Mapping CtrlP most recently used
nmap <C-E> :CtrlPMRUFiles<cr>

"Disable arrow keys in normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Toggle GitGutter
nmap <Leader>git :GitGutterToggle<cr>

"Toggle Vim-better-whitespace
nmap <Leader>sw :ToggleWhitespace<cr>

"Remove trailing whitespace
nmap <Leader>rw :StripWhitespace<cr>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"----------Plugins----------

"CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'order:ttb'

"NERDTree
let NERDTreeHijackNetrw = 0          "NERDTree will not try to replace Netrw

"AutoSave
let g:auto_save = 1                  "Enable AutoSave on Vim startup
let g:auto_save_no_updatetime = 1    "Do not change the 'updatetime'. This is manually set in this config.
let g:auto_save_in_insert_mode = 0   "Do not save while in insert mode
let g:auto_save_silent = 1           "Do not display the auto-save notification

"Vim-airline
set laststatus=2                     "Makes sure the vim-airline is always displayed
set ttimeoutlen=50                   "Removes a potential delay when switching Vim modes
set noshowmode                       "Removes the default vim status bar

"----------Syntax----------
"autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby

"----------Auto-Commands----------
"Automatically source the Vimrc file on save. The augroup makes sure it's only applied once and prevents vim from freezing
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

