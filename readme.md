# MyDotFiles

```
   _____        ________          __ __________.__.__                 
  /     \ ___.__\______ \   _____/  |\_   _____|__|  |   ____   ______
 /  \ /  <   |  ||    |  \ /  _ \   __|    __) |  |  | _/ __ \ /  ___/
/    Y    \___  ||    `   (  <_> |  | |     \  |  |  |_\  ___/ \___ \ 
\____|__  / ____/_______  /\____/|__| \___  /  |__|____/\___  /____  >
        \/\/            \/                \/                \/     \/ 
```

My personal dotfiles setup for ZSH, Vim and tmux for OSX (I will try and make it compatible for use with Ubuntu).

## Dependencies

Make sure you also install the below system packages:

1. ctags
  - See the project [universal-ctags/ctags](https://github.com/universal-ctags/ctags)
  - [OSX install guide](https://github.com/universal-ctags/ctags/blob/master/docs/osx.rst)
  - TL;DR: `$ brew tap universal-ctags/universal-ctags && brew install --HEAD universal-ctags`
2. ac
  - The project: [ggreer/the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
  - `$ brew install the_silver_searcher`
3. tmux
  - TL;DR: `$ brew install tmux`
4. Battery (going to be optional in the future)
  - The project: [Goles/Battery](https://github.com/Goles/Battery)
  - `$ brew tap Goles\battery && brew install battery`
5. (Optional:) Neovim/NVim
  - The project: [neovim/neovim](https://github.com/neovim/neovim) 
  - TL;DR: `$ brew install neovim/neovim/neovim`
  - To load the vimrc-file you need to symlink it to ~/.config/init.vim: `$ mkdir -p ~/.config/nvim && ln -s ~/.vimrc ~/.config/nvim/init.vim`

## Installation

1. `$ git clone https://github.com/Ilyes512/mydotfiles ~/mydotfiles`
2. Install Vundle `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/mydotfiles/vim/bundle/Vundle.vim`.
3. Start Vim `$ vim` (ignoring possible message of missing packages). Press `<Leader>pi` (translates to `,pi`).
4. Put the below snippet in your `~/.vimrc`.
5. (Optional:) Set a symbolic link for NVim:  
   `$ mkdir -p ~/.config/nvim && ln -s ~/.vimrc ~/.config/nvim/init.vim`.
6. After restarting (N)Vim everything should be ready to go.

**~/.vimrc**

```vim
set runtimepath^=~/mydotfiles/vim
source ~/mydotfiles/vimrc.vim
```

## Tips:
- If you use iTerm and tmux, add the fallowing line `tmux attach -t base || tmux new -s base` to `Preferences > Profiles > General > Command > "Send text at start"`. This way when you open iTerm, it will automatically start you in a tmux session.

