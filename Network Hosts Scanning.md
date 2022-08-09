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