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
alias sudoedit='doas rnano'
alias g="git"
# alias r="lfub"
 alias r="ranger"
# alias r="yazi"
alias rlf="lfub"
alias latexmk="latex-mk"
alias lf="lfub"
alias v="nvim"
alias c="cd"
alias l="eza"
alias y="paru"
alias m="man"
alias t="tig"
alias k="killall"
alias gr="rg --pretty --color=always"
alias zt="zathura"
alias yt="ytfzf -t"
alias ip='ip -color=always'
alias disk="dfc"
alias aic="ascii-image-converter"
alias mpp='echo "Matija Potočnik Pribošič" | ccopy'
alias lsf="ls -d */"
alias gemini="amfora"
alias rtorrent="cd /home/nathias/Downloads/torrents && rtorrent"
alias tr="cd /home/nathias/Downloads/torrents && rtorrent"
alias torrent="cd /home/nathias/Downloads/torrents && rtorrent"
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
alias fn="firefox"
alias reddit="rtv --enable-media"
alias twitch="twitch-curses"
alias twitter="turses"
alias email="neomutt"
#alias feh='feh -B \"#1c1c1c\"'
alias mpv='mpv'
alias scrot="scrot  /home/nathias/Pictures/Screenshots/%b%d_%H%M%S.png -d 5"
alias youtube="mpsyt"
# copy to clipboard, ctrl+c, ctrl+shift+c
alias ccopy='xclip -selection clipboard'
# paste from clipboard, ctrl+v, ctrl+shift+v
alias ppaste='xclip -selection clipboard -o'
# paste from highlight, middle click, shift+insert
alias sselect='xclip -selection primary -o'	
alias awsx="source _awsx"
alias remixfix="lsof -i :8002"
alias jackfix="sudo hda-verb /dev/snd/hwC0D0 0x1d SET_PIN_WIDGET_CONTROL 0x0"
alias subnet="$HOME/go/bin/subnet-cli"
alias neovim="nvim"
alias snow="xsnow"
alias prepare="gopreload-prepare"
alias b="bun"


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
export BROWSER="firefox"
export BROWSERCLI=w3m
source /usr/share/gdb
source ~/.zsh_plugins.sh
source /usr/share/gdb
export PATH="$PATH":"$HOME/.emacs.d/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$HOME/Scripts:$PATH"
export PATH=/home/nathias/.local/bin:$PATH
export SSH_KEY_PATH="~/.ssh/rsa_id"
export BROWSERCLI=w3m
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# z
eval "$(zoxide init zsh)"
# fnm
export PATH=/home/nathias/.fnm:$PATH
eval "`fnm env --multi`"
export AWS_REGION="eu-west-1"
export PATH="/home/nathias/.local/share/solana/install/active_release/bin:$PATH"
eval "$(direnv hook zsh)"


if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi


# diffc - diff commands
# - allows to call as: diffc 'command one' 'command two'
#   instead of:        diff  <(command one) <(command two)
#   (Just to save typing a few characters. Lol I'm a lazy programmer)
function diffc () {
  if [[ "$#" != "2" ]]; then
    echo "diffc requires two arguments"
    return 1
  fi

  local command=$(printf 'diff <( %s ) <( %s )' "$1" "$2")
  echo $command
  eval $command
}

# diffh - diff history
# - make a diff of the output of the last two commands in the shell history
function diffh () {
  # first one is 2nd to last. second is last
  # remove preceeding spaces
  local first=$(fc -ln -2 -2)
  local second=$(fc -ln -1 -1)

  # print and run diff
  local command=$(printf 'diff <( %s ) <( %s )' "${first}" "${second}")
  echo $command
  eval $command

  local error_code=$?

  # replace this 'diffh' entry in history with the command 
  history -s "$(echo $command)"
  
  return $error_code
}

# pnpm
export PNPM_HOME="/home/nathias/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
source /etc/profile.d/google-cloud-cli.sh

if [ -e /home/nathias/.nix-profile/etc/profile.d/nix.sh ]; then . /home/nathias/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

export PATH="/home/nathias/.bun/bin:$PATH"
