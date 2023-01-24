sudo yum groupinstall 'Development Tools'
sudo yum install procps-ng curl file git

BrewInstallAppList=(
    "zsh"
    "zsh-autosuggestions"
    "zsh-syntax-highlighting"
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
