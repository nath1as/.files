![Nathias dotfiles](images/nathiasdotfiles.png)

#### dotfiles optimized for speed, UNIX as IDE and vim-keys everywhere

## ZSH

### packages

-   zsh
-   antibody
-   zoxide

### plugins

-   denysdovhan/spaceship-prompt
-   zdharma-continuum/fast-syntax-highlighting
-   gko/project
-   gko/ssh-connect
-   thetic/extract
-   zpm-zsh/colors
-   jeffreytse/zsh-vi-mode
-   zsh-users/zsh-completions
-   lukechilds/zsh-better-npm-completion
-   g-plane/zsh-yarn-autocompletions
-   eastokes/aws-plugin-zsh
-   sudosubin/zsh-github-cli

### SSH connect

gko/ssh-connect

Simple ssh manager based on bash history

https://github.com/gko/ssh-connect

https://github.com/eendroroy/zed-zsh

### Extract

thetic/extract

Fork of the oh-my-zsh extract plugin.

https://github.com/thetic/extract

### Colors

zpm-zsh/colors

Zsh plugin for colorization for various programs.

https://github.com/zpm-zsh/colors

## ST

## NEOVIM

## FIREFOX

### packages:

-   firefox
-   firefox-hardening

### set about:config

-   disable Alt key menu toggle:
    ui.key.menuAccessKeyFocuses to false
-   disable the Quick Find hotkey:
    accessibility.typeaheadfind.manual to false

## WEECHAT

### packages:

-   weechat
-   bitlbee-discord-git
-   bitlbee-facebook
-   bitlbee-libpurple
-   bitlbee-mastodon-git
-   bitlbee-steam-git

### scripts:

-   colorize_lines
-   autosort
-   automerge
-   bitlbee_completion
-   buffer_dmenu
-   cmus
-   go
-   twitch
-   urlserver
-   vimode
-   weestreamer

## TTY

edit /etc/issue to change login

## PARU

-   Color option in /etc/pacman.conf

## GIT

### packages

-   git
-   tig
-   lazygit
-   diff-so-fancy
-   git-crypt

### extensions

-   legit
-   github-cli

### .gitconfig

[user]
name = nathias
email = n@th1.as
username = nath1as

[core]
pager = less -F -X
editor = nvim
excludesFile = .eslintcache

[pull]
rebase = true

[url "git@github.com:"]
insteadOf = gh:

[url "git@gitlab.com:"]
insteadOf = gl:

[url "aur@aur.archlinux.org:"]
insteadOf = aur:

[pager]
diff = diff-so-fancy | less --tabs=1,5 -RFX
show = diff-so-fancy | less --tabs=1,5 -RFX

[alias]
l = log -8 --decorate=short --color --format=format:'%C(blue bold)%C(bold cyan)%h%C(reset)%C(reset) %C(black)• %C(black)%an • %C(magenta )\n %C(blue bold)∟► %C(magenta)%s%C(green bold) ✔'
s = "status -s"
d = "status --show-stash --long -v"
a = "add -A"
c = "commit -m"
pls = "commit --no-verify -m"
f = "fetch --all --prune"
ps = "push --progress"
pl = "pull"
sw = "switch"

; jira
ticket = "!f() { git rev-parse --abbrev-ref HEAD | grep -Eo '([A-Z]{3,}-)([0-9]+)' -m 1 ; }; f"
t = "!f() { TICKET=$(git ticket); git commit -m \"$TICKET $1\"; }; f"
; legit
sync = !legit sync
publish = !legit publish
unpublish = !legit unpublish
undo = !legit undo
branches = !legit branches

[color]
diff = always
status = always
branch = always
interactive = always
ui = true
pager = true

[color "diff"]
plain = cyan
meta = green
frag = magenta
old = red bold
new = green bold
commit = cyan bold
whitespace = magenta reverse

[color "branch"]
current = green bold
local = cyan bold
remote = magenta bold
plain = normal bold

[color "status"]
untracked = magenta bold
header = cyan
updated = green
nobranch = red
added = green bold
changed = red bold

[color "grep"]
match = green bold

[color "interactive"]
prompt = magenta bold
header = cyan bold
help = green bold
error = red bold

[color "diff-highlight"]
oldNormal = red bold

[init]
defaultBranch = master
[filter "lfs"]
process = git-lfs filter-process
required = true
clean = git-lfs clean -- %f
smudge = git-lfs smudge -- %f

## Javascript

### packages

-   fnm
-   prettier

# INSTALLED PACKAGES

