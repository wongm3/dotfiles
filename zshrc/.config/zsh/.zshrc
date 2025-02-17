# +-----+
# | Git |
# +-----+

source $ZDOTDIR/plugins/git.zsh


# +-------------+
# | ZSH PLUGINS |
# +-------------+

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-completions/zsh-completions.zsh

# +---------+
# | ALIASES |
# +---------+

source $ZDOTDIR/aliases.zsh

# +----------+
# | Starship |
# +----------+

eval "$(starship init zsh)"

# +-----------+
# + Fastfetch |
# +-----------+

fastfetch

# +-----------------+
