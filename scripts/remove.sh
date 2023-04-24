#!/bin/bash

RemoveAppList=(
    "cheese" #GNOME Cheese
    "baobab" #GNOME Disk Usage Analyzer
    "gnome-abrt" #GNOME Problem Reporting
    "gnome-boxes" #GNOME Boxes
    "gnome-calendar" #GNOME Calendar
    "gnome-characters" #GNOME Characters
    "gnome-clocks" #GNOME Clocks
    "gnome-connections" #GNOME Connections
    "gnome-contacts" #GNOME Contacts
    "gnome-disk-utility" #GNOME Disks
    "gnome-font-viewer" #GNOME Font Viewer
    "gnome-getting-started-docs" #GNOME Getting Started
    "gnome-maps" #GNOME Maps
    "gnome-photos" #GNOME Photos
    "gnome-tour" #GNOME Tour
    "gnome-weather" #GNOME Weather
    "gucharmap" #GNOME Character Map
    "info" #Info
    "libreoffice*" #LibreOffice
    "liveusb-creator" #Fedora Media Writer
    "rhythmbox" #Rhythmbox
    "simple-scan" #Document Scanner
    "yelp" #Help
)

for App in ${RemoveAppList[@]}
do
    dnf remove $App
done

rm /usr/share/applications/gnome-online-accounts-panel.desktop
