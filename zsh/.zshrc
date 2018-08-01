#
#          █▄
#          ███▄
#          ███▀█▄
#          ███  ▀█▄              █
#          ███   ███             █     ▄              ▄▄▄
#          ███   ███     ▄█▄     █     █       ▄█▄  ▄█▀ ▀▀
#          ███   ███   ▄█▀ ▀█▄  ▀█▀ ▄▄▄█ ▀   ▄█▀ ▀█▄ ▀█▄▄
#          ███   ███ ▄██▄   ▄██▄ █▄ █  █ █ ▄██▄   ▄██▄  ▀█▄
#          ███   ███                █             ▄▄▄▄▄▄▄█▀
#          ███   ███
#          ███   █▀     ▒███████▒  ██████  ██░ ██
#          ███          ▒ ▒ ▒ ▄▀░▒██    ▒ ▓██░ ██▒
#          ███          ░ ▒ ▄▀▒░ ░ ▓██▄   ▒██▀▀██░
#          █▀             ▄▀▒   ░  ▒   ██▒░▓█ ░██
#                       ▒███████▒▒██████▒▒░▓█▒░██▓
#                        ░▒▒ ▓░▒░▒▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒
#                        ░░▒ ▒ ░ ▒░ ░▒  ░ ░ ▒ ░▒░ ░
#                        ░ ░ ░ ░ ░░  ░  ░   ░  ░░ ░
#                          ░ ░          ░   ░  ░  ░




#       ████████████████
#      ██ ◖COMPLETION◗ ██
#       ████████████████

#▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
#▌ completion setttings ▐
#▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔

unsetopt menu_complete
unsetopt flowcontrol
setopt auto_menu
setopt complete_in_word
setopt always_to_end
setopt extendedglob

#▁▁▁▁▁▁▁▁▁▁▁▁
#▌ compleat ▐
#▔▔▔▔▔▔▔▔▔▔▔▔

autoload -Uz compinit 
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit -d;
else
	compinit -C;
fi;

source ~/.bash_completion.d/compleat_setup

# % fix
unsetopt PROMPT_SP

#       █████████████
#      ██ ◖HISTORY◗ ██
#       █████████████

#▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
#▌ file configuration ▐
#▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔

