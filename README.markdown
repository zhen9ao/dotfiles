##My dotfiles. Works fine on both Mac and Ubuntu


* Clone This Project using `git clone` to a directory such as ~/.dotfiles

* Update the submodules `git submodule init` and `git submodule update`

* For Mac users, install `coreutils` using `Homebrew`

* Make a temporary directory `~/.tmp`

* Make file alias such as `.dir_color`, `.vim`, `.vimrc`, `.gvimrc`

* Install zsh: Mac: `brew install zsh`, Ubuntu: `sudo apt-get install zsh`

* Install `oh-my-zsh`: `curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh`

* `~/.dotfiles/oh-my-zsh-powerline-theme/install_in_omz.sh`

* Remove file `.zshrc`, re-create file alias `.zshrc`

* Change the default to `zsh` under Ubuntu using: `chsh`, and input `/bin/zsh`
  after prompt

* Select one powerline-font in `https://github.com/Lokaltog/powerline-fonts`.
  I prefer `Menlo` font for Regular font and `DroidSansMono` for None-ASIIC
  font.

* Install sdkman: `curl -s "https://get.sdkman.io" | bash`
