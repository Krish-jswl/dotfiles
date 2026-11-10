HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$HOME/.zsh_history"

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_SAVE_NO_DUPS

autoload -Uz compinit
compinit -C

zstyle ':completion:*' menu select
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey -v
export KEYTIMEOUT=1

WORDCHARS='*?_[]~=&;!#$%^(){}<>'

bindkey '^H' backward-kill-word
bindkey '^W' backward-kill-word
bindkey -M viins '^?' backward-delete-char

VIM_MODE="%F{blue}I%f"

function update_vim_mode() {
    if [[ $REGION_ACTIVE -ne 0 ]]; then
        VIM_MODE="%F{yellow}V%f"
    elif [[ $KEYMAP == vicmd ]]; then
        VIM_MODE="%F{green}N%f"
    else
        VIM_MODE="%F{blue}I%f"
    fi
    zle reset-prompt
}

function zle-keymap-select() {
    update_vim_mode
}

zle -N zle-keymap-select

function zle-line-init() {
    update_vim_mode
}

zle -N zle-line-init

function custom-visual-mode() {
    zle visual-mode
    update_vim_mode
}

zle -N custom-visual-mode
bindkey -M vicmd 'v' custom-visual-mode

function custom-visual-line-mode() {
    zle visual-line-mode
    update_vim_mode
}

zle -N custom-visual-line-mode
bindkey -M vicmd 'V' custom-visual-line-mode

function custom-vi-cmd-mode() {
    zle vi-cmd-mode
    update_vim_mode
}

zle -N custom-vi-cmd-mode
bindkey -M viins '\e' custom-vi-cmd-mode
bindkey -M vicmd '\e' custom-vi-cmd-mode

bindkey '^R' history-incremental-search-backward

setopt PROMPT_SUBST
PROMPT='[''${VIM_MODE}] %F{cyan}%n@%m%f %F{blue}%~%f %# '

export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

export EDITOR=nvim
export VISUAL=nvim

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"

# opencode
export PATH=/home/krishj/.opencode/bin:$PATH

export NVM_DIR="$HOME/.nvm"

nvm() {
  unfunction nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
  nvm "$@"
}
