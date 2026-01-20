### PATH ###

# Set-up globbing

setopt extended_glob null_glob

# Initialise and deduplicate path
typeset -U path

# Set PATH
default_paths=(
  $HOME/.local/bin
  $HOME/bin
  $HOME/.cargo/bin
  $HOME/go/bin
  $HOME/.npm-global/bin
  $HOME/.dotnet/tools
  $HOME/go/bin
  /usr/local/bin
  /usr/local/sbin
  /usr/bin
  /usr/sbin
  /bin
  ~/bin/ 
  /sbin
  /home/fraser/dev/personal/boot_dev/worldbanc/private/bin
)

# Only add a path if it exists
for p in $default_paths; do
  [[ -d $p ]] && path+=($p)
done

export PATH="${(j/:/)path}" # PATH is required to be a compa-separated string

### SSH ##

### AUTO-COMPLETE ###

autoload -Uz compinit
compinit

export FZF_DEFAULT_OPTS="
  --layout=reverse
  --info=inline
  --height=40%
  --multi
  --preview 'echo {}'
"

zstyle ':completion:*' group-name '' # Group results
zstyle ':completion:*' menu select # Menu-style completion

### ENVS ###

bindkey -v
bindkey -M viins '^e' edit-command-line
bindkey -M vicmd '^e' edit-command-line

export VISUAL=nvim
export EDITOR=nvim
export TERM="xterm-256color"
export BROWSER="zen-browser"

export GITUSER="fmcewan"

### HISTORY ###

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

### ALIASES ### 

alias v="nvim"

alias zen="zen-browser"

eval "$(starship init zsh)"

# SOURCES (that are required near the end)
source ~/.zsh/fzf-tab/fzf-tab.plugin.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# Open tmux 
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux attach-session -t default || tmux new-session -s default
fi
