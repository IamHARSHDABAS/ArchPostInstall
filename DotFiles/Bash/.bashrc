# Shell
PS1='\[\e[0;91m\]\w \[\e[0;91m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2)\n\[\e[0;91m\]\$ \[\e[0m\]'

# Key
alias ..="cd .."
alias ~="cd ~"
alias ls="lsd"
alias ll="lsd -Alh"
alias update="sudo pacman -Syyu"
