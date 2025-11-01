# Start Hyprland on tty1 if no X/Wayland session running
if [[ -z $DISPLAY && $(tty) = /dev/tty1 ]]; then
  exec Hyprland
fi
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    eval "$(ssh-agent -s)"
fi
ssh-add -l > /dev/null || ssh-add ~/.ssh/github
