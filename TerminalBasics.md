# Linux Terminal Basics

Users, Groups
Permissions: chmod. User-Group-Everyone. Execute(X:1), Read(R:2), Write(W:4)
Searching: find, locate (updatedb -> locate), which
Searching and filtering: grep, awk, cut
Viewing content
	cat
File compression algorithms: zip, gzip, ...

Remote connections: rdesktop (WIN), ssh

Linux OS info: uname -a

List all the installed software packages on Kali Linux: $dpkg -l

In some software packages, they will require you to use the configure/make
installation way, if that’s the case, then use the following commands (you must
be inside the application directory): $./configure && make && make install

The Domain Name System (DNS) translates domain names into IP addresses.
DNS records: host
DNS poisoning attack.

# Networking
PC hosts have internal IP addresses to connect with the network, and they
have a public IP address to communicate with the outside world. The latter is
the mission of your home router, and you don’t manage it locally on your local-
host. On the other hand, you must maintain the internal network IP addresses,
which are either static (you define it) or automatically assigned by a DHCP
server (which is generally your home router).

Internal IP addresses (aka private IP addresses) for IPv4 have multiple ranges:
classes A, B, and C.
■ Class A: 10.0.0.0 to 10.255.255.255 or 10.0.0.0/8 (up to 16,777,214 hosts)
■ Class B: 172.16.0.0 to 172.31.255.255 or 172.16.0.0/12 (up to 1,048,574 hosts)
■ Class C: 192.168.0.0 to 192.168.255.255 or 192.168.0.0/24 (up to 254 hosts)