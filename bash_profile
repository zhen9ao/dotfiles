export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacadd
export PS1="[\u@\h \w]\\$ "
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "

GAE=/Users/zheng/Documents/Google/appengine-java-sdk-1.5.0
GWT=/Users/zheng/Documents/gwt-2.1.1
ADT=/Users/zheng/Documents/Android/android-sdk-mac_x86/platform-tools
ADT_TOOLS=/Users/zheng/Documents/Android/android-sdk-mac_x86/tools
PATH=/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/gettext/0.17/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/X11/bin:$GAE/bin:$GWT:$ADT:~/bin:$ADT_TOOLS
export PATH

# set the number of open files to be 1024
ulimit -S -n 1024

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
