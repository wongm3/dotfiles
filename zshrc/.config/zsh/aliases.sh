#!/bin/bash

# +----+
# | CD |
# +----+

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias cd="z"
alias -- -='cd -'
alias 1='cd -1'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

# +----+
# | LS |
# +----+

alias ls='eza --color=always --long --icons=always --ignore-glob=".git"'
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

# +----------+
# | PERSONAL |
# +----------+

alias ncu="npx npm-check-updates"
alias cnvim="cd ~/.config/nvim && nvim"
alias czsh="nvim ~/.zshrc"
alias cghostty="nvim ~/.config/ghostty/"
alias develop="~/development"
alias pagro="~/development/pagro"
