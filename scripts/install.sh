flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

FedoraInstallAppList=(
    "code"
    "gparted"
    "lm_sensors"
    "vim"
    "zsh"
)

FlathubInstallAppList=(
    "com.discordapp.Discord"
    "com.spotify.Client"
)

for FlathubApp in ${FlathubInstallAppList[@]}
do
    flatpak install -y flathub $FlathubApp
done

sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

for FedoraApp in ${FedoraInstallAppList[@]}
do
    dnf install -y $FedoraApp 
done
