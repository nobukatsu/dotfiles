# completion
autoload -U compinit
compinit -u

# history
setopt share_history
setopt histignorealldups
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# alias
alias ls='gls --color=auto'
alias ll='gls -al --color=auto'
alias awk='gawk'

# general paths
export PATH="/usr/local/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# pipenv
export PIPENV_VENV_IN_PROJECT=1

# pip3
export PATH="$HOME/Library/Python/3.7/bin:$PATH"

# node
export PATH="$HOME/.nodebrew/current/bin:$PATH"

# MySQL Client
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# git-prompt
source ~/.git-prompt.sh
setopt PROMPT_SUBST
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '

# git-completion
fpath=(~/.zsh/completions $fpath)

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# kubectl
source <(kubectl completion zsh)

# hub
function git(){hub "$@"}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
# export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
