#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<|| ZIM ||<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

export ZIM_HOME=${XDG_CONFIG_HOME}/zim

# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  mkdir -p ${ZIM_HOME} && wget -nv -O ${ZIM_HOME}/zimfw.zsh \
      https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi

# Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi

# Initialize modules.
source ${ZIM_HOME}/init.zsh

#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ccccccccc<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



export HISTFILE=${HOME}/.config/zsh/.zhistory
# Number of commands loaded into memory
export HISTSIZE=10000
# Number of commands stored in zhistory
export SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS # Don't store duplicates in zhistory
setopt HIST_FIND_NO_DUPS # Don't find duplicate when searching
setopt INC_APPEND_HISTORY

source ${HOME}/.config/zsh/extra/_alias.zsh
source ${HOME}/.config/zsh/extra/_funcs.zsh
source ${HOME}/.config/zsh/extra/_keybinds.zsh
source ${HOME}/.config/zsh/.zprofile

#-----------------
# fzf-tab
# ----------------

# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'

#-----------------
# prompts 
#-----------------

# PS1

PROMPT="%F{cyan}%f%F{cyan}%~%f%F{green}%f"$'\n'"%F{blue}λ %f "

# RPROMPT

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%r%f'
zstyle ':vcs_info:*' enable git


echo "Everything will be okay in the end. If it's not okay, it's not the end. - John Lennon."

