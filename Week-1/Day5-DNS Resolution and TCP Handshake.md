# DNS Resolution and TCP Handshake: A Comprehensive Guide :-

Understanding how data is transferred over the internet involves grasping concepts like DNS resolution and the TCP handshake. Here, we break down these processes, explain their sequence before considering the OSI model, and detail the sequence of events according to the OSI model.

## DNS Resolution

DNS (Domain Name System) translates human-readable domain names `(like www.example.com)` into IP addresses that computers use to identify each other on the network.

## Process

```Local DNS Cache Check: When you type a domain name into your browser, the operating system first checks its local DNS cache to see if it has recently resolved the domain.```

```DNS Server Query: If the local cache doesn't have the information, the request is sent to the DNS server configured for the device, often provided by the ISP (Internet Service Provider).```

```DNS Server Cache Check: The DNS server checks its cache. If it doesn't find the record, it queries other DNS servers in a hierarchical manner until it resolves the IP address associated with the domain name.```

```Return and Cache: Once the IP address is found, it's returned to the local device and cached for future requests.```


## Router's Role

The router typically does not perform DNS resolution itself but forwards the request to the configured DNS server, which could be the ISP's DNS or a third-party DNS (like Google DNS or Cloudflare DNS).

## Recursive Queries

The DNS server may perform recursive queries to resolve the domain name, contacting other DNS servers until it finds the authoritative answer.

## TCP Handshake

The `TCP (Transmission Control Protocol)` handshake establishes a reliable connection between a client and a server before data can be exchanged.

## Process

```SYN: The client sends a SYN (synchronize) packet to the server to initiate a connection.```

```SYN-ACK: The server responds with a SYN-ACK (synchronize-acknowledge) packet to acknowledge the client's request and to indicate that it is ready to establish a connection.```

```ACK: The client responds with an ACK (acknowledge) packet to confirm the connection.```

```Result: After the three-way handshake (SYN, SYN-ACK, ACK), a connection is established, and data transfer can begin.```

## Details

```Initial SYN: The client's initial SYN packet includes a sequence number used to synchronize the sequence numbers between the client and server.```

```Connection Setup: This three-way handshake ensures that both client and server agree on the starting sequence numbers and are ready to communicate.```

## Sequence of Events Before OSI Model


## DNS Resolution

1. The user types a URL into the browser.

2. The browser checks the local DNS cache.

3. If not found locally, the request is sent to the DNS server (usually provided by the ISP).

4. The DNS server resolves the domain name to an IP address.

5. The resolved IP address is returned to the browser.

## TCP Handshake

```The browser initiates a TCP connection to the resolved IP address (typically to port 80 for HTTP or port 443 for HTTPS.```

```The three-way handshake (SYN, SYN-ACK, ACK) is completed.```

## OSI Model: Sequence of Events

## Sender Side (Client)

```Layer 7 → Application Layer: Once the TCP connection is established, the browser sends an HTTP request (e.g., GET or POST) to the server.```

```Layer 6 → Presentation Layer: Data encryption, compression, and formatting happen at this layer. For example, SSL/TLS encryption might be applied here.```

```Layer 5 → Session Layer: A session is created to manage and maintain the connection, enabling the user to avoid multiple authentications. Sessions can be stored in cookies and cache.```

```Layer 4 → Transport Layer: Data is segmented into smaller units called segments. The protocol (TCP or UDP) is defined here. TCP segments or UDP datagrams are prepared for transmission.```

```Layer 3 → Network Layer: Segments are encapsulated into packets. The router adds the source and destination IP addresses to these packets.```

```Layer 2 → Data Link Layer: Packets are further encapsulated into frames for transmission over the physical network. Frames include MAC addresses of the source and destination along with the IP addresses.```

```Layer 1 → Physical Layer: Frames are converted into electronic signals (or optical signals, depending on the medium) for transmission over the physical medium (e.g., Ethernet cables, fiber optics).The data then hops through multiple routers and switches until it reaches the destination domain.```

### Receiver Side (Server)

```Layer 1 → Physical Layer: The server receives the electronic signals and converts them back into frames.```

```Layer 2 → Data Link Layer: Frames are checked for errors and converted back into packets.```

```Layer 3 → Network Layer: The server extracts the packets and uses the destination IP address to ensure they are at the correct endpoint.```

```Layer 4 → Transport Layer: Packets are reassembled into segments, and error checking is performed. The server ensures the correct sequence of segments (especially important for TCP).```

```Layer 5 → Session Layer: The session is managed, ensuring that the communication is appropriately synchronized and maintained.```

```Layer 6 → Presentation Layer: Data decryption and decompression occur, and the data is formatted for the application layer.```

```Layer 7 → Application Layer: The server processes the HTTP request and prepares an appropriate response (e.g., sending back an HTML page or other content).```

By understanding the intricacies of DNS resolution and the TCP handshake, along with their alignment with the OSI model, we can appreciate the complexity and efficiency of data communication over the internet.