# Understanding IP Addresses:-

## What is an IP Address?

An IP address is a unique identifier assigned to each device connected to a network. It serves as the address that allows devices to find and communicate with each other over the internet or within a local network.

## IPv4 Addresses


IPv4 (Internet Protocol version 4) addresses consist of `4` bytes, with each byte containing `8` bits, making a total of `32` bits. Each byte is represented as a decimal number, separated by periods. The binary representation of each byte is determined by the powers of ``2``:

`2^7 (128), 2^6 (64), 2^5 (32), 2^4 (16), 2^3 (8), 2^2 (4), 2^1 (2), 2^0 (1)`

Example of an IPv4 Address:

```Decimal format: 172.32.16.1```

```Binary format: 10101100.00100000.00010000.00000001```


# What is Subnetting?

Subnetting, or subnetworking, is the process of dividing a larger network into smaller, more manageable sub-networks, called subnets. Subnetting improves network performance and enhances security, privacy, and isolation for devices within the network.

Types of Subnets:

```Private Subnets: Do not have direct internet access and are typically used for internal network communications.```

```Public Subnets: Have direct internet access and can communicate with external networks.```

## CIDR (Classless Inter-Domain Routing):

CIDR is a method for allocating IP addresses and IP routing. It allows for a more flexible allocation of IP addresses compared to the older system of fixed classes (A, B, and C), which often led to wasted addresses.

IP Address and Slash Notation:

An IP address using CIDR looks like this: `192.168.1.0/24.` The `/24` is called the `prefix` and indicates how many bits of the IP address are used for the network part. In this case, `24` bits are used for the network.

Benefits of CIDR:

Efficient Use of IP Addresses: Allows for creating groups of any size, avoiding wastage.

Smaller Routing Tables: Combining multiple addresses into one group reduces the number of routes that need to be managed, making the internet more efficient.
Example of CIDR in Action:

For an IP address `192.168.1.0/24:`

The `/24` prefix means the first `24` bits are for the network, and the remaining `8` bits are for hosts.
`IP range: 192.168.1.1 to 192.168.1.254`
`Network address: 192.168.1.0`
`Broadcast address: 192.168.1.255`

Common Private Subnets:

`192.168.x.x`
`172.16.x.x` to `172.31.x.x`
`10.x.x.x`


## Understanding Ports:

A port is a virtual point on a device where network connections start and end. It helps direct data to the correct application.

Example: Web Browsing

When you visit a website, your computer connects to the web server's IP address on port `80 (for HTTP)` or port `443 (for HTTPS)`. Think of the IP address as the building address and the port number as the specific room you want to go to in that building.

IP Address + Port:

Together, they identify the device and the specific service you want to use. Port numbers range from `0 to 65535`.

Common Ports:

`HTTP (websites): Port 80`
`HTTPS (secure websites): Port 443`
`FTP (file transfer): Port 21`

By understanding these fundamental concepts, you can gain a clearer insight into how networks operate, how data is routed, and how devices communicate with each other efficiently and securely.