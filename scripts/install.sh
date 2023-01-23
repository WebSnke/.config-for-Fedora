git clone https://github.com/Homebrew/brew homebrew

eval "$(homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"

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
        brew install --cask $BrewApp
    done
    
    for FedoraApp in ${FedoraInstallAppList[@]}
    do
        dnf install $FedoraApp
    done
}

InstallAppFunction
