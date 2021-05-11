## Env vars ##
# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# Path
export PATH=$PATH:/usr/lib/gnupg/:~/bin:~/.cargo/bin
# Wayland related
export QT_SCALE_FACTOR=1
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export GDK_BACKEND=wayland
export QT_QPA_PLATFORM=wayland
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway
# Styling for qt apps
export QT_QPA_PLATFORMTHEME=gtk2
# 'less' colors
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
# Use gpg as ssh key
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export GPG_TTY=$(tty)
# vim mode appearance
export MODE_CURSOR_VIINS="blinking bar"
export MODE_CURSOR_REPLACE="$MODE_CURSOR_VIINS"
export MODE_CURSOR_VMD="block"
export MODE_CURSOR_SEARCH="steady underline"
export MODE_CURSOR_VISUAL="steady bar"
export MODE_CURSOR_VLINE="$MODE_CURSOR_VISUAL"
export MODE_INDICATOR_VICMD=">-"
# Disable certain expansions
export GLOBALIAS_FILTER_VALUES=(dragon fzf)
# Auto completion sensitivity
export HYPHEN_INSENSITIVE="true"
##

# aliases
source "$HOME/.aliases"

# Starship prompt
eval "$(starship init zsh)"

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Zinit
source "$HOME/.zinit/bin/zinit.zsh"

# autocompletions
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
autoload -U +X compinit && compinit

# Plugins
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-history-substring-search
zinit light zsh-users/zsh-syntax-highlighting
zinit light softmoth/zsh-vim-mode
zinit snippet OMZP::globalias

# Direnv
eval "$(direnv hook zsh)"

# Fix symlinks when running pass
function pass {
    ~/.password-store/.fix_symlinks.sh
    /usr/bin/pass "$@"
}
