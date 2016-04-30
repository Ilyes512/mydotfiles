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
3. Tmux (v1.9+)
  - TL;DR: `$ brew install tmux`
4. Tmux Plugin Manager (TPM)
  -  See the project: [tmux-plugins/tpm](https://github.com/tmux-plugins/tpm)
  -  TL;DR: `$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
5. Battery (going to be optional in the future)
  - The project: [Goles/Battery](https://github.com/Goles/Battery)
  - `$ brew tap Goles\battery && brew install battery`
6. (Optional:) Neovim/NVim
  - The project: [neovim/neovim](https://github.com/neovim/neovim) 
  - TL;DR: `$ brew install neovim/neovim/neovim`
  - To load the vimrc-file you need to symlink it to ~/.config/init.vim: `$ mkdir -p ~/.config/nvim && ln -s ~/.vimrc ~/.config/nvim/init.vim`

## Installation

1. `$ git clone https://github.com/Ilyes512/mydotfiles ~/mydotfiles`
2. Install Vundle `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/mydotfiles/vim/bundle/Vundle.vim`.
3. Start Vim `$ vim` (ignoring possible message of missing packages). Press `<Leader>pi` (translates to `,pi`).
4. Put the below snippet's in there respective files and execute the below commands.
6. After (re)opening your terminal(/iTerm) everything should be good to go. You might need to (re)source some files e.g. `$ source ~/.zshrc`.

**~/.zshrc**

```bash
# Load from MyDotFiles
[[ -f ~/mydotfiles/.zshrc ]] && source ~/mydotfiles/.zshrc
```

**~/.vimrc**

```vim
set runtimepath^=~/mydotfiles/vim
source ~/mydotfiles/vimrc.vim
```

**~/.config/nvim/init.vim** (Neovim)

```
$ mkdir -p ~/.config/nvim && ln -s ~/.vimrc ~/.config/nvim/init.vim
```

**~/.tmux.conf**

```
# Load from MyDotFiles
if-shell "[ -f ~/mydotfiles/tmux.conf ]" 'source ~/mydotfiles/tmux.conf'
```

## Tips:
- If you use iTerm and tmux, add the fallowing line `tmux attach -t base || tmux new -s base` to `Preferences > Profiles > General > Command > "Send text at start"`. This way when you open iTerm, it will automatically start you in a tmux session.

