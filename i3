
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
#          ███   █▀              __
#          ███                  /\ \
#          ███                 /  \ \
#          █▀             _   / /\ \ \
#                        (_) / / /\ \ \
#                        __  \/_//_\ \ \
#                       [  |   __\___ \ \
#                        | |  / /\   \ \ \
#                       [___ / /_/____\ \ \
#                           /__________\ \ \
#                           \_____________\/
#
#
set $mod Mod1
set $mod2 Mod4

set $right l
set $up k
set $down j
set $left h

set $w1 1
set $w2 2
set $w3 3
set $w4 4
set $w5 5
set $w6 6
set $w7 7
set $w8 8
set $w9 9
set $w10 0

# window titles font
font I-pixel-u 14

# mouse+$mod to drag floating windows
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec --no-startup-id st

# kill focused window
bindsym $mod+q kill

# start rofi
bindsym $mod+d exec --no-startup-id  rofi --cache -show combi 

# change focus
bindsym $mod+$left focus left
bindsym $mod+$down focus down
bindsym $mod+$up focus up
bindsym $mod+$right focus right

# move focused window
bindsym $mod+Shift+$left move left
bindsym $mod+Shift+$down move down
bindsym $mod+Shift+$up move up
bindsym $mod+Shift+$right move right

# split in horizontal orientation
bindsym $mod+c split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+x floating toggle

# change focus between tiling / floating windows
bindsym $mod+x focus mode_toggle

# switch to workspace
bindsym $mod+1 workspace $w1
bindsym $mod+2 workspace $w2
bindsym $mod+3 workspace $w3
bindsym $mod+4 workspace $w4
bindsym $mod+5 workspace $w5
bindsym $mod+6 workspace $w6
bindsym $mod+7 workspace $w7
bindsym $mod+8 workspace $w8
bindsym $mod+9 workspace $w9
bindsym $mod+0 workspace $w10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace $w1
bindsym $mod+Shift+2 move container to workspace $w2
bindsym $mod+Shift+3 move container to workspace $w3
bindsym $mod+Shift+4 move container to workspace $w4
bindsym $mod+Shift+5 move container to workspace $w5
bindsym $mod+Shift+6 move container to workspace $w6
bindsym $mod+Shift+7 move container to workspace $w7
bindsym $mod+Shift+8 move container to workspace $w8
bindsym $mod+Shift+9 move container to workspace $w9
bindsym $mod+Shift+0 move container to workspace $w10

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+q exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window?s width.
        # Pressing right will grow the window?s width.
        # Pressing up will shrink the window?s height.
        # Pressing down will grow the window?s height.
        bindsym $left resize shrink width 10 px or 10 ppt
        bindsym $down resize grow height 10 px or 10 ppt
        bindsym $up resize shrink height 10 px or 10 ppt
        bindsym $right resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"

# polybar
exec_always --no-startup-id ~/.config/scripts/polybar/launch.sh

# network manager tray icon
#exec --no-startup-id nm-applet

## style
# border color
# class                          border   backgr.  text
client.focused  				         #000000  #181818  #315858  #181818
client.unfocused				         #000000  #181818  #315858  #181818
client.focused_inactive			     #000000  #181818  #2c2e2f  #181818
client.urgent  	              	 #383a3b  #181818  #ee0000  #181818

# audio
#bindsym XF86AudioRaiseVolume exec "amixer -q sset Master,0 5+ unmute"
#bindsym XF86AudioLowerVolume exec "amixer -q sset Master,0 5- unmute"
#bindsym XF86AudioMute exec "amixer -D pulse set Master 1+ toggle"

# disable title bar
new_window pixel

# hide mouse
exec --no-startup-id unclutter -idle 1

# no mouse follow
focus_follows_mouse no

# Background
#exec --no-startup-id feh --bg-scale ~/pictures/background/synthwave1.jpg

# Compton
#exec --no-startup-id compton --vsync opengl --no-fading-openclose

# Switch keyboard language
#bindsym $mod+space exec ~/.config/scripts/keyboard_lang.sh

# Lockscreen
bindsym $mod+F2 exec ~/.config/scripts/i3lock.sh

# Gaps
smart_gaps on
gaps inner 12
#gaps outer 0

#hide_edge_borders none|vertical|horizontal|both|smart
#hide_edge_borders smart_no_gaps

floating_minimum_size 75 x 50


# assign
assign [class="^Nightly$"] 1
assign [class="^krita$"] 4
assign [title="^Google Chrome$"] 5
assign [title="^cmus$"] 8
assign [class="obsidian"] 9
assign [title="^weechat$"] 0
assign [title="^WeeChat$"] 0

# autostart
exec --no-startup-id ../i3/i3-alternating-layout/alternating_layouts.py
exec --no-startup-id firefox
#exec --no-startup-id st -e weechat
exec_always --no-startup-id i3-workspace-brightness
exec --no-startup-id greenclip daemon>/dev/null
exec --no-startup-id /usr/bin/dunst
exec --no-startup-id /usr/lib/kdeconnectd
