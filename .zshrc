# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# source antigen
source ~/antigen.zsh

# zsh plugins
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# zsh themes
antigen theme romkatv/powerlevel10k

antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


#nord dircolors
test -r ~/.dir_colors && eval $(dircolors ~/.dir_colors)

#alias and functions

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ll='ls -alF'
alias la='ls -aF'
alias l='ls -F'

alias ..='cd ..'       # Go up one directory
alias ...='cd ../..'  # Go up two directories

alias hg="history | grep $1"


# mkdir and cd into it
mkcd() {
    mkdir -p "$1" && cd "$1"
}

fnd(){
  find $1 -name $2
}

fndf(){
  local dir="$1"
  find "$dir" | fzf
}
