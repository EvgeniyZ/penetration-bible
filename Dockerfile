# Dockerfile kali-light

# Official base image
FROM kalilinux/kali-rolling

# Apt
RUN apt -y update && apt -y upgrade && apt -y autoremove && apt clean

# Headless
# RUN apt update && apt -y install kali-linux-headless

# Tools
RUN apt install aircrack-ng crackmapexec crunch curl dirb dirbuster dnsenum dnsrecon dnsutils dos2unix enum4linux exploitdb ftp git gobuster hashcat hping3 hydra impacket-scripts john joomscan masscan maltego metasploit-framework mimikatz nasm ncat netcat-traditional nikto nmap patator php powersploit proxychains python-pip python3 recon-ng responder samba samdump2 smbclient smbmap snmp socat sqlmap sslscan sslstrip theharvester vim wafw00f weevely wfuzz whois wordlists wpscan -y --no-install-recommends

# More Tools
RUN apt install tmux locate less nano apache2 htop wireshark -y --no-install-recommends

# Alias
RUN echo "alias l='ls -al'" >> /root/.bashrc
RUN echo "alias nse='ls /usr/share/nmap/scripts | grep '" >> /root/.bashrc
RUN echo "alias scan-range='nmap -T5 -n -sn'" >> /root/.bashrc

#RUN echo "alias http-server='python3 -m http.server 8080'" >> /root/.bashrc
#RUN echo "alias php-server='php -S 127.0.0.1:8080 -t .'" >> /root/.bashrc
#RUN echo "alias ftp-server='python -m pyftpdlib -u \"admin\" -P \"S3cur3d_Ftp_3rv3r\" -p 2121'" >> /root/.bashrc

# Get seclist from GitHub and save it in the /opt folder
# RUN git clone https://github.com/danielmiessler/SecLists.git /opt/seclists

# Set working directory to /root
WORKDIR /root

# Open shell
CMD ["/bin/bash"]