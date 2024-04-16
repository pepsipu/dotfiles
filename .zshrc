fpath+=$HOME/.zsh/pure

autoload -U promptinit; promptinit

PURE_PROMPT_SYMBOL="@"
prompt pure

# path for sbin
PATH="$PATH:/usr/sbin:/sbin"
export PATH

CTF_ROOT="/Users/pepsipu/Desktop/ctfs/"