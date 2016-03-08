"----------Misc----------

set nocompatible                  "Compatible mode breaks allot of keys like backspace, tab etc.

so ~/myvimfiles/vim/plugins.vim   "Include Vundle config

set timeoutlen=1000 ttimeoutlen=0 "Remove the delay you get when switching out of Insert mode to Normal mode
set backspace=indent,eol,start    "Make's the backspace behave like in normal editor's
let mapleader = ','               "The default leader is \, changed to ,
set tabstop=4                     "When hitting enter it uses a tab of 4 spaces width
set expandtab                     "Uses spaces for tabs
set shiftwidth=4                  "When hitting tab it uses a tab of 4 spaces width
set updatetime=500                "Reduce vim's default update time of 4000 ms
set mouse=a                       "Enable mouse use in all modes
set scrolloff=1                   "Stay x amount of rows from the top/bottom when scrolling

"---------Spacing & Wrapping-----------

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
"Choose different colors for the linenumbers
highlight LineNr ctermbg=bg

"----------Gvim----------

set linespace=0
let g:solarized_termcolors=256
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1

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
nmap <Leader>ev :tabedit ~/myvimfiles/vimrc.vim<cr>
"Make it easy to edit the plugins.vim file
nmap <Leader>ep :tabedit ~/myvimfiles/vim/plugins.vim<cr>

"This will remove the search highlighting
nmap <Leader><space> :nohlsearch<cr>

"Change the root working directory to the current file's one
nmap <Leader>cd : :cd %:p:h<CR>:pwd<CR>

"Disable arrow keys in normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"Search with ctags
nmap <Leader>f :tag<space>
"Refresh ctags
nmap <Leader>r :!ctags -R<cr>

"----------Plugins----------

"**Vundle**
"Make it easy to run Vundle's install and update commands
nmap <Leader>pi :PluginInstall<cr>
nmap <Leader>pu :PluginUpdate<cr>

"**CtrlP**
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'order:ttb'
let g:ctrlp_map = '<C-p>'
"Mapping CtrlP search sumbols
nmap <C-M> :CtrlPBufTag<cr>
"Mapping CtrlP most recently used
nmap <C-E> :CtrlPMRUFiles<cr>

"**NERDTree**
let NERDTreeHijackNetrw = 0          "NERDTree will not try to replace Netrw
"Toggle NERDTree
nmap <C-_> :NERDTreeToggle<cr>

"**AutoSave**
let g:auto_save = 1                  "Enable AutoSave on Vim startup
let g:auto_save_no_updatetime = 1    "Do not change the 'updatetime'. This is manually set in this config.
let g:auto_save_in_insert_mode = 0   "Do not save while in insert mode
let g:auto_save_silent = 1           "Do not display the auto-save notification

"**Vim-airline**
set laststatus=2                     "Makes sure the vim-airline is always displayed
set ttimeoutlen=50                   "Removes a potential delay when switching Vim modes
set noshowmode                       "Removes the default vim status bar

"**GitGutter**
let g:gitgutter_enabled = 0            "Disable gitgutter by default
let g:gitgutter_sign_column_always = 1 "Always show the gitgutter column even when there are no git changes
let g:gitgutter_max_signs = 500        "Limit the number of gitgutter signs
let g:gitgutter_map_keys = 0           "Disable gitgutter auto key bindings
"Toggle GitGutter
nmap <Leader>git :GitGutterToggle<cr>
let g:gitgutter_override_sign_column_highlight = 0 "Tell gitgutter to leave the column hightlighting alone
"Change the column's background color
highlight SignColumn ctermbg=bg
"Change the background colors for the four different git signs
highlight GitGutterAdd ctermbg=bg
highlight GitGutterChange ctermbg=bg
highlight GitGutterDelete ctermbg=bg
highlight GitGutterChangeDelete ctermbg=bg

"**Better White Space**
"Toggle Vim-better-whitespace
nmap <Leader>sw :ToggleWhitespace<cr>
"Remove trailing whitespace
nmap <Leader>rw :StripWhitespace<cr>

"----------Syntax----------

"autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby

"----------Auto-Commands----------

"Automatically source the Vimrc file on save. The augroup makes sure it's only applied once and prevents vim from freezing
augroup autosourcing
	autocmd!
	autocmd BufWritePost vimrc.vim source %
augroup END

" Notes
" - zz will center the screen
" - zu will move the screen to the top
" - z<cr> will move the screen to the bottom
" - <C-D> will scroll the screen down
" - <C-U> will scroll the screen up
" - <C-]> will try to find the class/method/property trough ctags
" - When searching with ctags you can go to the next with ":tn",
"   go to the previous with ":tp" or see a list with ":ts"
" - In normal mode you can replace the inside of (), "", [] etc. with
"   "ci)", 'ci"' and "ci]". Use "ca" instead if you also want to include
"   the parenthesis (you also use "da" or "di" for deleting).
