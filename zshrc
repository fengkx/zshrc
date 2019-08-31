ZSH=$HOME/.zsh
source $ZSH/init
for file in $ZSH/*.zsh; do
    source "$file"
done
## History file configuration
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000

zstyle ':completion:*' menu select

#Most themes use this option.
setopt promptsubst

#OMZ themes use this library.
zplugin ice wait lucid
zplugin snippet OMZ::lib/git.zsh

#Some OMZ themes use this plugin
zplugin ice wait atload"unalias grv" lucid
zplugin snippet OMZ::plugins/git/git.plugin.zsh

PS1="READY >" # provide a nice prompt till the theme loads
zplugin ice wait lucid
zplugin snippet https://gist.githubusercontent.com/fengkx/19ef5faf71d67feea6b6ded87492d200/raw/c5408f3989e26b87ea26947309ab8493ba0b3cab/ys.zsh-theme.sh 

zplugin ice wait'[[ -n ${ZLAST_COMMANDS[(r)man*]} ]]' lucid
zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh

zplugin ice blockf
zplugin light zsh-users/zsh-completions

zplugin ice wait lucid
zplugin light skywind3000/z.lua

zplugin ice wait lucid
zplugin light zsh-users/zsh-autosuggestions

zplugin ice wait atinit"zpcompinit" lucid
zplugin light zdharma/fast-syntax-highlighting

zplugin ice make'!'
zplugin light sei40kr/zsh-fast-alias-tips

export NVM_DIR=$HOME/.nvm
zplugin ice wait'[[ -n ${ZLAST_COMMANDS[(r)nv*|vi*|npm|no*]} ]]' lucid
zplugin light lukechilds/zsh-nvm


