# Set the name of the static .zsh plugins file antidote will generate.
zsh_plugins=${ZDOTDIR:-~}/.zsh_plugins.zsh

# Ensure you have a .zsh_plugins.txt file where you can add plugins.
[[ -f ${zsh_plugins:r}.txt ]] || touch ${zsh_plugins:r}.txt

# Lazy-load antidote.
fpath+=(${ZDOTDIR:-~}/.antidote)
autoload -Uz $fpath[-1]/antidote

# Generate static file in a subshell when .zsh_plugins.txt is updated.
if [[ ! $zsh_plugins -nt ${zsh_plugins:r}.txt ]]; then
  (antidote bundle <${zsh_plugins:r}.txt >|$zsh_plugins)
fi


# The following lines were added by compinstall
zstyle :compinstall filename '/home/kottes/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Source your static plugins file.
source $zsh_plugins

export HISTFILE="$HOME/.config/zsh/.zsh_history"

source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/funcs.zsh
source $HOME/.config/zsh/.zprofile

PROMPT="%F{cyan}%f%F{cyan}%~%f%F{green}%f"$'\n'"%F{blue} %f "

# git right side prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%r%f'
zstyle ':vcs_info:*' enable git
