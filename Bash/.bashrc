[[ $- != *i* ]] && return
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
shopt -s autocd
TERM=alacritty
EDITOR="/usr/bin/vim"
export EDITOR
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"

#Herbst Specific
source /home/thegassyninja/Git/herbstluftwm/share/herbstclient-completion.bash
source $HOME/.bash_aliases
source $HOME/.bash_functions
#PS1
PROMPT_COMMAND='EXIT=$(EXIT_CODE)'
PS1='\[$(tput sc; rightprompt; tput rc)\][\A] [\w]   `GIT_TEST``RAM_USE``CPU_USE``BG_JOBS`\n$EXIT-->'
