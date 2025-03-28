set -o vi
figlet -f invita cinthyr | lolcat -S 7000
fastfetch -l none

setopt PROMPT_SUBST
PROMPT="%F{green}%*%f %F{blue}%n@%m%f %F{cyan}%B%~%b $%f "
echo "\n"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
