git clone https://github.com/Homebrew/brew homebrew

eval "$(homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"

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
