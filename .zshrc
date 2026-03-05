# Enable completion
autoload -Uz compinit
compinit

# History settings
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY

# Better tab completion
zstyle ':completion:*' menu select
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Load plugins (Debian path)
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Minimal prompt
PROMPT='%F{cyan}%n@%m%f:%F{blue}%~%f$ '

export LANG=en_IN.utf8
export LC_ALL=en_IN.utf8
