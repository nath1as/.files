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
#                  ░ ░ ░ ░ ░░  ░  ░   ░  ░░ ░
#                  ░░▒ ▒ ░ ▒░ ░▒  ░ ░ ▒ ░▒░ ░
#                    ░ ░          ░   ░  ░  ░




#       ████████████████
#      ██ ◖COMPLETION◗ ██
#       ████████████████

#▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
#▌ completion setttings ▐
#▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
#
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
#      ██  ◖PROMPT◗  ██
#       ██████████████

#▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
#▌ spaceship settings  ▐
#▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
export SPACESHIP_PROMPT_DEFAULT_PREFIX="d"
export SPACESHIP_VI_MODE_SHOW=true
export SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=false
export SPACESHIP_NODE_SHOW=true
export SPACESHIP_CHAR_SYMBOL="λ "
export SPACESHIP_DIR_TRUNC_REPO=true
export SPACESHIP_DIR_TRUNC_PREFIX=""

export SPACESHIP_HOST_SHOW=true
export SPACESHIP_HOST_SHOW_FULL=false

export SPACESHIP_TIME_SHOW=false
export SPACESHIP_BATTERY_SHOW=false
export SPACESHIP_EXEC_TIME_SHOW=true

export SPACESHIP_ASYNC_SHOW=false


#       █████████████
#      ██ ◖ALIASES◗ ██
#       █████████████
#
alias sudo="/usr/bin/doas"
alias g="git"
alias r="ranger"
alias r="yazi"
alias v="nvim"
alias c="cd"
alias l="eza"
alias y="paru"
alias m="man"
alias t="tig"
alias gr="rg --pretty --color=always"
alias zt="zathura"
alias yt="ytfzf -t"
alias ip='ip -color=always'
alias disk="dfc"
alias aic="ascii-image-converter"
alias mpp='echo "Matija Potočnik Pribošič" | ccopy'
alias lsf="ls -d */"
alias gemini="amfora"
alias matrix="iamb"
alias music="rmpc"
alias tr="stig"
alias torrent="stig"
alias sub="subliminal download -l en"
alias art="sacad"
alias weather="curl wttr.in"
alias clean="cd /home/nathias/Downloads/ && mv *.torrent torrents; mv *.pdf /home/nathias/Library/; mv *.txt /home/nathias/Library; mv *.epub /home/nathias/Library; mv *.doc /home/nathias/Library; mv *.docx /home/nathias/Library; mv *.cbr /home/nathias/Library; mv *.cbz /home/nathias/Library; mv *.png images; mv *.jpg images; mv *.svg images; mv *.gif images; mv *.bmp images; mv *.webp images; mv *.jpeg images; rm *.meta; rm *.mkv; echo 'Download cleanup complete'; ls"
alias xbig="xrandr --output eDP-1 --mode 1600x900 --rate 60"
alias xsmall="xrandr --output eDP-1 --mode 2560x1440 --rate 60"
alias thinkpad="sudo hda-verb /dev/snd/hwC0D0 0x1d SET_PIN_WIDGET_CONTROL 0x0"
alias tsh="/home/nathias/Scripts/tsh/t.sh"
alias parrot="curl parrot.live"
alias unix="curl -sL git.io/unix"
alias ping="prettyping --nolegend"
alias ccat="pygmentize"
alias bat="bat --theme TwoDark"
alias zspeed="time zsh -i -c exit"
alias nathias="/home/nathias/Scripts/nathias.sh"
alias ns="/home/nathias/Scripts/ns.sh"
alias nths="clear && cat /home/nathias/Ascii/nathiasASCII.ascii | lolcat"
alias haskell="ghci"
alias ls="ls --color=auto"
alias ncdu="ncdu --color dark"
alias anti="antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh"
alias diff="diff --color=auto"
alias tree="eza -TRL 3"
alias roots=" eza -D -TRL 500"
alias bpy="bpython -q"
alias fn="firefox-nightly"
alias email="neomutt"
alias mpv='mpv'
alias scrot="scrot  /home/nathias/Pictures/Screenshots/%b%d_%H%M%S.png -d 5"
alias screen="hyprshot --output-folder /home/nathias/Pictures/Screenshots --mode output"
alias youtube="mpsyt"
alias ccopy='wl-copy'
alias ppaste='wlc-paste'
alias awsx="source _awsx"
alias remixfix="lsof -i :8002"
alias jackfix="sudo hda-verb /dev/snd/hwC0D0 0x1d SET_PIN_WIDGET_CONTROL 0x0"
alias subnet="$HOME/go/bin/subnet-cli"
alias neovim="nvim"
alias snow="xsnow"
alias prepare="gopreload-prepare"
alias b="bun"
alias dstart='systemctl start docker'
alias dstop='systemctl stop docker.socket docker.service'
alias crypto="cointop"

claude-home() {
  CLAUDE_CONFIG_DIR="$HOME/.claude-home" claude "$@"
}

claude-rivero() {
  CLAUDE_CONFIG_DIR="$HOME/.claude-rivero" \
  CLAUDE_CODE_USE_VERTEX=1 \
  CLOUD_ML_REGION="europe-west1" \
  ANTHROPIC_VERTEX_PROJECT_ID="analytics-prototyping" \
  ANTHROPIC_MODEL="claude-sonnet-4-5@20250929" \
  claude "$@"
}
# rss russ ?
# podcasti podliner castero
# cointop

#       ████████████
#      ██ ◖COLORS◗ ██
#       ████████████

#▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
#▌ manpage colors ▐
#▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔

export MANPAGER='nvim +Man!'
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

#▁▁▁▁▁▁▁▁▁▁▁▁▁
#▌ ls colors ▐
#▔▔▔▔▔▔▔▔▔▔▔▔▔
eval $(dircolors -b $HOME/.dircolors)
#▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
#▌ completion colors ▐
#▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
#       ███████████████
#      ██ ◖SOURCERY◗ ██
#       ███████████████

export EDITOR="nvim"
export OPENER='rifle'
export VISUAL="nvim"
export BROWSER="firefox-nightly"
export BROWSERCLI=w3m
source ~/.zsh_plugins.sh
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$HOME/Scripts:$PATH"
export PATH=/home/nathias/.local/bin:$PATH
export BROWSERCLI=w3m
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# z
eval "$(zoxide init zsh)"
# fnm
export PATH=/home/nathias/.fnm:$PATH
export AWS_REGION="eu-west-1"
eval "$(direnv hook zsh)"

# pnpm
export PNPM_HOME="/home/nathias/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
source /etc/profile.d/google-cloud-cli.sh
export PATH="/home/nathias/.bun/bin:$PATH"


source /home/nathias/.config/broot/launcher/bash/br

