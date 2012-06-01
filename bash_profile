export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacadd
export PS1="[\u@\h \w]\\$ "
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "

MAVEN=/usr/local/Cellar/maven/3.0.3/libexec
export M2_HOME=$MAVEN
export M2=$M2_HOME/bin
export ANDROID_HOME=/Users/zheng/Documents/Android/android-sdk-mac_x86

GAE=/Users/zheng/Documents/Google/appengine-java-sdk-1.5.0
GWT=/Users/zheng/Documents/gwt-2.1.1
GO=/usr/local/go/bin
NDK=/Users/zheng/Documents/Android/android-ndk-r8

PATH=/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/gettext/0.17/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/X11/bin:$GAE/bin:$GWT:$ADT:~/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$M2_HOME:$M2:$GO:$NDK
export PATH
launchctl setenv PATH $PATH
launchctl setenv ANDROID_HOME $ANDROID_HOME
launchctl setenv M2_HOME $M2_HOME

# set the number of open files to be 1024
ulimit -S -n 1024

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
