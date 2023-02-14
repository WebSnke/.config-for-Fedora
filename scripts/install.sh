flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

FedoraInstallAppList=(
    "gparted"
    "neofetch"
    "nodejs"
    "util-linux-user"
    "vim"
    "zsh"
)

FlathubInstallAppList=(
    "com.discordapp.Discord"
    "com.spotify.Client"
    "org.chromium.Chromium"
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

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

dnf check-update
sudo dnf install code
