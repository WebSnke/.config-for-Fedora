sudo yum groupinstall 'Development Tools'
sudo yum install procps-ng curl file git

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

BrewInstallAppList=(
    "zsh"
    "zsh-autosuggestions"
    "zsh-syntax-highlighting"
)

FedoraInstallAppList=(
    "blender"
    "gparted"
    "vim"
)

FlatpakInstallAppList=(
    "freetube"
    "spotify"
    "steam"
    "tutanota"
    "visualstudio"
)

function InstallAppFunction() {
    for BrewApp in ${BrewInstallAppList[@]}
    do
        brew install $BrewApp
    done
    
    for FedoraApp in ${FedoraInstallAppList[@]}
    do
        dnf install $FedoraApp
    done
    
    for FlatpakApp in ${FlatpakInstallAppList[@]}
    do
        flatpak install $FlatpakApp
    done
}

InstallAppFunction
