To export your settings to a "dtp_settings" file:
dconf dump /org/gnome/shell/extensions/dash-to-panel/ > dtp_settings

and then import them on another pc with:
dconf load /org/gnome/shell/extensions/dash-to-panel/ < dtp_settings