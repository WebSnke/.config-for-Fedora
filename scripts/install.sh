flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo #Install Flathub

FedoraInstallAppList=(
    "blender"
    "gparted"
    "htop"
    "vim"
    "zsh"
)

FlatpakInstallAppList=(
    "brave"
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

sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" #Install Oh My Zsh

sudo dnf -y install ffmpeg #Fix Video
