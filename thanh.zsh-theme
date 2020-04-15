local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
#local current_dir='%{$fg[cyan]%}%c%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%}%~ %{$reset_color%}'
local git_branch='$(git_prompt_info)'

ZSH_THEME_RVM_PROMPT_OPTIONS="i v g"

PROMPT="╭─ ${current_dir}${git_branch}
╰─ "
#RPROMPT="%B${return_code}%b"
RPROMPT='$(vi_mode_prompt_info)%B${return_code}%b%{$(echotc UP 1)%}[%*]%{$(echotc DO 1)%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
