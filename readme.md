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

1. **Powerline fonts**
  - The project: [powerline/fonts](https://github.com/powerline/fonts)
  - TL;DR: Clone the repo and execute `$ ./install.sh`.
2. **Neovim** (NVim)
  - The project: [neovim/neovim](https://github.com/neovim/neovim) 
  - TL;DR: `$ brew install neovim/neovim/neovim`
3. **Neovim Python3 interface**
  - [Deoplete requirements](https://github.com/Shougo/deoplete.nvim#requirements)
  - TL;DR: `$ brew install python3 && pip3 install neovim`
  - Used by [Deoplete.nvim](https://github.com/Shougo/deoplete.nvim)
4. **PHP-CS-Fixer**
  - The project: [PHP-CS-Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer)
  - TL;DR: `$ brew install homebrew/php/php-cs-fixer`
  - Used by [vim-php-cs-fixer](https://github.com/stephpy/vim-php-cs-fixer)
5. **PHP-Code-Sniffer**
  - The project: [PHP-CS-Fixer](https://github.com/squizlabs/PHP_CodeSniffer)
  - TL;DR: `$ brew install php-code-sniffer`
  - Used by [Neomake](https://github.com/neomake/neomake)
6. **PHPMD**
  - The project: [PHPMD](https://github.com/phpmd/phpmd)
  - TL;DR: `$ brew install phpmd`
  - Used by [Neomake](https://github.com/neomake/neomake)
7. 	**Vim-plug**
  - The project: [junegunn/vim-plug](https://github.com/junegunn/vim-plug)
  - TL;DR: `$ curl -fLo ~/mydotfiles/vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
8. **ctags**
  - The project: [universal-ctags/ctags](https://github.com/universal-ctags/ctags)
  - [OSX install guide](https://github.com/universal-ctags/ctags/blob/master/docs/osx.rst)
  - TL;DR: `$ brew tap universal-ctags/universal-ctags && brew install --HEAD universal-ctags`
9. **ac** (Optional)
  - The project: [ggreer/the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
  - `$ brew install the_silver_searcher`
10. **Tmux** (v1.9+)
  - The project: [tmux Homepage](https://tmux.github.io/)
  - TL;DR: `$ brew install tmux`
11. **Battery** (going to be optional in the future)
  - The project: [Goles/Battery](https://github.com/Goles/Battery)
  - TL;DR: `$ brew tap Goles\battery && brew install battery`
12. **Gawk**
  - The project: [Gawk Homepage](https://www.gnu.org/software/gawk/)
  - TL;DR: `$ brew install gawk`
  - Used by [tmux-copycat](https://github.com/tmux-plugins/tmux-copycat) plugin
13. **Tmux Plugin Manager** (TPM)
  - The project: [tmux-plugins/tpm](https://github.com/tmux-plugins/tpm)
  - TL;DR: `$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
14. **Tmuxinator**
  - The project: [tmuxinator/tmuxinator](https://github.com/tmuxinator/tmuxinator)
  - TL;DR: `$ gem install tmuxinator`
15. **Msgpack**
  - The project: [msgpack/msgpack-php](https://github.com/msgpack/msgpack-php)
  - TL;DR: `$ brew install homebrew/php/php70-msgpack`
  - Used by [phpcd.vim](https://github.com/phpvim/phpcd.vim) plugin
16. **PCNTL (Process Control)**
  - The project: [PHP PCNTL Doc](http://php.net/manual/en/book.pcntl.php)
  - TL;DR: `brew install homebrew/php/php70-pcntl`
  - Used by [phpcd.vim](https://github.com/phpvim/phpcd.vim) plugin

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
- Temp fix for `Ctrl-H` (`C-H`) that returns `<BS>` instead of `^H`. Run the fallowing two commands `$ infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti` and `$ tic $TERM.ti` (For more info read [this](https://github.com/neovim/neovim/issues/2294#issuecomment-78045837)).
