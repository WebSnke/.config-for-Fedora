flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

FedoraInstallAppList=(
    "blender"
    "gparted"
    "groupinstall 'Development Tools'"
    "htop"
    "neofetch"
    "vim"
    "zsh"
)

FlatpakInstallAppList=(
    "freetube"
    "spotify"
    "steam"
    "tutanota"
    "visualstudio"
)

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
sudo dnf -y install ffmpeg
