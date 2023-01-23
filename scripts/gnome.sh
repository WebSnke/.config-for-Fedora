#!/bin/bash

gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'

dconf load / < ./shortcuts/media.conf
dconf load / < ./shortcuts/window.conf
