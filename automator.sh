#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
YELOW="\e[33m"  
BLUE="\e[34m"
ENDCOLOR="\e[0m";
echo 
echo 
echo _█████╗_██╗___██╗████████╗_██████╗_███╗___███╗_█████╗_████████╗_██████╗_██████╗ 
echo ██╔══██╗██║___██║╚══██╔══╝██╔═══██╗████╗_████║██╔══██╗╚══██╔══╝██╔═══██╗██╔══██╗
echo ███████║██║___██║___██║___██║___██║██╔████╔██║███████║___██║___██║___██║██████╔╝
echo ██╔══██║██║___██║___██║___██║___██║██║╚██╔╝██║██╔══██║___██║___██║___██║██╔══██╗
echo ██║__██║╚██████╔╝___██║___╚██████╔╝██║_╚═╝_██║██║__██║___██║___╚██████╔╝██║__██║
echo ╚═╝__╚═╝ ╚═════╝____╚═╝____╚═════╝ ╚═╝_____╚═╝╚═╝__╚═╝___╚═╝____╚═════╝_╚═╝__╚═╝
echo 
uptime
who
echo
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo -e "${RED}!!! run as root !!!${ENDCOLOR}"
    echo -e "${RED} or a user with the permisions ${ENDCOLOR}"
    sleep 5
fi
echo
echo
echo -e compleate system setup "${YELOW}[systemsetup]${ENDCOLOR}"
echo -e update "${YELOW}[update]${ENDCOLOR}"
echo -e install Osint tools "${YELOW}[1]${ENDCOLOR}"
echo -e install Exploit tools "${YELOW}[2]${ENDCOLOR}"
echo -e install Wireles tools "${YELOW}[3]${ENDCOLOR}"
echo -e install vulnerability detection tools "${YELOW}[4]${ENDCOLOR}"
echo -e test network "${YELOW}[network]${ENDCOLOR}"
echo -e show options "${YELOW}[op]${ENDCOLOR}"
echo -e show version "${YELOW}[v]${ENDCOLOR}"
echo 
while true; do
read -p "how do you want to proceed? " yn

case $yn in 

# simple uptions output

    system ) echo ;
             echo system tools ;
             echo ;
             echo -e show system info "${YELOW}[sinfo]${ENDCOLOR}";
             echo ;
             echo -e create user "${YELOW}[newuser]${ENDCOLOR}";
             echo -e remuve user "${YELOW}[remuveuser]${ENDCOLOR}";
             echo ;
             ;;

    1 ) echo ;
        echo Remember some of the pakets will be installed onthe active directory;
        echo instaling in:
        pwd ;
        echo ;
        echo -e Osintgram  "${YELOW} [1001]${ENDCOLOR}";
        echo -e Recon-ng   "${YELOW} [1002]${ENDCOLOR}";
        echo -e infoga "${YELOW} [1003]${ENDCOLOR}";        
        echo -e phoneinfoga "${YELOW} [1004]${ENDCOLOR}";
        echo -e nmap      "${YELOW} [1005]${ENDCOLOR}";
        echo -e Profil3r   "${YELOW} [1006]${ENDCOLOR}";
        echo ;;

    2 ) echo ;
        echo Remember some of the pakets will be installed onthe active directory;
        echo instaling in:
        pwd ;
        echo ;
        echo -e metasploit "${YELOW} [2001]${ENDCOLOR}";
        echo -e setoolkit "${YELOW} [2002]${ENDCOLOR}";
        echo -e metasploit "${YELOW} [2003]${ENDCOLOR}";
        echo -e SocialSploit "${YELOW} [2004]${ENDCOLOR}";
        echo ;;

    3 ) echo ;
        echo Remember some of the pakets will be installed onthe active directory;
        echo instaling in:
        pwd ;
        echo ;
        echo -e Wifite     "${color} [3001]${ENDCOLOR}";
        echo ;;
    
    4 ) echo ;
        echo Remember some of the pakets will be installed onthe active directory;
        echo instaling in:
        pwd ;
        echo ;
        echo -e lynis     "${color} [4001]${ENDCOLOR}";
        echo ;;
    
    network ) echo ;
              echo -e show ip "${YELOW}[ip]${ENDCOLOR}";
              echo -e ping google.com "${YELOW}[ping]${ENDCOLOR}";
              echo ;;

# OSINT options

    1001 ) git clone https://github.com/AROA-DEV/Osintgram.git;
           cd Osintgram;
           pip3 install -r requirements.txt;
           wget https://github.com/AROA-DEV/Tool-Instructions/blob/main/Osintgram/usage.txt; 
           cd .. ;;

    1002 ) git clone https://github.com/lanmaster53/recon-ng.git ;;

    1003 ) git clone https://github.com/m4ll0k/Infoga.git;
           cd Infoga;
           python3 setup.py install;
           python3 infoga.py;;

    1004 ) mkdir Phoneinfoga ;
           cd PhoneInfoga ;
           wget https://github.com/AROA-DEV/Tool-Instructions/blob/main/phoneinfoga/usage.txt ;
           curl -sSL https://raw.githubusercontent.com/sundowndev/phoneinfoga/master/support/scripts/install | bash ;
           ./phoneinfoga version ;
           cd ..;;
        
    1005 ) apt update -y && apt upgarde -y;
           apt install nmap;
           apt upgarade -y;
           echo run "${YELOW}[ setoolkit ]${ENDCOLOR}";;

    1006 ) pip3 install PyInquirer jinja2 bs4;
           git clone https://github.com/amitrajputfff/Profil3r.git;
           cd Profil3r/;
           python3 setup.py install;;


