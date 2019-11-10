# From the Kali linux base image
FROM kalilinux/kali-linux-docker

# Update and apt install programs
RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get install -y \
 git \
 tmux \
 net-tools \
 python-impacket \
 gobuster \
 hashcat \
 hydra \
 man-db \
 minicom \
 nasm \
 nmap \
 sqlmap \
 sslscan \
 wordlists \
 powershell-empire \
 seclists \
 metasploit-framework \

# Clone git repos

# Other installs

# Update ENV

# Set entrypoint and working directory
WORKDIR /root/

# Indicate we want to expose ports 80 and 443
EXPOSE 22/tcp 80/tcp 443/tcp 8080/tcp 8000/tcp