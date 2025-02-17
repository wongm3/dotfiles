# +------------+
# | NAVIGATION |
# +------------+

setopt AUTO_CD

setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

setopt CORRECT
setopt CDABLE_VARS
setopt EXTENDED_GLOB

# +---------+
# | HISTORY |
# +---------+

setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY

# +-------------------+
# | SYNTAX/COMPLETION |
# +-------------------+

source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=($ZDOTDIR/plugins/zsh-completions/src $fpath)
autoload -U compinit; compinit

# +---------+
# | PLUGINS |
# +---------+

source $ZDOTDIR/plugins/git/git.zsh

# +---------+
# | ALIASES |
# +---------+

source $ZDOTDIR/aliases.zsh

# +--------+
# | PROMPT |
# +--------+

eval "$(starship init zsh)"

# +-----------+
# + FASTFETCH |
# +-----------+

fastfetch

# +-----+
# | FZF |
# +-----+

if [ $(command -v "fzf") ]; then
    source $ZDOTDIR/fzf.zsh
fi


# +----------+
# | THE FUCK |
# +----------+

eval $(thefuck --alias)

# +--------+
# | ZOXIDE |
# +--------+

eval "$(zoxide init zsh)"
