
# ~/.bashrc
#
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="kitty"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias reload='source ~/.bashrc'
alias nvbashrc='nvim ~/.bashrc'

alias gc='git clone'

alias pacins='sudo pacman -Sy --needed'
alias pacupd='sudo pacman -Syyu'

alias ls='ls --color=auto'
alias la='ls -A --color=auto'
alias ll='ls -l --color=auto'
alias lsa='ls -lA --color=auto'
alias grep='grep --color=auto'
PS1='\[\e[0;1;4;96m\]\t \[\e[0;3;93m\]\w \n\[\e[0;37m\]\u \[\e[0;1;97m\]\$\[\e[0m\] '

cd ~/
neofetch
