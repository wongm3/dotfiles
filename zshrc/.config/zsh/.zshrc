# +------------+
# | NAVIGATION |
# +------------+

setopt AUTO_CD

setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

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

# +-------------+
# | Completions |
# +-------------+

autoload -Uz compinit
compinit

# +---------+
# | PLUGINS |
# +---------+

source "$ZDOTDIR/zsh-functions.sh"

zsh_add_snippet "catppuccin/zsh-syntax-highlighting/themes/catppuccin_macchiato-zsh-syntax-highlighting.zsh" main
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "zsh-users/zsh-completions"
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "junegunn/fzf-git.sh"
zsh_add_snippet "ohmyzsh/ohmyzsh/lib/git.zsh" master
zsh_add_snippet "ohmyzsh/ohmyzsh/plugins/git/git.plugin.zsh" master
zsh_add_snippet "ohmyzsh/ohmyzsh/plugins/tmux/tmux.plugin.zsh" master

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

# +-----+
# | NVM |
# +-----+

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# +----------+
# | THE FUCK |
# +----------+

eval $(thefuck --alias)

# +--------+
# | ZOXIDE |
# +--------+

eval "$(zoxide init --cmd cd zsh)"
