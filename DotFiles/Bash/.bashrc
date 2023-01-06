# Shell
PS1='\[\e[0;91m\]\w \[\e[0;91m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2)\n\[\e[0;91m\]\$ \[\e[0m\]'

# Key
alias ..="cd .."
alias cp="cp -r"
alias ls="lsd -a"
alias ll="lsd -alh"
alias mkdir="mkdir -p"
alias rm="rm -rf"
alias Backup="cd $HOME/Backup/"
alias Gimp="cd $HOME/Gimp"
alias I3PostInstall="cd $HOME/I3PostInstall"
alias Iso="cd $HOME/Iso"
alias Java="cd $HOME/Java"
alias Office="cd $HOME/Office"
alias Python="cd $HOME/Python"
alias Screenshot="cd $HOME/Screenshot"
alias Telegram="cd $HOME/Telegram"
alias Temporary="cd $HOME/Temporary"
alias Wallpaper="cd $HOME/Wallpaper"
alias Whatsapp="cd $HOME/Whatsapp"
