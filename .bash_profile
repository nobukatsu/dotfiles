alias ls='ls -G'
alias ll='ls -alh'
alias less='less -XF'

if type "colordiff" > /dev/null 2>&1
    then
    alias diff='colordiff'
fi

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_13.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home
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
# CUDA
export CUDA_ROOT=/usr/local/cuda
export PATH=$CUDA_ROOT/bin:$PATH
export DYLD_LIBRARY_PATH=$CUDA_ROOT/lib:$PATH
# Oracle
export ORACLE_HOME=~/devel/library/oracle/instantclient_12_1
export PATH=$ORACLE_HOME:$PATH
export DYLD_LIBRARY_PATH=$ORACLE_HOME:$DYLD_LIBRARY_PATH
export LD_LIBRARY_PATH=$ORACLE_HOME

# pyenv
eval "$(pyenv init -)"

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
export PS1='\[\033[1;32m\]\u@\h\[\033[00m\]:\[\033[1;36m\]\W\[\033[1;31m\]$(__git_ps1)\[\033[00m\] \$ '

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"
