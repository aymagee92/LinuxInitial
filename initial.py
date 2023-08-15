
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
pip install asyncio
pip install ib_insync

# --- Step 4: Creating Programs Folder and navigating to Desktop
mkdir Programs
cd Desktop


# --- Step 5: Installing Visual Studio Code ---
# step 1: Downloading VSC from internet
curl -L "https://packages.microsoft.com/repos/code/pool/main/c/code/code_1.81.0-1690980880_amd64.deb" -o code.deb

# step 2: Installing the downloaded packages.
sudo dpkg -i code.deb

# step 3: Installing any missing dependencies.
sudo apt install -f

# step 4: removing the installer after installation
rm code.deb

# step 5: if using root, need to adjust settings in order for it to run
sed -i 's|Exec=/usr/bin/code %U|Exec=/usr/bin/code --no-sandbox --user-data-dir=/root/.vscode-root-user %U|' /usr/share/applications/code.desktop



# --- STEP 6: Installing IB Gateway ---
# step 1: Downloading IB Gateway from internet
curl -O https://download2.interactivebrokers.com/installers/ibgateway/latest-standalone/ibgateway-latest-standalone-linux-x64.sh

# step 2: Making the script executable
chmod +x ibgateway-latest-standalone-linux-x64.sh

# step 3: Beginning installation process
bash ibgateway-latest-standalone-linux-x64.sh

# step 4: Removing the installer after installation
rm ibgateway-latest-standalone-linux-x64.sh



# --- STEP 7: Installing ThinkOrSwim ---

# step 2: obtain Azul's Public Key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9

# step 3: Add Azul's Package to the APT Repository
sudo apt-add-repository 'deb http://repos.azulsystems.com/ubuntu stable main'

# step 4: update package information
sudo apt update

# step 5: install Zulu OpenJDK 11
sudo apt install zulu-11 -y

# step 6: Change default java to Zulu 11
sudo update-alternatives --config java

# step 7: Downloading from internet
curl -O https://mediaserver.thinkorswim.com/installer/InstFiles/thinkorswim_installer.sh

# step 8: making the script executable
chmod +x thinkorswim_installer.sh

# step 9: running the installer
bash thinkorswim_installer.sh

# step 10: removing the installer after installation
rm thinkorswim_installer.sh
