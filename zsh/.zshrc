#
#    █▄
#    ███▄
#    ███▀█▄
#    ███  ▀█▄              █
#    ███   ███             █     ▄              ▄▄▄
#    ███   ███     ▄█▄     █     █       ▄█▄  ▄█▀ ▀▀
#    ███   ███   ▄█▀ ▀█▄  ▀█▀ ▄▄▄█ ▀   ▄█▀ ▀█▄ ▀█▄▄
#    ███   ███ ▄██▄   ▄██▄ █▄ █  █ █ ▄██▄   ▄██▄  ▀█▄
#    ███   ███                █             ▄▄▄▄▄▄▄█▀
#    ███   ███
#    ███   █▀     ▒███████▒  ██████  ██░ ██
#    ███          ▒ ▒ ▒ ▄▀░▒██    ▒ ▓██░ ██▒
#    ███          ░ ▒ ▄▀▒░ ░ ▓██▄   ▒██▀▀██░
#    █▀             ▄▀▒   ░  ▒   ██▒░▓█ ░██
#                 ▒███████▒▒██████▒▒░▓█▒░██▓
#                  ░▒▒ ▓░▒░▒▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒
#                  ░░▒ ▒ ░ ▒░ ░▒  ░ ░ ▒ ░▒░ ░
#                  ░ ░ ░ ░ ░░  ░  ░   ░  ░░ ░
#                    ░ ░          ░   ░  ░  ░




#       ████████████████
#      ██ ◖COMPLETION◗ ██
#       ████████████████

#▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
#▌ completion setttings ▐
#▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔

unsetopt menu_complete
unsetopt flowcontrol
setopt auto_menu
zstyle 'completion:*' menu select
setopt complete_in_word
setopt always_to_end
setopt extendedglob

#▁▁▁▁▁▁▁▁▁▁▁▁
#▌ compleat ▐
#▔▔▔▔▔▔▔▔▔▔▔▔

autoload -Uz compinit && compinit
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit -d;
else
	compinit -C;
fi;


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
#      ██  ◖ATHAME◗  ██
#       ██████████████
# export ATHAME_ENABLED: 0



#       ██████████████
#      ██  ◖PROMPT◗  ██
#       ██████████████

#▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
#▌ spaceship settings  ▐
#▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
export SPACESHIP_PROMPT_DEFAULT_PREFIX=""
export SPACESHIP_VI_MODE_SHOW=false
export SPACESHIP_NODE_SHOW=false
export SPACESHIP_CHAR_SYMBOL="λ "


#       █████████████
#      ██ ◖ALIASES◗ ██
#       █████████████
#
alias g="git"
alias grep="rg -p"
alias r="ranger"
alias v="nvim"
alias c="cd"
alias l="ls"
alias y="yay"
alias m="man"
alias t="tig"
alias vim="nvim"
alias disk="dfc"
alias zt="zathura"
alias ip='ip -color=always'
alias mpp="echo 'Matija Potočnik Pribošič'"
alias yarnUpdate="curl --compressed -o- -L https://yarnpkg.com/install.sh | zsh"
alias lf="ls -d */"
alias subtitle="subliminal download -l en"
alias weather="curl wttr.in"
alias clean="cd /home/nathias/Downloads/ && mv *.torrent torrents; mv *.pdf books/; mv *.txt books; mv *.epub books; mv *.doc books; mv *.docx books; mv *.png images; mv *.jpg images; mv *.svg images; mv *.gif images; mv *.bmp images; rm *.meta; echo 'Download cleanup complete'; ls"
alias xbig="xrandr --output eDP-1 --mode 1600x900 --rate 60"
alias xsmall=" xrandr --output eDP-1 --mode 2560x1440 --rate 60"
alias thinkpad="sudo hda-verb /dev/snd/hwC0D0 0x1d SET_PIN_WIDGET_CONTROL 0x0"
alias tsh="./Scripts/tsh/t.sh"
alias parrot="curl parrot.live"
alias unix="curl -sL git.io/unix"
alias ping="prettyping --nolegend"
alias ccat="pygmentize"
alias bat="bat --theme TwoDark"
alias zspeed="time zsh -i -c exit"
alias nathias="./Scripts/script1"
alias nths="clear && cat /home/nathias/Ascii/nathiasASCII.ascii | lolcat"
alias haskell="ghci"
alias ls="ls --color=auto"
alias ncdu="ncdu --color dark"
alias anti="antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh"
alias diff="diff --color=auto"
alias tree="exa -TRL 3"
alias bpy="bpython -q"
alias fn="firefox-nightly"
alias reddit="rtv --enable-media"
alias twitch="twitch-curses"
alias twitter="turses"
alias email="neomutt"
alias feh="feh -B \"#1c1c1c\""
alias mpv="mpv --background=\"#1c1c1c\""
alias scrot="scrot  ~/Pictures/Screenshots/%b%d_%H%M%S.png -d 5"
alias youtube="mpsyt"
alias ccopy='xclip -selection clipboard'	# copy to clipboard, ctrl+c, ctrl+shift+c
alias ppaste='xclip -selection clipboard -o'	# paste from clipboard, ctrl+v, ctrl+shift+v
alias sselect='xclip -selection primary -o'	# paste from highlight, middle click, shift+insert
alias awsx="source _awsx"


#       ████████████
#      ██ ◖COLORS◗ ██
#       ████████████

#▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
#▌ manpage colors ▐
#▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔

export MANPAGER='less'
export LESS="-ismWXr"
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;34m'
export LESS_TERMCAP_us=$'\E[04;33;146m' 

# use colors in less
export LESS=-Xr

# use colors in grep
alias grep="grep --color=always"
alias agl='\ag --pager="less -XFR"'
alias rg='rg -p'

#▁▁▁▁▁▁▁▁▁▁▁▁▁
#▌ ls colors ▐
#▔▔▔▔▔▔▔▔▔▔▔▔▔
eval $(dircolors -b $HOME/.dircolors)

#       ███████████████
#      ██ ◖SOURCERY◗ ██
#       ███████████████

export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="firefox-nightly"
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

# fnm
export PATH=/home/nathias/.fnm:$PATH
eval "`fnm env --multi`"
