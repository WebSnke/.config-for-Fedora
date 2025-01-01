flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

FedoraInstallAppList=(
    "neofetch"
)

FlathubInstallAppList=(
    "com.spotify.Client"
    "com.visualstudio.code"
    "io.github.shiftey.Desktop"
)

for FlathubApp in ${FlathubInstallAppList[@]}
do
    flatpak install -y flathub $FlathubApp
done

for FedoraApp in ${FedoraInstallAppList[@]}
do
    dnf install -y $FedoraApp 
done
