FedoraInstallAppList=(
    "gparted"
    "neofetch"
    "util-linux-user"
    "vim"
    "zsh"
)

FlathubInstallAppList=(
    "com.discord.client"
    "com.spotify.client"
)

for FedoraApp in ${FedoraInstallAppList[@]}
do
    dnf install $FedoraApp
done

for FlathubApp in ${FlathubInstallAppList[@]}
do
    flatpak install flathub $FlathubApp
done

sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install ffmpeg
