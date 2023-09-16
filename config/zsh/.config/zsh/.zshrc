export HISTFILE="$HOME/.config/zsh/.zsh_history"

export ZSH="$HOME/.oh-my-zsh"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/funcs.zsh

PROMPT="%F{cyan}%f%F{cyan}%~%f%F{green}%f"$'\n'"%F{blue}>>=%f "

autoload -Uz compinit

# git right side prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%r%f'
zstyle ':vcs_info:*' enable git
