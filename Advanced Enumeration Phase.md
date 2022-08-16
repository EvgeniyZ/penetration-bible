Enumeration means collecting the
necessary information that will allow us to exploit the specific service (e.g., FTP,
SSH, etc.)

* FTP
* SSH
* Telnet
* SMTP
* POP3 and IMAP4
* Microsoft SQL
* Oracle Database Server
* MySQL
* Docker Engine
* Jenkins
* HTTP/S
* RDP
* VNC
* SMB
* SNMP, and much more

## FTP (File Transfer Protocol)
Used to transfer files between a client and a remote server. The latter is used to stock files so you can access them remotely. 
FTPS (Secure FTP) uses SSH protocol, 22 port by default.
SFTP (FTP Secure) uses SSL to encrypt file transfer, 989, 990 ports.
FTP weaknesses:
* Login credentials are sent in plaintext
* File transfer is not encrypted

Attack guideline:
* Credentials brute-force
* Sniffing for cleartext credentials
* Sniffing for unencrypted files
* Anonymous access
* Finding a public exploit associated with the target FTP server version

$nmap -sV -O -sC -p21 -T5 [host]
$nmap -sV -O --script=ftp* -p21 -T5 [host]

Brute-forcing:
hydra -t 10 -L /opt/SecLists/Usernames/top-usernames-shortlist.txt -P /opt/SecLists/Passwords/xato-net-10-million-passwords-1000.txt ftp://[host]

## SSH (Secure Shell)