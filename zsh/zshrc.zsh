export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""
VSCODE=code-insiders

plugins=(
  autojump
  colorize
  git
  npm
  nvm
  vscode
  zsh_reload
)

source $ZSH/oh-my-zsh.sh

# Prompt
eval "$(starship init zsh)"

# Aliases
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias e='exit'
alias cl='clear'
alias rm='trash'
alias ping='prettyping --nolegend'
alias top="htop"
alias code="code-insiders"
alias p="~/Projects"
alias zshrc="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# git
alias git="hub"
alias cleanup="git branch --merged | egrep -v \"(^\*|master|primary|develop)\" | xargs git branch -d"

