autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "$key_info[Up]" up-line-or-beginning-search # Up
bindkey "$key_info[Down]" down-line-or-beginning-search # Down
bindkey "^P" up-line-or-beginning-search # Up
bindkey "^N" up-line-or-beginning-search # Down


bindkey "$key_info[Home]" beginning-of-line
bindkey "$key_info[End]" end-of-line

bindkey "$key_info[PageUp]" up-line-or-history
bindkey "$key_info[PageDown]" down-line-or-history



bindkey ' ' magic-space                               # [Space] - do history expansion

bindkey '^[[1;5C' forward-word                        # [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5D' backward-word                       # [Ctrl-LeftArrow] - move backward one word

