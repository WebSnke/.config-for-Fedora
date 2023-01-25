#!/bin/bash

RemoveAppList=(
    "cheese" #GNOME Cheese
    "baobab" #GNOME Disk Usage Analyzer
    "eog" #GNOME Image Viewer
    "evince" #Document Viewer
    "gnome-abrt" #GNOME Problem Reporting
    "gnome-boxes" #GNOME Boxes
    "gnome-calendar" #GNOME Calendar
    "gnome-characters" #GNOME Characters
    "gnome-connections" #GNOME Connections
    "gnome-contacts" #GNOME Contacts
    "gnome-disk-utility" #GNOME Disks
    "gnome-font-viewer" #GNOME Font Viewer
    "gnome-getting-started-docs" #GNOME Getting Started
    "gnome-logs" #GNOME Logs
    "gnome-maps" #GNOME Maps
    "gnome-photos" #GNOME Photos
    "gnome-system-monitor" #GNOME System Monitor
    "gnome-tour" #GNOME Tour
    "gnome-weather" #GNOME Weather
    "gucharmap" #GNOME Character Map
    "info" #Info
    "libreoffice*" #LibreOffice
    "liveusb-creator" #Fedora Media Writer
    "rhythmbox" #Rhythmbox
    "simple-scan" #Document Scanner
    "totem" #GNOME Videos
    "totem-plugins" #GNOME Videos
    "ubuntu-docs" #Docs
    "yelp" #Help
)

for App in ${RemoveAppList[@]}
do
    dnf remove $App
done
