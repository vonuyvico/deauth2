clear;
# COPYRIGHT VON
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

echo -e $yellow"Welcome to DeauTH2's Disable Monitoring Tool"
echo -n -e $red"Input Chosen Interface a while ago "$green
read it
STR=$it
SUB='mon'
if [[ "$STR" == *"$SUB"* ]]; then
  suc=$it
else
	suc=$it"mon"
fi
echo -e $Cyan
airmon-ng stop $suc;
service network-manager start;
echo -e $green"DONE............ "$yellow"Wait for a few seconds and you may close the terminal."