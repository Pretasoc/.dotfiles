#
# User configuration sourced by interactive shells
#

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh
PATH=~/.local/bin:$PATH
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch 
unsetopt beep notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/peic/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
# End of lines added by compinstall

if [[ -z $TTY ]]
then
    screen -xRR autoscreen 
fi

zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES
zstyle ':completion::complete:*' gain-privileges 1

# zsh-completions config
setopt ALWAYS_TO_END PATH_DIRS NO_LIST_BEEP
unsetopt NO_CASE_GLOB 

# directory config
setopt AUTO_CD AUTO_PUSHD PUSHD_IGNORE_DUPS PUSHD_SILENT PUSHD_TO_HOME EXTENDED_GLOB NO_CLOBBER

# environment config
setopt AUTO_RESUME INTERACTIVE_COMMENTS LONG_LIST_JOBS NO_HUP
unsetopt NOTIFY NO_BG_NICE NO_CHECK_JOBS

# history config
setopt BANG_HIST SHARE_HISTORY HIST_IGNORE_DUPS HIST_IGNORE_ALL_DUPS HIST_IGNORE_SPACE HIST_SAVE_NO_DUPS HIST_VERIFY

alias cls=clear
