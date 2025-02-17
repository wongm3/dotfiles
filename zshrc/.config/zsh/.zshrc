# +-----+
# | Git |
# +-----+

source $ZDOTDIR/plugins/git.zsh


# +---------------------+
# | SYNTAX HIGHLIGHTING |
# +---------------------+

source $DOTFILES/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# +---------+
# | ALIASES |
# +---------+

source $XDG_CONFIG_HOME/aliases/aliases

# +----------+
# | Starship |
# +----------+

eval "$(starship init zsh)"

# +-----------+
# + Fastfetch |
# +-----------+

fastfetch
