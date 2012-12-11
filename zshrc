# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="simple"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby osx)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...



#JAVA_HOME=/Library/Java/JavaVirtualMachines/1.7.0.jdk/Contents/Home
JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JAVA_HOME=$JAVA_HOME
MAVEN=/usr/local/Cellar/maven/3.0.4/libexec
export M2_HOME=$MAVEN
export M2=$M2_HOME/bin
export ANDROID_HOME=/Volumes/Data/Android/android-sdk-mac_x86

GAE=/Users/Jack/Documents/Google/appengine-java-sdk-1.5.0
GWT=/Users/Jack/Documents/gwt-2.1.1
GO=/usr/local/go/bin
NDK=/Users/Jack/Documents/Android/android-ndk-r8

PATH=/usr/local/bin:/usr/local/Cellar/gettext/0.17/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/X11/bin:$GAE/bin:$GWT:~/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$M2_HOME:$M2:$GO:$NDK
export PATH

if [ -f /bin/launchctl ]; then
    launchctl setenv PATH $PATH
    launchctl setenv ANDROID_HOME $ANDROID_HOME
    launchctl setenv M2_HOME $M2_HOME
fi

# mount the android file image
# function mountAndroid { hdiutil attach /Volumes/Data/android.dmg.sparseimage -mountpoint /Volumes/android; }
# set the number of open files to be 1024
ulimit -S -n 1024

#Git aliases
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'

alias lh='ll -h'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# For dir_colors
if [ -f /usr/local/bin/gdircolors ]; then
    eval `gdircolors ~/.dotfiles/dir_colors/dircolors-solarized/dircolors.ansi-dark`
fi

if [ -f /usr/bin/dircolors ]; then
    eval `dircolors ~/.dotfiles/dir_colors/dircolors-solarized/dircolors.ansi-dark`
fi

# For CocoaPods
function wopen {
    open ${PWD##*/}.xcworkspace
} # open Xcode workspace

# For ruby
if [ -d ~/.rvm ]; then
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
    rvm --default 1.9.3
fi
