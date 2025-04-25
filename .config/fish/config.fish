#if status is-interactive
  	# Commands to run in interactive sessions can go here
set -Ux LANG en_US.UTF-8
set -Ux LC_ALL en_US.UTF-8

#set -Ux QT_QPA_PLATFORMTHEME qt5ct
#set -Ux QT_STYLE_OVERRIDE kvantum


set -g fish_greeting""
if test (tty) = "/dev/tty1"
   exec sway



end
