# git prompt
set __fish_git_prompt_showdirtystate 'yes'
#set __fish_git_prompt_showstashstate 'yes'
#set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# alias
if type -q 'colordiff'
    alias diff='colordiff'
end
if type -q 'gsed'
    alias sed='gsed'
end
if type -q 'greadlink'
    alias readlink='greadlink'
end
if type -q 'gdate'
    alias date='gdate'
end
if type -q 'bat'
    alias cat='bat'
end
if type -q 'bat'
    alias less='bat'
end

# fzf
set -U FZF_LEGACY_KEYBINDINGS 1

# source-highlight
if [ -e /usr/local/bin/src-hilite-lesspipe.sh ]
    set -gx LESSOPEN "| /usr/local/bin/src-hilite-lesspipe.sh %s"
    set -gx LESS " -R "
end

# locale
set -gx LC_ALL "ja_JP.UTF-8"

# cheat.sh
function cheat.sh
    curl cheat.sh/$argv
end

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/nirifuji/.nodebrew/node/v10.11.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/nirifuji/.nodebrew/node/v10.11.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/nirifuji/.nodebrew/node/v10.11.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /Users/nirifuji/.nodebrew/node/v10.11.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish

# PATH
set PATH /Users/$USER/.local $PATH # PyCharm
set PATH /Users/$USER/.fastlane/bin $PATH # fastlane

# pyenv
eval (pyenv init - | source)
