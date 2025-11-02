# Start Hyprland on tty1 if no X/Wayland session running
if [[ -z $DISPLAY && $(tty) = /dev/tty1 ]]; then
  exec Hyprland
fi


SSH_ENV="$HOME/.ssh/agent-environment"

function start_agent {
    echo "Starting ssh-agent..."
    ssh-agent -s | sed 's/^echo/#echo/' > "${SSH_ENV}"
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    ssh-add ~/.ssh/github
}

if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    ps -p $SSH_AGENT_PID > /dev/null || {
        start_agent
    }
else
    start_agent
fi
