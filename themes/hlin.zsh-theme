local user='%{$fg[cyan]%}%n%{$reset_color%}'
local host='%{$fg[green]%}%m%{$reset_color%}'
local pwd='%{$fg[yellow]%}%1~%{$reset_color%}'

local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%}) '
local git_branch='$(git_prompt_status)%{$reset_color%}$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{ ✔%G%}"

# File specific
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚ "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}✹ "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}➜ "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}¤ "
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}"
# ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{✚%G%}"
# ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}✭ "

# Regarding commits
#ZSH_THEME_GIT_PROMPT_BEHIND="%{↓%G%}"
#ZSH_THEME_GIT_PROMPT_AHEAD="%{↑%G%}"

# Regarding branches
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═ "
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}"
#ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{●%G%}"

# Other stuff
#ZSH_THEME_GIT_PROMPT_SEPARATOR="|"

# The full list.
# Source: https://github.com/olivierverdier/zsh-git-prompt/blob/master/zshrc.sh

# Copy paste from: http://unicode-table.com/en/#basic-latin
# »
# What is actually shown as output
PROMPT="[${user}@${host}:${pwd}]$ "
RPROMPT="${return_code} ${git_branch}"
