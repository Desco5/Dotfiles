# Lines configured by zsh-newuser-install
HISTFILE=~/Dotfiles/zsh/.histfile
HISTSIZE=100000
SAVEHIST=10000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/desco/Dotfiles/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

set -o PROMPT_SUBST

# Version control branch
autoload -Uz vcs_info 
precmd () { vcs_info }
zstyle ':vcs_info:*' formats ' %s(%F{red}%b%f)'


# Aliases
alias ls='exa --long --header --git'
alias grep='grep --color=auto'

# Prompt
PS1='%F{#F06292}%n%f@%F{#0099db}%m%f%F{#66b2b2}%/%f${vcs_info_msg_0_} %F{#fee761}<|°_°|>%f'

