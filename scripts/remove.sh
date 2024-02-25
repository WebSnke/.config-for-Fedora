#!/bin/bash

RemoveAppList=(
    "cheese" #GNOME Cheese
    "baobab" #GNOME Disk Usage Analyzer
    "gnome-abrt" #GNOME Problem Reporting
    "gnome-boxes" #GNOME Boxes
    "gnome-characters" #GNOME Characters
    "gnome-connections" #GNOME Connections
    "gnome-font-viewer" #GNOME Font Viewer
    "gnome-getting-started-docs" #GNOME Getting Started
    "gnome-maps" #GNOME Maps
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
    dnf remove $App -y
done
