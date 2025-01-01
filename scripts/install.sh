FedoraInstallAppList=(
    "neofetch"
)

FlathubInstallAppList=(
    "com.spotify.Client"
    "com.visualstudio.code"
    "io.github.shiftey.Desktop"
)

for FedoraApp in ${FedoraInstallAppList[@]}
do
    dnf install -y $FedoraApp 
done

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

for FlathubApp in ${FlathubInstallAppList[@]}
do
    flatpak install -y flathub $FlathubApp
done
