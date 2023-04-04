# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/powerlevel10k"
source $ZSH/powerlevel10k.zsh-theme

export EDITOR='nvim'

source $HOME/.keys

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='colordiff'
alias ls='ls --color=auto'

alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias la='ls -a --ignore=..'   # show listing of all except ".."
alias l='ls -a --ignore=..'   

alias nv='nvim'
alias v='nvim'
alias vim='nvim'
alias e='nvim'
alias emacs='nvim'
alias :q="exit"
alias :x="exit"

alias projects='cd ~/Desktop/Projects'
alias rocketry='cd ~/Desktop/Projects/Rocketry'

alias tm="tmux -2 attach-session || tmux -2 new-session"
alias sc="screen -r || screen"
alias swap="cd /home/elias/.local/state/nvim/swap"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
