##My dotfiles.

* Clone This Project using `git clone` to a directory such as ~/.dotfiles

* Update the submodules `git submodule init` and `git submodule update`

* For Mac users, install `coreutils` using `Homebrew`

* Make a temporary directory `~/.tmp`

* Make file alias such as `.dir_color`, `.vim`, `.vimrc`, `.gvimrc`

* Install zsh: Mac: `brew install zsh`, Ubuntu: `sudo apt-get install zsh`

* Install `oh-my-zsh`: `curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh`

* `cp .dotfiles/oh-my-zsh/powerline.zsh-theme ~/.oh-my-zsh/themes/`

* Remove file `.zshrc`, re-create file alias `.zshrc`

* Change the default to `zsh` under Ubuntu using: `chsh`, and input `/bin/zsh`
  after prompt

* For GUI users, download a font file for the powerline icons: https://github.com/Lokaltog/vim-powerline/wiki/Patched-fonts. And change the font size to `14` in `iTerm`
