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
