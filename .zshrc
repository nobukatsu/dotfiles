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

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# pipenv
export PIPENV_VENV_IN_PROJECT=1

# pip3
export PATH="$HOME/Library/Python/3.7/bin:$PATH"

# node
export PATH="$HOME/.nodebrew/current/bin:$PATH"

# git-prompt
source ~/.git-prompt.sh
setopt PROMPT_SUBST ; PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '

# git-completion
fpath=(~/.zsh/completions $fpath)

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# kubectl
source <(kubectl completion zsh)

# hub
function git(){hub "$@"}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
