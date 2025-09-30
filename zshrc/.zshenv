# +---------+
# | General |
# +---------+

export DOTFILES="$HOME/dotfiles"
export PATH="/opt/homebrew/bin:$PATH"

# +-----+
# | XDG |
# +-----+

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# +-----+
# | ZSH |
# +-----+

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

# +--------+
# | Editor |
# +--------+

export EDITOR="nvim"
export VISUAL="nvim"

# +-----+
# | fzf |
# +-----+

export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#b7bdf8,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--color=selected-bg:#494d64 \
--multi"

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"
show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"
export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200"

# +-----+
# | MAN |
# +-----+

export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'"

# +-----+
# | NVM |
# +-----+

export NVM_DIR="$HOME/.config/nvm"

# +----------+
# | Starship |
# +----------+

export STARSHIP_CONFIG=~/.config/starship/starship.toml

# +---------+
# | LazyGit |
# +---------+

export LG_CONFIG_FILE="$HOME/.config/lazygit/config.yml,$HOME/.config/lazygit/catppuccin-macchiato-theme.yml"

# +------+
# | TMUX |
# +------+

export ZSH_TMUX_FIXTERM=false

source $ZDOTDIR/.localenv.sh
