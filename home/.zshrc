# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Defaults and path
export EDITOR=nvim
export VISUAL=nvim
export PATH=$HOME/bin:$HOME/.local/bin:$HOME/go/bin:$HOME/.cargo/bin:/usr/local/bin:$PATH
source /etc/profile.d/jre.sh

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# autocompletions
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
source ~/.bash_completion/setcolor.bash

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

# disable certain expansions
export ZSH_EXPAND_ALL_DISABLE=alias

# aliases
alias ls='ls --color=auto'

# Title
case $TERM in
  xterm*)
    precmd () {print -Pn "\e]0;zsh - %~\a"}
    ;;
esac
