# MyVimFiles

1. `$ git clone https://github.com/Ilyes512/myvimfiles ~/myvimfiles`
2. Install Vundle `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/myvimfiles/vim/bundle/Vundle.vim`.
3. Start vim `$ vim` (ignoring possible message of missing packages). Press `<Leader>pi` (translates to `,pi`).
4. Put the below snippet in your `~/.vimrc`.
5. After restarting vim everything should be ready to go.

```vim
set runtimepath^=~/myvimfiles/vim
source ~/myvimfiles/vimrc.vim
```

Make sure you also install the below system packages:

1. ctags
  - See the project [universal-ctags/ctags](https://github.com/universal-ctags/ctags)
  - [OSX install guide](https://github.com/universal-ctags/ctags/blob/master/docs/osx.rst)
  - `$ brew tap universal-ctags/universal-ctags && brew install --HEAD universal-ctags`
2. ac
  - See the project [ggreer/the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
  - `$ brew install the_silver_searcher`
3. Neovim (optional)
  - See the project [neovim/neovim](https://github.com/neovim/neovim) 
  - `$ brew install neovim/neovim/neovim`
  - To load the vimrc-file you need to symlink it to ~/.config/init.vim: `$ mkdir -p ~/.config/nvim && ln -s ~/.vimrc ~/.config/nvim/init.vim` 

