#!/usr/bin/env zsh

function zsh_add_file() {
  [ -f "$ZDOTDIR/$1" ] && source "$ZDOTDIR/$1"
}

function zsh_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  if [ ! -d "$ZDOTDIR/plugins/$PLUGIN_NAME" ]; then
    git clone "https://github.com/$1.git" "$ZDOTDIR/plugins/$PLUGIN_NAME"
  fi

  zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" ||
    zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"

}

function zsh_add_snippet() {
  REPO=$(echo $1 | cut -d "/" -f 1-2)
  PLUGIN_PATH=$(echo $1 | rev | cut -d "/" -f 2- | rev | cut -d "/" -f 3-)
  PLUGIN_NAME=$(echo $1 | rev | cut -d "/" -f 1 | rev)

  if [ ! -d "$ZDOTDIR/plugins/$REPO/$PLUGIN_PATH" ]; then
    mkdir -p "$ZDOTDIR/plugins/$REPO/$PLUGIN_PATH"
    curl "https://raw.githubusercontent.com/$REPO/refs/heads/$2/$PLUGIN_PATH/$PLUGIN_NAME" -o "$ZDOTDIR/plugins/$1"
    chmod +x "$ZDOTDIR/plugins/$1"
  fi

  zsh_add_file "plugins/$1"
}
