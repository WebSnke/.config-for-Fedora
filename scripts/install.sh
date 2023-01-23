/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

BrewInstallAppList=(
    "discord"
    "freetube"
    "htop"
    "spotify"
    "steam"
    "tutanota"
    "visual-studio-code"
    "zsh"
    "zsh-autosuggestions"
)

FedoraInstallAppList=(
    "gparted"
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
}

InstallAppFunction
