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
