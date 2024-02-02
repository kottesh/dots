# copy file contents to the clipboard 
function y() {
    if [[ $# -eq 0 ]]; then
        echo "Error: No arguments provided. Usage: y <filename>"
        return 1
    fi
    
    if [[ ! -e "$1" ]]; then
        echo "Error: File not found: $1"
        return 1
    fi
    
    if [[ -d "$1" ]]; then
        echo "Error: $1 is a directory. Please provide a valid file."
        return 1
    fi
    
    content=$(< "$1") 
    if [[ -z "$content" ]]; then
        echo "Error: File is empty: $1"
        return 1
    fi
    
    echo -n "$content" | xsel --clipboard --input
    notify-send "Copied!"
}

orphans() {
  if [[ ! -n $(pacman -Qdt) ]]; then
    echo "No orphans to remove."
  else
    sudo pacman -Rns $(pacman -Qdtq)
  fi
}

get-ip() {
    curl -Ss "https://ifconfig.me"
}

get-ip!() {
    curl -Ss "https://ipapi.co/$(get-ip)/yaml" 
}

# remove symlinks and replace the original file
rm-symlink() {
    [[ -L "$1" ]] && cp --remove-destination "$(readlink "$1")" "$1"
}

# pretty print aliases
aliases() {
	alias | awk -F= '{
		alias=$1; $1=""
		printf "\033[34m%s\033[0m = \033[32m%s\033[0m\n", alias, $0
	}'
}

# create a new directory and cd to it
function mkcd {
	mkdir -p "$1" && cd "$1"
}

# source the .zshrc
function reload {
	source $HOME/.config/zsh/.zshrc
	notify-send "Reloaded zshrc"
}

# create a script file and give execute permission
function touchx {
	touch "$1" && chmod u+x "$1"
}

function touchs {
    echo -e "#!/usr/bin/env bash\n\n" > "$1";
    chmod u+x "$1";
    nvim "$1";
}

function oxo {
    curl -F "file=@$1" https://0x0.st | xsel -i -b
}
