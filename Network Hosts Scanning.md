# Network Hosts Scanning

## TCP
## UDP

## ICMP (Internet Control Message Protocol)
Testing connectivity protocol.
ping, traceroute.

## ARP (Address Resolution Protocol)
Maps IPv4 addresses to MAC addresses.
ARP table. This concept is essential for an internal network to work. 
Routers connect with each other over the internet through IP addresses, but once the packet is inside your network, then an ARP table will be used 
using MAC addresses.

arp -a

## IP
### IPv4
32-bit, decimal format, eg 192.168.0.1
IP addresses are divided into public, which are used on the internet, and 
private, which are used in an intranet.

Private IPv4 address ranges:
* 10.0.0.0 to 10.255.255.255 (10.x.x.x), with about 16 million addresses
* 172.16.0.0 to 172.31.255.255 (172.16.x.x to 172.31.x.x), with about 1 million 
addresses
* 192.168.0.0 to 192.168.255.255 (192.168.x.x), with about 65,000 addresses

### Subnets and CIDR
Subnet’s role is to divide a network into smaller ranges (network segmentation). 
A subnet will identify the number of hosts inside an IP range.
Classless Interdomain Routing (CIDR) was created to simplify the subnet masks.
CIDR -> NETMASK -> # OF HOSTS reference table.

## IPv6
128-bits of hexadecimal characters. e.g.

fff0:0000:eeee:0000:0000:0000:fe77:03aa

* To follow the IPv6 specifics first, we need to remove the leading zeros.
	fff0:0:eeee:0:0:0:fe77:3aa
* Compress the series of zeros (in our case, there are three series of zeros) 
and replace them with ::.
	fff0:0:eeee::fe77:3aa

Take note that in IPv6, you can compress a series of zeros only once.

## Ports
Without a port number, a network packet will never be able to reach its destination.
1-65535

en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers.

# Nmap

* identify live hosts: nmap -sn 10.0.0.1/24
* TCP port SYN scan: nmap -sS [IP/Range]
* UDP port scan: nmap -sU [IP/Range], nmap -sU -T5 [IP/Range] "faster"

For the tweaking part, always remember to choose the speed wisely. For 
example, don’t use a fast speed like T5 on a production IP address; instead, 
stick with the default one (T3). 
Make sure you choose the number of ports that suits your needs, either the top 100 or the default option 1,000

#A quicker TCP scan
nmap –-top-ports 100 -T5 [IP Address / Range]

#To scan for the HTTP port 80 on the network
nmap -p 80 [IP Address / Range]

-p- - include all ports

nmap defaults:
* speed T3
* scan the top TCP 1000 ports
* if root -> set SYN TCP scan by default

nmap -p- -T5 10.0.0.1 -> TCP scanning all ports

## Service version scan
nmap -p- -T5 -sV 10.0.0.1

Specify exact open ports to speed up service scan:
nmap -p 22,53,80,443 -T5 -sV 10.0.0.1

## Operating System Fingerprinting
-O option to detect the operating system of the target host.

nmap -sV -O -T4 10.0.0.187

## Nmap Scripting Engine
The Nmap Scripting Engine contains a set of additional functionalities (like brute force, DNS enumeration, HTTP enumeration, etc.)

/usr/share/nmap/scripts:

nmap -p [port number] -sV –script [NSE script name] [IP address / range]

### Http enumeration:
nmap -sV -p 80 --script http-enum 10.0.0.1

## DNS Enumeration:
DNS enumeration may allow us to identify the nature of the target host that we want to scan. In addition,
DNS enumeration will use the public search engines to search for hidden domain names that we were not aware of at the beginning of our engagement.

DNS Brute-force && DNS Zone Transfer techniques

Tools:
1. Quickly brute-force subdomains based on a good quality dictionary file.
2. Check for DNS transfer.
3. Automate a subdomain lookup on internet search engines like Google.

1. Fierce
2. #sublist3r is on Github
3. #subbrute is on Github
