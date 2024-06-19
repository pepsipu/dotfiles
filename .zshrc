fpath+=$HOME/.zsh/pure

autoload -U promptinit; promptinit

PURE_PROMPT_SYMBOL="@"
prompt pure

PATH="$PATH:/usr/sbin:/sbin"
export PATH

source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
