# MyDotFiles

```
   _____        ________          __ __________.__.__                 
  /     \ ___.__\______ \   _____/  |\_   _____|__|  |   ____   ______
 /  \ /  <   |  ||    |  \ /  _ \   __|    __) |  |  | _/ __ \ /  ___/
/    Y    \___  ||    `   (  <_> |  | |     \  |  |  |_\  ___/ \___ \ 
\____|__  / ____/_______  /\____/|__| \___  /  |__|____/\___  /____  >
        \/\/            \/                \/                \/     \/ 
```

My personal dotfiles setup for ZSH, VIm and tmux for OSX (I will try and make it compatible for use with Ubuntu).

## Dependencies

Make sure you also install the below system packages:

1. 	**Vim-plug**
  - The project: [junegunn/vim-plug](https://github.com/junegunn/vim-plug)
  - TL;DR: `$ curl -fLo ~/mydotfiles/vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
2. **ctags**
  - The project: [universal-ctags/ctags](https://github.com/universal-ctags/ctags)
  - [OSX install guide](https://github.com/universal-ctags/ctags/blob/master/docs/osx.rst)
  - TL;DR: `$ brew tap universal-ctags/universal-ctags && brew install --HEAD universal-ctags`
3. (Optional, but recommended:) **ac**
  - The project: [ggreer/the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
  - `$ brew install the_silver_searcher`
4. **Tmux** (v1.9+)
  - The project: [tmux Homepage](https://tmux.github.io/)
  - TL;DR: `$ brew install tmux`
5. **Tmux Plugin Manager** (TPM)
  - The project: [tmux-plugins/tpm](https://github.com/tmux-plugins/tpm)
  - TL;DR: `$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
6. **Battery** (going to be optional in the future)
  - The project: [Goles/Battery](https://github.com/Goles/Battery)
  - TL;DR: `$ brew tap Goles\battery && brew install battery`
7. **Gawk**
  - The project: [Gawk Homepage](https://www.gnu.org/software/gawk/)
  - TL;DR: `$ brew install gawk`
  - Used by [tmux-copycat](https://github.com/tmux-plugins/tmux-copycat) plugin
8. (Optional:) **Neovim** (NVim)
  - The project: [neovim/neovim](https://github.com/neovim/neovim) 
  - TL;DR: `$ brew install neovim/neovim/neovim`

## Installation

1. Install the dependencies above.
2. Start VIm `$ vim` (ignoring possible message of missing packages). Press `<Leader>pi` (translates to `,pi`) to install the plugins.
3. Start tmux `$ tmux` and press `prefix + I` (translates to `ctrl-a` followed by `shift-i`) to install the plugins.
4. Put the below snippet's in there respective files. Also execute the commands if any are shown.
6. After (re)opening your terminal(/iTerm) everything should be good to go. You might need to (re)source some files e.g. `$ source ~/.zshrc`.

**~/.zshrc**

```bash
# Load from MyDotFiles
[[ -f ~/mydotfiles/zshrc.conf ]] && source ~/mydotfiles/zshrc.conf
```

**~/.vimrc**

```viml
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
- If you use iTerm and tmux, add the fallowing line `tmux attach -t base || tmux new -s base` to `Preferences > Profiles > General > Command > "Send text at start"`. This way when you open iTerm, it will automatically start you in a tmux session. You can also use the alias `$ tt` to do this manually.
- Add the fallowing line `export DEFAULT_USER="output_of_whoami_here"` to your `~/.zshrc.local` if you want to remove the `username@computername`-part from your commandline prompt. Run `$ whoami` to find out your username.