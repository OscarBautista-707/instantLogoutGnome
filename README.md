# instantLogoutGnome
A script that fixes the keybind in the Gnome Desktop Environment that will make the current CTRL+ALT+Delete Keybind instantly logs out the user
## What does it do exactly?
This script will first disable the current logout keybind with `gsettings set org.gnome.settings-daemon.plugins.media-keys logout []` 
<br> 
<br>
Next, it will create a new empty custom keybind with no values; `gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"`
<br>
<br>
After that, it will asign it a name shown in Settings, the dbus command to log out, and the actual keybind. Listed Below
<br>
<br>
Sets Name: `gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Better Logout'`
<br>
<br>
Sets Command: `gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'dbus-send --session --type=method_call --print-reply --dest=org.gnome.SessionManager /org/gnome/SessionManager org.gnome.SessionManager.Logout uint32:1'`
<br>
<br>
Sets the Keybind: `gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Control><Alt>Delete'`
<br>
<br>
> At the end, it will display a short success message and credit the author and state the liscence.