alsa-tools 1.2.5-2
antibody 6.1.1-1
audacity 1:3.3.2-1
auto-cpufreq 1.9.8-1
autoconf 2.71-4
automake 1.16.5-2
base 3-1
base-devel 1-1
bat 0.23.0-3
binutils 2.40-6
bison 3.8.2-6
bitlbee-facebook 1.2.2-1
bitlbee-libpurple 3.6-1
bitlbee-steam-git 367.a6444d2-1
blender 17:3.6.0-3
blueman-git 2.3.beta1.r134.gb76b1bb2-1
bluez 5.68-1
bluez-utils-compat 5.66-2
bottom 0.9.3-1
calibre 6.22.0-1
calibre-web 0.6.20-4
chafa 1.12.4-3
cmus-git v2.10.0.r15.gaa6286b-1
cmusfm 0.4.1-1
code 1.79.2-1
cointop 1.6.10-1
curlie 1.7.1-1
defold 1.4.7-1
dfc 3.1.1-3
dhcpcd 10.0.1-1
dialog 1:1.3_20230209-1
diff-so-fancy 1.4.4-1
direnv 2.32.3-1
discord 0.0.28-1
docker 1:24.0.2-1
docker-compose 2.20.0-1
dunst 1.9.2-1
electron19-bin 19.1.9-1
ethtool 1:6.3-1
exa 0.10.1-7
fakeroot 1.32-1
feh 3.10-1
ffmpegthumbnailer 2.2.2-5
file 5.44-3
findutils 4.9.0-3
firefox 115.0.2-1
flex 2.6.4-5
fnm 1.34.0-1
fzf 0.42.0-1
gawk 5.2.2-1
gcc 13.1.1-1
gettext 0.22-1
git 2.41.0-1
github-cli 2.32.0-1
glances 3.4.0.3-1
gnome-keyring 1:42.1-3
google-chrome 114.0.5735.198-1
graphicsmagick 1.3.40-3
grep 3.11-1
groff 1.23.0-2
gtop 1.1.3-1
gzip 1.12-2
hashcat 1:6.2.6-1
hashcat-utils 1.9-2
highlight 4.6-1
htop-vim 3.2.2-1
hyperfine 1.17.0-1
i3-agenda 1.6.3-1
i3-volume 3.6.1-1
i3-wm 4.22-4
i3-workspace-brightness 1.0.3-1
i3blocks 1.5-3
i3lock 2.14.1-1
i3status 2.14-1
informant 0.4.6-1
intel-opencl 5.0.r63503-2
keybase-bin 6.0.2_20220610191041+a459abf326-1
krita 5.1.5-10
lazydocker-git 0.12.r1.gc88fba5-1
lazygit 0.38.2-1
lftp 4.9.2-1
lib32-mesa 23.1.3-1
lib32-vulkan-intel 23.1.3-1
libfido2 1.13.0-1
libgnome-keyring 3.12.0+13+g4f8ab73-3
libimobiledevice 1.3.0-9
libtool 2.4.7+4+g1ec8fa28-3
libxft-bgra 2.3.5-1
linux 6.4.3.arch1-1
linux-firmware 20230625.ee91452d-4
linux-headers 6.4.3.arch1-1
linux-lts 6.1.38-1
linux-lts-headers 6.1.38-1
lmms 1.2.2-16
lolcat 100.0.1-1
lvm2 2.03.21-1
lxappearance 0.6.3-4
lxrandr 0.3.2-3
lynx 2.8.9-6
m4 1.4.19-3
make 4.4.1-2
man-db 2.11.2-1
man-pages 6.04-1
mediainfo 23.06-1
mpv 1:0.35.1-6
mpv-autosub-git r52.3511535-3
mupdf 1.22.2-1
ncdu 2.2.2-2
neofetch 7.1.0-2
neovim 0.9.1-1
neovim-remote 2.5.1-1
nerd-fonts-complete-mono-glyphs 2.1.0-1
netctl 1.28-2
network-manager-applet 1.32.0-3
networkmanager 1.42.6-1
newsboat 2.32-1
nmap 7.94-1
noto-fonts-emoji 20220920-1
obs-studio 29.1.3-1
obsidian 1.3.5-1
odt2txt 0.5-5
opendoas 6.8.2-1
openssh 9.3p1-2
openssl-1.1 1.1.1.u-1
otf-font-awesome 6.4.0-1
otf-powerline-symbols-git 20140317-1
pacman 6.0.2-7
pam-u2f 1.3.0-1
pandoc-bin 3.1.3-1
paru-git 1.8.2.r5.g81cd90d-1
patch 2.7.6-10
pavucontrol 1:5.0+r64+geba9ca6-1
pgcli-git v3.5.0.r20.gc2f2f5ab-1
pkgconf 1.8.1-1
polybar 3.6.3-3
poppler 23.06.0-1
prettyping 1:1.0.1-3
pulseaudio 16.1-6
pulseaudio-bluetooth 16.1-6
pulseaudio-control 3.1.1-1
ranger 1.9.3-9
rebuild-detector 4.4.2-1
ripgrep-all 0.9.6-4
ripgrep-git 13.0.0.r20.9b01a8f-1
rofi 1.7.5-1
rsync 3.2.7-4
rtorrent-vi-color 0.9.8-1
rustup 1.26.0-3
scrot 1.10-1
sed 4.9-3
setserial 2.17-5
sshfs 3.7.3-1
stalonetray 0.8.5-1
stellarium 23.2-1
subliminal 2.1.0-1
svgcleaner 0.9.5-3
svgo 3.0.2-1
sxiv 26-1
syncthing 1.23.6-1
systemd-swap-git 4.4.0.r39.g6e4fd33-1
texinfo 7.0.3-1
texlive-basic 2023.66594-15
texlive-bibtexextra 2023.66594-15
texlive-fontsextra 2023.66594-15
texlive-formatsextra 2023.66594-15
texlive-games 2023.66594-15
texlive-humanities 2023.66594-15
texlive-latexextra 2023.66594-15
texlive-mathscience 2023.66594-15
texlive-music 2023.66594-15
texlive-pictures 2023.66594-15
texlive-pstricks 2023.66594-15
texlive-publishers 2023.66594-15
throttled 0.10.0-2
thunar 4.18.6-1
tig 2.5.8-1
tldr 3.2.0-1
tlp 1.5.0-6
tmux 3.3_a-7
toilet 0.3.r155.3eb9d58-1
tor 0.4.7.13-2
torbrowser-launcher 0.3.6-2
trezor-suite-appimage 23.6.1-1
trezord-go 2.0.32-1
ttc-iosevka 22.0.0-1
ttf-hack 3.003-6
ttf-jetbrains-mono 2.304-1
ttf-joypixels 7.0.0-1
ttf-nerd-fonts-symbols 3.0.2-1
ueberzug 18.2.1-1
ums 13.4.1-1
unrar 1:6.2.8-1
unzip 6.0-19
usbutils 015-3
vidcutter 6.0.5.1-7
vim 9.0.1676-1
w3m 0.5.3.git20230121_1-1
waydroid 1.4.1-1
weechat 4.0.1-1
wget 1.21.4-1
which 2.21-6
wireless_tools 30.pre9-3
wpa_supplicant 2:2.10-8
xclip 0.13-4
xdg-utils-git 1.1.3.r25.g8ae0263-1
xf86-input-libinput 1.3.0-1
xorg-bdftopcf 1.1.1-1
xorg-fonts-misc 1.0.4-1
xorg-iceauth 1.0.9-1
xorg-mkfontscale 1.2.2-1
xorg-server 21.1.8-2
xorg-server-devel 21.1.8-2
xorg-sessreg 1.1.3-1
xorg-setxkbmap 1.3.4-1
xorg-smproxy 1.0.7-1
xorg-x11perf 1.6.2-1
xorg-xauth 1.1.2-1
xorg-xbacklight 1.2.3-3
xorg-xcmsdb 1.0.6-1
xorg-xcursorgen 1.0.8-1
xorg-xdpyinfo 1.3.4-1
xorg-xdriinfo 1.0.7-1
xorg-xev 1.2.5-1
xorg-xgamma 1.0.7-1
xorg-xhost 1.0.9-1
xorg-xinit 1.4.2-1
xorg-xinput 1.6.4-1
xorg-xkbcomp 1.4.6-1
xorg-xkbevd 1.1.5-1
xorg-xkbutils 1.0.5-1
xorg-xkill 1.0.6-1
xorg-xlsatoms 1.1.4-1
xorg-xlsclients 1.1.5-1
xorg-xmodmap 1.0.11-1
xorg-xpr 1.1.0-1
xorg-xprop 1.2.6-1
xorg-xrandr 1.5.2-1
xorg-xrdb 1.2.2-1
xorg-xrefresh 1.0.7-1
xorg-xset 1.2.5-1
xorg-xsetroot 1.1.3-1
xorg-xvinfo 1.1.5-1
xorg-xwd 1.0.9-1
xorg-xwininfo 1.1.6-1
xorg-xwud 1.0.6-1
xsel 1.2.1-1
xsnow-comp-patch-git 19-1
xterm 384-1
yarn 1.22.19-1
yubico-pam 2.27-2
zathura 0.5.2-2
zathura-pdf-mupdf 0.4.0-3
zoxide 0.9.1-1
zsh 5.9-4

### piracy

-   amule
-   rtorrent

BTW, I use Arch
