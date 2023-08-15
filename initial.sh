#!/bin/bash

# --- Step 1: Upgrades and install VNC ---
sudo apt update && sudo apt upgrade -y
sudo timedatectl set-timezone America/New_York
sudo apt install xfce4 xfce4-goodies -y
sudo apt install tigervnc-standalone-server tigervnc-viewer -y
sudo apt install net-tools -y
sudo apt install nmap -y
vncserver -localhost no :1 -geometry 1920x980

# --- Step 2: Install packages ---
sudo apt install python3-pip -y
sudo apt install python3 -y
sudo apt install sqlitebrowser -y
sudo apt install firefox -y

# --- Step 3: Installing python packages ---
pip install pandas
pip install numpy
pip install streamlit
pip install openpyxl
pip install mplfinance
pip install plotly
pip install scipy
pip install requests
pip install aiohttp
pip install ib_insync

# --- Step 4: Creating Programs Folder and navigating to Desktop
mkdir Programs
cd Desktop

# --- Step 5: Downloading Visual Studio Code Installer ---
curl -L -O "https://packages.microsoft.com/repos/code/pool/main/c/code/code_1.81.0-1690980880_amd64.deb"

# --- Step 6: Downloading IB Gateway Installer ---
curl -L -O https://download2.interactivebrokers.com/installers/ibgateway/latest-standalone/ibgateway-latest-standalone-linux-x64.sh

# --- STEP 7: Installing ThinkOrSwim ---

# --- Step 7.1: Installing Azul's OpenJDK 11 ---
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9
sudo apt-add-repository 'deb http://repos.azulsystems.com/ubuntu stable main'
sudo apt update
sudo apt install zulu-11 -y
sudo update-alternatives --config java

# --- Step 7.2: Downloading ThinkOrSwim Installer ---
curl -L -O https://mediaserver.thinkorswim.com/installer/InstFiles/thinkorswim_installer.sh


# --- COMMANDS TO EXECUTE ON GUI TO DOWNLOAD SOFTWARES ---

# VSC
# step 2: Installing the downloaded packages.
#sudo dpkg -i code.deb

# step 3: Installing any missing dependencies.
#sudo apt install -f

# step 4: removing the installer after installation
#rm code.deb

# step 5: if using root, need to adjust settings in order for it to run
#sed -i 's|Exec=/usr/bin/code %U|Exec=/usr/bin/code --no-sandbox --user-data-dir=/root/.vscode-root-user %U|' /usr/share/applications/code.desktop


# IB GATEWAY
# step 2: Making the script executable
#chmod +x ibgateway-latest-standalone-linux-x64.sh

# step 3: Beginning installation process
#bash ibgateway-latest-standalone-linux-x64.sh

# step 4: Removing the installer after installation
#rm ibgateway-latest-standalone-linux-x64.sh


# THINKORSWIM
# step 8: making the script executable
#chmod +x thinkorswim_installer.sh

# step 9: running the installer
#bash thinkorswim_installer.sh

# step 10: removing the installer after installation
#rm thinkorswim_installer.sh
