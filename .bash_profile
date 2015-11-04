alias ls='ls -G'
alias ll='ls -alh'
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

# Display git information to prompt.
source ./.bash/git-prompt
source ./.bash/git-completion.bash
PS1="[\h \W \[\033[31m\]\$(parse_git_branch_or_tag)\[\033[0m\]] "
