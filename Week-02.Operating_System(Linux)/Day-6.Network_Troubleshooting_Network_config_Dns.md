# here is all linux network troubleshooting command :

## copy and rsync command:

1. To copy a file over from local host to a remote host:
```
$ $ scp myfile.txt username@remotehost.com:/remote/directory

```
2. To copy a file from a remote host to your local host:
```
$ scp username@remotehost.com:/remote/directory/myfile.txt /local/directory

```
3. To copy over a directory from your local host to a remote host:
```
$ scp -r mydir username@remotehost.com:/remote/directory

```
4. rsync files on the same host:
```
$ rsync -zvr /my/local/directory/one /my/local/directory/two

```
5. rsync files to local host from a remote host:
```
$ rsync /local/directory username@remotehost.com:/remote/directory

```
6. rsync files to a remote host from a local host:
```
$ rsync username@remotehost.com:/remote/directory /local/directory

```
## simple server command :
7. run simple python server command :
```
$ python -m SimpleHTTPServer

```
## here is network routing comamnd:
8. Look at your machine's routing table:
```
$ route -n

```
```
Gateway

If we are sending a packet that is not on the same network, it will be sent to this Gateway address. Which is aptly named as being a Gateway to another network.

Genmask

This is the subnet mask, used to figure out what IP addresses match what destination.

Flags

UG - Network is Up and is a Gateway
U - Network is Up
Iface

This is the interface that our packet will be going out of, eth0 usually stands for the first Ethernet device on your system.

```
9. add a new route :
```
$ sudo route add -net ip_address/cidr gw ip_addresss
$ ip route add ip_address via ip_address

```
10. delete any route :
```
$ sudo route del -net 192.168.2.1/23 
$ ip route delete 192.168.2.1/23

```
## network config command:

11. network config command :
```
$ ifconfig 
$ ipconfig
$ ifconfig -a              [to see more details] 

```
12. To create an interface and bring it up:
```
$ ifconfig eth0 192.168.2.1 netmask 255.255.255.0 up

```
13. To bring up or down an interface:
```
$ ifup eth0
$ ifdown eth0

```
14. To show interface information for all interfaces:
```
$ ip link show

```
15. To show the statistics of an interface:
```
$ ip -s link show eth0

```
16. To show ip addresses allocated to interfaces:
```
$ ip address show

```
17. To bring interfaces up and down:
```
$ ip link set eth0 up
$ ip link set eth0 down

```
18. To add an IP address to an interface:
```
$ ip address add 192.168.1.1/24 dev eth0

```
19. To obtain a fresh IP:
```
$ sudo dhclient

```

## network manager command :

20. There are also command-line tools to interact with NetworkManager:
```
$ nm-tool

```
21. The nmcli command allows you to control and modify NetworkManage:
```
$ nmcli

```
22. we lookup a MAC address with ARP command: 
```
$ arp

```
23. You can also view your arp cache via the ip command::
```
$ ip neighbour show

```

## network troubleshoting command :

24. One of the most simplest networking tools is  `ping`
```
$ ping hostName or ip_address
$ ping google.com
$ ping -c google.com

```
25. The `traceroute` command is used to see how packets are getting routed. It works by sending packets with increasing TTL values, starting with 1:
```
$ traceroute hostName or Ip_address or google.com

```
26. An extremely useful tool to get detailed information about your network is netstat. Netstat displays various network related information such network connections, routing tables, information about network interfaces and more:
```
$ netstat
$ netstat -at

```
27. utility to debug TCP/UDP sockets:
```
$ nc

```
28. we can be used to test remote connectivity on ports by using `telnet` command:
```
$ telnet

```
29. `mtr` is a mix of ping and traceroute. It also provides additional information like intermediate hosts and responsiveness:
```
$ mtr

```
## here all DNS related linux command:

30. The /etc/hosts file contains mappings of some hostnames to IP addresses:
```
$ cat /etc/hosts

```
31. The "name server lookup" tool is used to query name servers to find information about resource records:
```
$ nslookup DNSname or ip_address

```
32. Dig (domain information groper) is a powerful tool for getting information about DNS name servers:
```
$ dig DNSname or ip_address

```
