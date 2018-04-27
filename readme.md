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

# Base

1. **Homebrew** (Package manager)
    - The project: [Homebrew/brew](https://github.com/Homebrew/brew)
    - TL;DR: `$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
2. **Homebrew Cask** (Package sub-manager for GUI)
    - The project: [caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask)
    - TL;DR: `$ brew tap caskroom/cask`
3. **Python3**
    - The project: [Python Homepage)](https://python.org/) 
    - `$ brew install python3`
4. **GNU coreutils**
    - The project: [GNU core utilities](http://www.gnu.org/software/coreutils/coreutils.html)
    - TL;DR: `$ brew install coreutils`
5. **Z**
    - The project: [rupa/z](https://github.com/rupa/z/)
    - TL;DR: `$ brew install z`

### ZSH

1. **ZSH**
    - TL;DR: `$ brew install zsh`
2. **Antigen**
    - The project: [zsh-users/antigen](https://github.com/zsh-users/antigen)
    - TL;DR: `$ brew install antigen`
3. **base16-shelll (Fixes 256 theme.)**
    - The project: [chriskempson/base16-shell](https://github.com/chriskempson/base16-shell)
    - TL;DR: Should be installed by antigen. Only need to call the theme command once: `$ base16_ocean`
    - Make sure you have a 256 iTerm2 theme selected from (base16-iterm2)[https://github.com/martinlindhe/base16-iterm2].

### Fonts

1. **Fonts**
    - The project: [ryanoasis/nerd-fonts](https://github.com/ryanoasis/nerd-fonts)
    - `$ brew cask install caskroom/fonts/font-hack-nerd-font caskroom/fonts/font-firacode-nerd-font` (FuraCode Nerd Font & Knack Nerd Font)

### Tmux

1. **Tmux** (v1.9+)
    - The project: [tmux Homepage](https://tmux.github.io/)
    - TL;DR: `$ brew install tmux`

2. **Tmuxp**
    - The project: [Tmuxp](https://github.com/tony/tmuxp)
    - TL;DR: `$ pip install tmuxp`
3. **Tmux Plugin Manager** (TPM)
    - The project: [tmux-plugins/tpm](https://github.com/tmux-plugins/tpm)
    - TL;DR: `$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
4. **reattach-to-user-namespace**
    - The project: [ChrisJohnsen/tmux-MacOSX-pasteboard.git](https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard.git)
    - TL;DR: `$ brew install reattach-to-user-namespace`
    - This provides the ability to share the yank with the systems clipboard.
5. **Battery** (going to be optional in the future)
    - The project: [Goles/Battery](https://github.com/Goles/Battery)
    - TL;DR: `$ brew tap Goles\battery && brew install battery`
6. **Gawk**
    - The project: [Gawk Homepage](https://www.gnu.org/software/gawk/)
    - TL;DR: `$ brew install gawk`
    - Used by [tmux-copycat](https://github.com/tmux-plugins/tmux-copycat) plugin

### Vim

1. **Neovim** (NVim)
    - The project: [neovim/neovim](https://github.com/neovim/neovim) 
    - TL;DR: `$ brew install neovim`
2. **Neovim Python3 interface**
    - [Deoplete requirements](https://github.com/Shougo/deoplete.nvim#requirements)
    - TL;DR: `$ pip3 install neovim` or `pip3pip3 install neovim --upgradpe install neovim --upgrade`
    - Used by [Deoplete.nvim](https://github.com/Shougo/deoplete.nvim)
3. 	**Vim-plug**
    - The project: [junegunn/vim-plug](https://github.com/junegunn/vim-plug)
    - TL;DR: `$ curl -fLo ~/mydotfiles/vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
4. **ctags**
    - The project: [universal-ctags/ctags](https://github.com/universal-ctags/ctags)
    - [OSX install guide](https://github.com/universal-ctags/ctags/blob/master/docs/osx.rst)
    - TL;DR: `$ brew tap universal-ctags/universal-ctags && brew install --HEAD universal-ctags`
5. **ac** (Optional)
    - The project: [ggreer/the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
    - `$ brew install the_silver_searcher`

### PHPStorm

1. **.ideavimrc**
    - `$ ln -s ~/mydotfiles/phpstorm/ideavimrc.vim ~/.ideavimrc`
2. **TMbundles**
   - Add the TMbundles in `~/mydotfiles/phpstorm/tmbundles` for Ruby support and matching Ruby syntax theme (Ocean).

### Remove?

1. **PHP-CS-Fixer**
    - The project: [PHP-CS-Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer)
    - TL;DR: `$ brew install homebrew/php/php-cs-fixer`
    - Used by [vim-php-cs-fixer](https://github.com/stephpy/vim-php-cs-fixer)
2. **PHP-Code-Sniffer**
    - The project: [PHP-CS-Fixer](https://github.com/squizlabs/PHP_CodeSniffer)
    - TL;DR: `$ brew install php-code-sniffer`
    - Used by [Neomake](https://github.com/neomake/neomake)
3. **PHPMD**
    - The project: [PHPMD](https://github.com/phpmd/phpmd)
    - TL;DR: `$ brew install phpmd`
    - Used by [Neomake](https://github.com/neomake/neomake)
4. **Msgpack**
    - The project: [msgpack/msgpack-php](https://github.com/msgpack/msgpack-php)
    - TL;DR: `$ brew install homebrew/php/php70-msgpack`
    - Used by [phpcd.vim](https://github.com/phpvim/phpcd.vim) plugin
5. **PCNTL (Process Control)**
    - The project: [PHP PCNTL Doc](http://php.net/manual/en/book.pcntl.php)
    - TL;DR: `brew install homebrew/php/php70-pcntl`
    - Used by [phpcd.vim](https://github.com/phpvim/phpcd.vim) plugin

## Installation

1. Clone the repositroy: `$ git clone https://github.com/Ilyes512/mydotfiles ~/mydotfiles --recursive`
2. First install the dependencies above, before creating or symlinking the below the config files (dotfiles) in your homedir(`~`) (see `Files to be created or symlinked`).
3. Run `sudo chsh -s $(which zsh) <username>` to make zsh your default shell.
4. Start VIm `$ vim` (ignoring possible message of missing packages). Press `<Leader>pi` (translates to `,pi`) to install the plugins.
5. Start tmux `$ tmux` and press `prefix + I` (translates to `ctrl-a` followed by `shift-i`) to install the plugins.
6. Put the below snippet's in there respective files. Also execute the commands if any are shown.
7. After (re)opening your terminal(/iTerm) everything should be good to go. You might need to (re)source some files e.g. `$ source ~/.zshrc`.

### Files to be created or symlinked:

**Create ~/.zshrc**

```bash
# Load from MyDotFiles
[[ -f ~/mydotfiles/zshrc.conf ]] && source ~/mydotfiles/zshrc.conf
```

**Create ~/.vimrc**

```viml
set runtimepath^=~/mydotfiles/vim
source ~/mydotfiles/vimrc.vim
```

**Symlink ~/.config/nvim/init.vim** (Neovim)

```
$ mkdir -p ~/.config/nvim && ln -s ~/.vimrc ~/.config/nvim/init.vim
```

**Symlink ~/.ideavimrc** (IdeaVim)

```
$ ln -s ~/mydotfiles/phpstorm/ideavimrc.vim ~/.ideavimrc
```

**Create ~/.tmux.conf**

```
# Load from MyDotFiles
if-shell "[ -f ~/mydotfiles/tmux.conf ]" 'source ~/mydotfiles/tmux.conf'
```

**Symlink ~/.gitignore_global**

```
ln -s ~/mydotfiles/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile "~/.gitignore_global"
```

#### [Optional:]

# Todo
- [ ] Clean up vimrc
- [x] Replace tmuxinator with tmuxp
- [ ] Clean up some of the install instructions above
- [ ] Automate "fresh" install of the above

## Tips / Misc:
- If you use iTerm and tmux, add the fallowing line `tmux attach -t base || tmux new -s base` to `Preferences > Profiles > General > Command > "Send text at start"`. This way when you open iTerm, it will automatically start you in a tmux session. You can also use the alias `$ tt` to do this manually.
- Add the fallowing line `export DEFAULT_USER="output_of_whoami_here"` to your `~/.zshrc.local` if you want to remove the `username@computername`-part from your commandline prompt. Run `$ whoami` to find out your username.
- Temp fix for `Ctrl-H` (`C-H`) that returns `<BS>` instead of `^H`. Run the fallowing two commands `$ infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti` and `$ tic $TERM.ti` (For more info read [this](https://github.com/neovim/neovim/issues/2294#issuecomment-78045837)).
