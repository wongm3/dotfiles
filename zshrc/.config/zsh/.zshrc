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

# +---------+
# | PLUGINS |
# +---------+

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light junegunn/fzf-git.sh 

# Add in snippets
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::tmux

# +---------+
# | ALIASES |
# +---------+

source $ZDOTDIR/aliases.sh

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
