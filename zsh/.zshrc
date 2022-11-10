# path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# loads the zsh theme
ZSH_THEME="sansthelurker"

# update omz automatically without asking
zstyle ':omz:update' mode auto

# zsh and omz plugins
# requires zsh-syntax-highlighting and zsh-autosuggestions from https://github.com/zsh-users
plugins=(git gh zsh-syntax-highlighting zsh-autosuggestions colored-man-pages)

source $ZSH/oh-my-zsh.sh

# runs on startup
neofetch

# aliases
alias zshconfig="nvim ~/.zshrc"
alias z="omz reload"
alias cz="clear && omz reload"
alias c="clear"
alias radeontop="radeontop -c"
alias ls="exa --group-directories-first --color=always --icons"

# exports
export PROMPT_EOL_MARK=""

# keybindings
bindkey '^ ' autosuggest-accept
