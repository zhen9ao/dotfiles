#export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacadd
export PS1="[\u@\h \w]\\$ "
#export PS1="\[\e[0;32m\][\e[0;32m\]\u@\e[0;31m\]\h \[\e[0;34m\]\w\e[0;32m\]] $ \[\e[0m\]"

test -r /sw/bin/init.sh && . /sw/bin/init.sh
if [ "$TERM" != "dumb" ]; then
    export LS_OPTIONS='-G'
    test -r ~/.dir_color && eval "$(gdircolors -b ~/.dir_color)" || eval "$(gdircolors -b)"
    eval `gdircolors ~/.dir_color`
fi
# Useful aliases
alias ls='ls $LS_OPTIONS'
alias ll='ls -al'
#alias grep='grep $LS_OPTIONS'
#alias fgrep='fgrep $LS_OPTIONS'
#alias egrep='egrep $LS_OPTIONS'

export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "

JAVA_HOME=/Library/Java/JavaVirtualMachines/1.7.0.jdk/Contents/Home
#JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JAVA_HOME=$JAVA_HOME
MAVEN=/usr/local/Cellar/maven/3.0.3/libexec
export M2_HOME=$MAVEN
export M2=$M2_HOME/bin
export ANDROID_HOME=/Users/Jack/Documents/Android/android-sdk-mac_x86

GAE=/Users/Jack/Documents/Google/appengine-java-sdk-1.5.0
GWT=/Users/Jack/Documents/gwt-2.1.1
GO=/usr/local/go/bin
NDK=/Users/Jack/Documents/Android/android-ndk-r8

PATH=/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/gettext/0.17/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/X11/bin:$GAE/bin:$GWT:$ADT:~/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$M2_HOME:$M2:$GO:$NDK
export PATH
launchctl setenv PATH $PATH
launchctl setenv ANDROID_HOME $ANDROID_HOME
launchctl setenv M2_HOME $M2_HOME

# set the number of open files to be 1024
ulimit -S -n 1024

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

# mount the android file image
function mountAndroid { hdiutil attach /Volumes/Data/android.dmg.sparseimage -mountpoint /Volumes/android; }
# set the number of open files to be 1024
ulimit -S -n 1024
