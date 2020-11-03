# Bitwarden token
function bw {
    source /tmp/bwtoken && /usr/bin/bw "$@"
}

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# autocompletions
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
autoload -U +X compinit && compinit

# Starship
eval "$(starship init zsh)"
HYPHEN_INSENSITIVE="true"

# Zinit
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Plugins
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-history-substring-search
zinit light zsh-users/zsh-syntax-highlighting
zinit light simnalamburt/zsh-expand-all
zinit light softmoth/zsh-vim-mode

# vim mode appearance
export MODE_CURSOR_VIINS="blinking bar"
export MODE_CURSOR_REPLACE="$MODE_CURSOR_VIINS"
export MODE_CURSOR_VMD="block"
export MODE_CURSOR_SEARCH="steady underline"
export MODE_CURSOR_VISUAL="steady bar"
export MODE_CURSOR_VLINE="$MODE_CURSOR_VISUAL"
export MODE_INDICATOR_VICMD=">-"

# disable certain expansions
export ZSH_EXPAND_ALL_DISABLE=alias

# aliases
source "$HOME/.aliases"

# Title
case $TERM in
  xterm*)
    precmd () {print -Pn "\e]0;zsh - %~\a"}
    ;;
esac