[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000

#▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
#▌ command configuration ▐
#▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔

setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

#       ██████████████
#      ██ ◖GEOMETRY◗ ██
#       ██████████████

#▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
#▌ geometry settings ▐
#▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔

GEOMETRY_SYMBOL_PROMPT="%Bλ%f"      # default prompt symbol
GEOMETRY_SYMBOL_RPROMPT="%Bλ%f"     # multiline prompts
GEOMETRY_SYMBOL_EXIT_VALUE="%Bλ%f" # displayed when exit value != 0
GEOMETRY_SYMBOL_ROOT="%BΩ%f"        # when logged in user is roo
PROMPT_GEOMETRY_COLORIZE_SYMBOL=false
PROMPT_GEOMETRY_COLORIZE_ROOT=true 
PROMPT_GEOMETRY_COMMAND_EXEC_TIME=true
#colors
GEOMETRY_COLOR_PROMPT="green"
GEOMETRY_COLOR_ROOT="red"
GEOMETRY_COLOR_EXIT_VALUE="magenta"  
GEOMETRY_COLOR_DIR="magenta"
# plugins
GEOMETRY_PROMPT_PLUGINS=(virtualenv exec_time git hg node jobs)
# virtualenv
GEOMETRY_COLOR_VIRTUALENV="green"
GEOMETRY_COLOR_CONDA="green"
GEOMETRY_VIRTUALENV_CONDA_SEPARATOR=":"
# docker
GEOMETRY_COLOR_DOCKER_MACHINE="blue"
GEOMETRY_SYMBOL_DOCKER_MACHINE="⚓"
# jobs
GEOMETRY_COLOR_JOBS="blue"
GEOMETRY_SYMBOL_JOBS="⚙"
# hg
GEOMETRY_COLOR_HG_DIRTY="red"
GEOMETRY_COLOR_HG_CLEAN="green"
GEOMETRY_COLOR_HG_BRANCH=242
GEOMETRY_SYMBOL_HG_DIRTY="⬡"
GEOMETRY_SYMBOL_HG_CLEAN="⬢"
GEOMETRY_SYMBOL_HG_SEPARATOR="::"
# git
GEOMETRY_SYMBOL_GIT_DIRTY="⬡"  # repo has "dirty" state
GEOMETRY_SYMBOL_GIT_CLEAN="⬢"  # repo has "clean" state
GEOMETRY_SYMBOL_GIT_BARE="⬢"   # repo is bare (no working tree)
GEOMETRY_SYMBOL_GIT_REBASE="\uE0A0" # in middle of rebase
GEOMETRY_SYMBOL_GIT_UNPULLED="⇣" # unpulled changes
GEOMETRY_SYMBOL_GIT_UNPUSHED="⇡" # unpushed changes
GEOMETRY_SYMBOL_GIT_CONFLICTS_SOLVED="◆" #conflicts have been solved
GEOMETRY_SYMBOL_GIT_CONFLICTS_UNSOLVED="◈" #still unsolved conflicts
GEOMETRY_COLOR_GIT_DIRTY="red" # repo has "dirty" state
GEOMETRY_COLOR_GIT_CLEAN="green" # repo has "clean" state
GEOMETRY_COLOR_GIT_BARE="blue"  # repo is bare (no working tree)
GEOMETRY_COLOR_GIT_CONFLICTS_UNSOLVED="red"  # unsolved conflicts
GEOMETRY_COLOR_GIT_CONFLICTS_SOLVED="green"  # conflicts resolved
GEOMETRY_COLOR_GIT_BRANCH=242  # branch name color
PROMPT_GEOMETRY_GIT_CONFLICTS=true  # merge conflict
PROMPT_GEOMETRY_GIT_TIME=true # time since last commit
PROMPT_GEOMETRY_GIT_TIME_LONG_FORMAT=false  # long format for timet
PROMPT_GEOMETRY_GIT_TIME_SHOW_EMPTY=true # show time when no commit
GEOMETRY_GIT_NO_COMMITS_MESSAGE="no commits" # message
GEOMETRY_GIT_SEPARATOR="::"  # character separator
# node
GEOMETRY_COLOR_PACKAGER_VERSION="black"
GEOMETRY_SYMBOL_NODE_NPM_VERSION="⬡"
# ruby
GEOMETRY_RUBY_RVM_SHOW_GEMSET=true
GEOMETRY_SYMBOL_RUBY_RVM_VERSION="◆"

#       █████████████
#      ██ ◖ALIASES◗ ██
#       █████████████

alias zspeed="time zsh -i -c exit"
alias nths="clear && cat /home/nathias/Ascii/nathiasASCII.ascii | lolcat"
alias ls="ls --color=auto"
alias anti="antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh"
alias vim="nvim"
alias tree="exa -TRL 3"
alias repl="colorepl"
alias bpy="bpython -q"
alias fn="firefox-nightly"
alias reddit="rtv --enable-media"
alias twitch="twitch-curses"
alias twitter="turses"
alias email="neomutt"
alias feh="feh -B \"#1c1c1c\""
alias mpv="mpv --background=\"#1c1c1c\""
alias scrot="scrot  ~/Pictures/Screenshots/%b%d_%H%M%S.png"
alias youtube="mpsyt"
alias ccopy='xclip -selection clipboard'	# copy to clipboard, ctrl+c, ctrl+shift+c
alias ppaste='xclip -selection clipboard -o'	# paste from clipboard, ctrl+v, ctrl+shift+v
alias sselect='xclip -selection primary -o'	# paste from highlight, middle click, shift+insert


#       ████████████
#      ██ ◖COLORS◗ ██
#       ████████████

#▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
#▌ manpage colors ▐
#▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔

export MANPAGER='less'
export LESS="-ismW"
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;34m'
export LESS_TERMCAP_us=$'\E[04;33;146m' 

#▁▁▁▁▁▁▁▁▁▁▁▁▁
#▌ ls colors ▐
#▔▔▔▔▔▔▔▔▔▔▔▔▔
eval $(dircolors -b $HOME/.dircolors)

#       ███████████████
#      ██ ◖SOURCERY◗ ██
#       ███████████████

export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER=firefox-nightly
export BROWSERCLI=w3m
source /usr/share/gdb
source ~/.zsh_plugins.sh
source /usr/share/gdb
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$HOME/Scripts:$PATH"
export SSH_KEY_PATH="~/.ssh/rsa_id"
export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER=firefox-nightly
export BROWSERCLI=w3m

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
