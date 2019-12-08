# DeauTH2 Wiki
<pre>Written by Protocleus@Von</pre>

This page provides/covers most of DeauTH2's capabilities.
## Installation

`$ git clone https://github.com/vonuyvico/deauth2.git`<br>
`$ cd deauth2`<br>
`$ chmod +x deauth2.sh`<br>
`$ chmod +x dmon.sh `<br>
## 1) Run by typing these in the terminal
`cd deauth2`<br>
`./deauth2.sh`

![](https://user-images.githubusercontent.com/58622633/70383106-1da01d80-191d-11ea-9811-ba1ac36a1645.png)
## 2) Choose Interface
#### _Select desired interface based on what is being displayed_

![](https://user-images.githubusercontent.com/58622633/70383108-2abd0c80-191d-11ea-8ac0-f7f8645150b0.png)

## 3) Type in the chosen interface and click `ENTER`

![](https://user-images.githubusercontent.com/58622633/70383109-37d9fb80-191d-11ea-81f9-8a01927d98fe.png)

## 4) A terminal will popup showing the networks around you

![](https://user-images.githubusercontent.com/58622633/70383115-432d2700-191d-11ea-92ad-757bb72d915d.png)

## 5) Type in the BSSID and the CHANNEL of the router you want to attack and click `ENTER`

![](https://user-images.githubusercontent.com/58622633/70383121-68ba3080-191d-11ea-9a4c-6a99a8ec40b9.png)

## 6) Copy the STATION of the device you want to deauthenticate from the network. 
#### _NOTE: Each unique STATION represents a single device_

![](https://user-images.githubusercontent.com/58622633/70383126-9a32fc00-191d-11ea-8103-36df4b102392.png)

## 7) A terminal will popup that does all the work to deauthenticate your target
### WARNING: DO NOT CLOSE ALL THE TERMINALS IMMEDIATELY
<i>Please note that if you close the deauthentication terminal (DeauTH attack working) it will stop deauthenticating target device</i>

![](https://user-images.githubusercontent.com/58622633/70383129-a61ebe00-191d-11ea-8937-6815cf408f07.png)

***

# What to do after deauthenticating
## Option 1
### <i>You will see that you aren't connected to a WiFi network anymore, it's because you have enabled monitor mode a while ago, to disable, type in
`airmon-ng stop (interface+mon)`<br><br>
<b>WHERE interface = wlan, if interface is not wlan, DO NOT ADD 'mon' ANYMORE, for instance,<br>
interface = mon0<br>
DO NOT ADD 'mon' ANYMORE, BECAUSE IT WILL MAKE IT 'mon0mon' </b>

![](https://user-images.githubusercontent.com/58622633/70383133-b33bad00-191d-11ea-8c22-1e8dc5b92693.png)

***

### You need to type this code to enable NetworkManager after killing it a while ago
`sudo service network-manager start` or without 'sudo'<br><br>
![](https://user-images.githubusercontent.com/58622633/70383137-bd5dab80-191d-11ea-8bc8-71a653832a55.png)

## Option 2
### Run this on your terminal (assuming you have installed and cloned this repo correctly)
`./dmon.sh`

![](https://user-images.githubusercontent.com/58622633/70384534-b8f0bd00-1934-11ea-96e8-b96073962efb.png)

![](https://user-images.githubusercontent.com/58622633/70384535-ba21ea00-1934-11ea-9cc9-8dc33f55941b.png)
