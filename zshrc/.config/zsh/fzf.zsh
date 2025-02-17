source <(fzf --zsh)

_fzf_compgen_path() {
  fd --hidden --exclude ".git" . "$1"
}

_fzf_compgen_dir() {
  fd --type=d --hidden --exclude ".git" . "$1"
}

source $ZDOTDIR/plugins/fzf-git/fzf-git.sh
