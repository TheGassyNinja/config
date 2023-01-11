# Bash Aliases

alias c='clear'
alias cl='clear && neofetch --config ~/.config/neofetch/colorsonly.conf && la'
alias cb='neofetch --config ~/.config/neofetch/colorsonly.conf'

# Replace ls with exa
alias ls='cb && exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.="exa -a | egrep '^\.'"                                     # show only dotfiles
alias ip="ip -color"

alias br='source ~/.bashrc'

alias pac='sudo pacman -S'
alias pac-rm='sudo pacman -Rs'
alias pac-srch='sudo pacman -Ss'
alias pac-info='sudo pacman -Qi'
alias update='sudo pacman -Syu'
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -500 | nl > ~/rip.txt"

alias ~='cd $HOME'
alias Scripts='cd $HOME/Scripts/'
alias Downloads='cd $HOME/Downloads'
alias Music='cd $HOME/Music'

alias Weather='notify-send "$(inxi -xxx -W 76226)"'

alias jctl="journalctl -p 3 -xb"

alias MNT-NFS="sudo mount -t nfs -o vers=4 192.168.254.169:/export/DataT ~/mnt/DataT"
alias killani='ps -aux | grep back4.sh | kill $(awk "{print $2}")'
