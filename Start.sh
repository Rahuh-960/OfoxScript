#!/bin/bash
sudo rm -rf /usr/share/dotnet /etc/mysql /etc/php /etc/apt/sources.list.d
docker rmi `docker images -q`
sudo apt-get remove account-plugin-facebook account-plugin-flickr account-plugin-jabber account-plugin-salut account-plugin-twitter account-plugin-windows-live account-plugin-yahoo aisleriot brltty duplicity empathy empathy-common example-content gnome-accessibility-themes gnome-contacts gnome-mahjongg gnome-mines gnome-orca gnome-screensaver gnome-sudoku gnome-video-effects gnomine landscape-common libreoffice-avmedia-backend-gstreamer libreoffice-base-core libreoffice-calc libreoffice-common libreoffice-core libreoffice-draw libreoffice-gnome libreoffice-gtk libreoffice-impress libreoffice-math libreoffice-ogltrans libreoffice-pdfimport libreoffice-style-galaxy libreoffice-style-human libreoffice-writer libsane libsane-common mcp-account-manager-uoa python3-uno rhythmbox rhythmbox-plugins rhythmbox-plugin-zeitgeist sane-utils shotwell shotwell-common telepathy-gabble telepathy-haze telepathy-idle telepathy-indicator telepathy-logger telepathy-mission-control-5 telepathy-salut totem totem-common totem-plugins printer-driver-brlaser printer-driver-foo2zjs printer-driver-foo2zjs-common printer-driver-m2300w printer-driver-ptouch printer-driver-splix
git config --global user.name "Samyak"
git config --global user.email "jainsamyak2002.sj@gmail.com"
sudo -E apt-get -y purge azure-cli ghc* zulu* hhvm llvm* firefox google* dotnet* powershell openjdk* mysql* php* 

bash
cd
mkdir bin 
cd bin 
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo 
chmod a+x ~/bin/repo
git clone https://github.com/akhilnarang/scripts.git scripts
cd
bash bin/scripts/setup/android_build_env.sh
bash bin/scripts/setup/install_android_sdk.sh

echo "      Do you wanna Sync OrangeFox ? 
echo "      1. Yes "
echo "      2. No  "
read Ans
if ( Ans = 1 )
then
cd
mkdir OrangeFox
cd OrangeFox
repo init -u https://gitlab.com/OrangeFox/Manifest.git -b fox_9.0 --depth=1
repo sync -j8 --force-sync --optimized-fetch --no-clone-bundle
cd
cd OrangeFox
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export LC_ALL="C"
export OF_MAINTAINER="Samyak , Ryukendo9"
export FOX_VERSION="Unofficial"
fi


