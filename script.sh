#!/BIN/BASH

## Script by Oscar Bautista
## This script is under the MIT Liscence

## Disable current logout
gsettings set org.gnome.settings-daemon.plugins.media-keys logout [] &&

## Creates new empty keybind
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']" &&

## Sets the name of new keybind
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Better Logout' &&

## Sets the command of new keybind
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'dbus-send --session --type=method_call --print-reply --dest=org.gnome.SessionManager /org/gnome/SessionManager org.gnome.SessionManager.Logout uint32:1' &&

## Sets the actual keybind
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Control><Alt>Delete' &&

## Success message
echo "Success! Ctrl+Alt+Delete will now instantly logout. Script by Oscar Bautista. Released under MIT Liscence"
