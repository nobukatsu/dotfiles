alias ls='ls -G'
alias ll='ls -alh'
alias awk='gawk'
if type "colordiff" > /dev/null 2>&1
    then
    alias diff='colordiff'
fi

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_13.jdk/Contents/Home
export MAVEN_HOME=/usr/local/apache-maven-3.0.4
export PATH=$MAVEN_HOME/bin:$PATH
export MAVEN_OPTS="-Xmx2048m -XX:MaxPermSize=512m"
export EDITOR=/usr/local/bin/emacs
export GREP_OPTIONS="--color=always"
# Change directory color.
export LSCOLORS=gxfxcxdxbxegedabagacad
# Ignore duplicate commands.
export HISTCONTROL=ignoredups
# Ignore frequently used command.
export HISTIGNORE=”history*:cd*:ls*”
export HISTSIZE=100000

# Enable bash-completion.
if [ -f $(brew --prefix)/etc/bash_completion ]; then
 . $(brew --prefix)/etc/bash_completion
fi

source $HOME/.bash/git-completion.bash
source $HOME/.bash/git-prompt.sh

# prompt settings
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1
export PS1='\[\033[1;32m\]\u@\h\[\033[00m\]:\[\033[1;34m\]\W\[\033[1;31m\]$(__git_ps1)\[\033[00m\] \$ '

