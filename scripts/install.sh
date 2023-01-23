/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

InstallAppList=(
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

function InstallAppFunction() {
    for App in ${InstallAppList[@]}
    do
        brew install $App
    done
}

InstallAppFunction
