# Kali Setup
Personal Kali Setup


### Openbox Setup

````
apt install openbox zsh git terminator tmux feh open-vm-tools-desktop obmenu lxappearance compton plank nitrogen firefox-esr pcmanfm net-tools curl locate qt4-qtconfig
````

#openbox autostart config

````
compton &
nitrogen --restore &
plank &

into .config/openbox/autostart
````
#Themes
````
https://www.box-look.org/p/1313609/
https://www.gnome-look.org/p/1315686/
https://i.redd.it/2zoez8m51zk31.jpg
````
#Applications

````
apt install sublime-text burpsuite wfuzz python-pip chromium golang gobuster hydra hashcat wordlists powershell-empire seclists payloadsallthethings metasploit-framework sqlmap sslscan webshells ncat sparta smbclient smbmap filezilla wireshark termshark tcpdump rlwrap htop
````
````
Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list

ulauncher
https://ulauncher.io
apt install ./deb

Nessus
https://www.tenable.com/downloads/nessus
/etc/init.d/nessusd start
/etc/init.d/nessusd stop
https://kali:8834/ 
````

##Git clone

````
https://github.com/OWASP/Amass.git
https://github.com/michenriksen/aquatone.git
https://github.com/byt3bl33d3r/CrackMapExec.git
https://github.com/droope/droopescan.git
https://github.com/gophish/gophish.git
https://github.com/d3vilbug/HackBar.git
https://github.com/ZerBea/hcxtools.git
https://github.com/sysdream/hershell.git
https://github.com/SecureAuthCorp/impacket.git
https://github.com/411Hall/JAWS.git
https://github.com/rebootuser/LinEnum.git
https://github.com/samratashok/nishang.git
https://github.com/DominicBreuker/pspy.git
https://github.com/sherlock-project/sherlock.git
https://github.com/rasta-mouse/Sherlock.git
https://github.com/rasta-mouse/Watson.git
https://github.com/trustedsec/unicorn.git
https://github.com/Veil-Framework/Veil.git
https://github.com/RhinoSecurityLabs/Swagger-EZ.git
````
#Snap

````
apt install snapd
systemctl enable snapd.service
export PATH=$PATH:/snap/bin >> .bashrc
sudo snap install postman
/var/lib/snapd/desktop/applications
````
#Remove

````
apt-get remove xfce4 xfce4-places-plugin xfce4-goodies xterm xfce4*
````

### Kali-docker

Simple dockerfile for deploying Kali with some tools.

## git and install

```
git clone https://github.com/PartyStarterBob/KaliSetup.git && cd KaliSetup
```
### docker build

```
docker build -t PartyStarterBob/KaliSetup .
```

## docker run

```
docker run --privileged -it -p 22:22 -p 80:80 -p 443:443 -p 8080:8080 -p 8000:8000 -v $(pwd):/clients PartyStarterBob/KaliSetup
```