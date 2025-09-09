# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# -----------------------------
# Basic Aliases
# -----------------------------
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# -----------------------------
# Pacman Aliases (using doas)
# -----------------------------
alias i='doas pacman -S'
alias u='doas pacman -Syu'      # update system
alias s='pacman -Ss'            # search packages
alias r='doas pacman -Rns'      # remove packages
alias q='pacman -Q'             # list installed packages

# -----------------------------
# Yay Aliases
# -----------------------------
alias ai='yay -S'               # AUR install
alias au='yay -Syu'             # AUR + system update
alias as='yay -Ss'              # AUR search
alias ar='yay -Rns'             # AUR package removal

# -----------------------------
# Cleanup Aliases
# -----------------------------
alias cleanup='doas pacman -Rns $(pacman -Qtdq)'   # remove orphaned packages
alias cleanpkg='doas pacman -Sc'                   # clean package cache
alias cd='z'
# -----------------------------
# Programs Aliases
# -----------------------------
alias grep="rg"
alias find="fd"
alias adown='yt-dlp --extract-audio --audio-format mp3' # download audio only
alias kbord='setxkbmap -layout us,ara -variant -option "lv3:rwin_switch,grp:alt_shift_toggle,terminate:ctrl_alt_bksp,caps:swapescape" 
' # add arabic layout and switch CAPS with ESC
PS1='[\u@\h \W]\$ '
eval "$(zoxide init bash)"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