# Exploit 

    2001 ) curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \ ;
           chmod 755 msfinstall && \ ;
           ./msfinstall;;

    2002 ) mkdir SEToolkit;
           cd SEToolkit;
           git clone https://github.com/trustedsec/social-engineer-toolkit setoolkit/;
           cd setoolkit;
           pip3 install -r requirements.txt;
           python setup.py;
           echo run "${YELOW}[ setoolkit ]${ENDCOLOR}";;

    2003 ) sudo apt update;
           sudo apt install curl wget gnupg2;
           curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall;
           chmod +x msfinstall;
           ./msfinstall;
           echo run "${YELOW}[ msfdb ]${ENDCOLOR}";;

    2004 )  pkg install -y git;
            git clone https://github.com/Cesar-Hack-Gray/SocialSploit;
            cd SocialSploit;
            ls;
            bash install.sh;
            ./Sploit;;

# Wireles atcks
    3001 ) git clone https://github.com/derv82/wifite2.git ;
           cd wifite2 ;
           sudo ./Wifite.py ;
           sudo python setup.py install ;;

# vulnerability detection
    4001 ) git clone https://github.com/CISOfy/lynis;
            cd lynis && ./lynis audit system;;

# Network check
    ip ) ip addr;;

    ping ) ping google.com;;    

# Options
    op ) echo;
echo -e compleate system setup "${YELOW}[systemsetup]${ENDCOLOR}";
echo -e update "${YELOW}[update]${ENDCOLOR}";
echo -e install Osint tools "${YELOW}[1]${ENDCOLOR}";
echo -e install Exploit tools "${YELOW}[2]${ENDCOLOR}";
echo -e install Wireles tools "${YELOW}[3]${ENDCOLOR}";
echo -e install vulnerability detection tools "${YELOW}[4]${ENDCOLOR}";
echo -e test network "${YELOW}[network]${ENDCOLOR}";
echo -e show options "${YELOW}[op]${ENDCOLOR}";
echo -e show version "${YELOW}[v]${ENDCOLOR}";
echo ;;

    help ) echo;
echo -e compleate system setup "${YELOW}[systemsetup]${ENDCOLOR}";
echo -e update "${YELOW}[update]${ENDCOLOR}";
echo -e install Osint tools "${YELOW}[1]${ENDCOLOR}";
echo -e install Exploit tools "${YELOW}[2]${ENDCOLOR}";
echo -e install Wireles tools "${YELOW}[3]${ENDCOLOR}";
echo -e install vulnerability detection tools "${YELOW}[4]${ENDCOLOR}";
echo -e test network "${YELOW}[network]${ENDCOLOR}";
echo -e show options "${YELOW}[op]${ENDCOLOR}";
echo -e show version "${YELOW}[v]${ENDCOLOR}";
echo ;;



# Project info
    v ) echo ;
        echo ;
        echo         ====================; 
        echo         =___Open_Testing___=;
        echo         =__________________=;
        echo         =_version_1.3_BETA_=;
        echo         =___OS:_GNU/Linux__=;
        echo         =_____AROA-DEV_____=;
        echo         ====================;
        echo ;
        echo ;;

# system tool

    sinfo ) neofetch;;

    clear ) clear;;

    newuser ) echo -n "Enter the username: ";
              read new;
              useradd $new;
              sudo adduser $new ;;

    remuveuser ) echo -n "Enter the username that you whant to remuve: ";
                 read remuve;
                 userdel -r $remuve;
                 sudo deluser $remuve ;;
              
# full system set up

    systemsetup ) apt install sudo;
                  cd /;
                  cd bin;
                  wget https://raw.githubusercontent.com/AROA-DEV/automator/Beta-testing/automator; # change link when pass to release version;
                  # wget https://raw.githubusercontent.com/AROA-DEV/automator/main/automator;
                  chmod +x automator;
                  wget https://raw.githubusercontent.com/AROA-DEV/automator/Beta-testing/automator-update; # change link when pass to release version;
                  # wget https://raw.githubusercontent.com/AROA-DEV/automator/main/automator-update;
                  chmod +X automator-update;
                  cd /;
                  apt update -y && apt upgrade -y;
                  apt install -y git;
                  apt install -y python;
                  apt install -y python3;
                  apt install -y python3-pip;
                  apt install -y curl;
                  apt-get install -y wget;
                  apt-get install -y nmon;
                  apt install -y neofetch;
                  apt update -y && apt upgrade -y;
                  sleep 5x;
                  reboot;
                  systemctl reboot -i ;;

    update ) apt update -y && apt upgrade -y;;

# invalid option (keep last)    
    * ) echo invalid response run [help] ;;    
esac

done

echo doing stuff...