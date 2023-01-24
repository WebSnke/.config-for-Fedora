sudo yum groupinstall 'Development Tools' #Add Development Tools for Homebrew
sudo yum install procps-ng curl file git

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo #Install Flathub

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
    "brave"
    "freetube"
    "spotify"
    "steam"
    "tutanota"
    "visualstudio"
)

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

sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y install ffmpeg #Fix Video
