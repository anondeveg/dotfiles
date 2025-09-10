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
alias i='pacwrap.sh'
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

# -----------------------------
# Sys aliases and functions
# -----------------------------
alias adown='yt-dlp --extract-audio --audio-format mp3' # download audio only
alias kbord='setxkbmap -layout us,ara -variant -option "lv3:rwin_switch,grp:alt_shft_toggle,terminate:ctrl_alt_bksp'
# add arabic layout and makes ctrl + alt + bksp kill the x session + makes win key a type 3 mod
kebdown() {
    doas sh -c 'echo -n "i8042" > /sys/bus/platform/drivers/i8042/unbind'
}


kebup() {
    doas sh -c 'echo -n "i8042" > /sys/bus/platform/drivers/i8042/bind'
}

PS1='[\u@\h \W]\$ '
eval "$(zoxide init bash)"

ln -sr $HOME/.config/* /tmp/.config/ &> /dev/null
export XDG_CONFIG_HOME="/tmp/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
