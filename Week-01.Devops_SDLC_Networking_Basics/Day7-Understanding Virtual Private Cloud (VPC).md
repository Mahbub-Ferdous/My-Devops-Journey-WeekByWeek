# Understanding Virtual Private Cloud (VPC)

A Virtual Private Cloud (VPC) is a logically isolated section of a cloud provider's infrastructure where you can launch and manage resources in a virtual network that you define. It provides the following benefits:

## Benefits of VPC

### Isolation:

```Resources in a VPC are isolated from other users and can be customized for your specific needs.```

### Security:

```By placing resources in private subnets and using security groups and network ACLs (Access Control Lists), you can control inbound and outbound traffic to and from your resources.```

### Control:

```You can define IP address ranges, create subnets, route tables, and configure gateways.```


## Accessing Applications in a VPC

To access an application inside a VPC, the following process typically occurs:

### Internet Gateway (IGW):

```An Internet Gateway is attached to the VPC to allow communication between the VPC and the internet.```

### Public Subnet:

```The VPC has a public subnet that contains resources which need to be accessible from the internet (e.g., a load balancer or web server).```

```The public subnet is associated with a route table that directs internet-bound traffic to the Internet Gateway.```

### Load Balancer:

```A Load Balancer (e.g., AWS Elastic Load Balancer) is placed in the public subnet. It distributes incoming application traffic across multiple targets, such as EC2 instances, in one or more private subnets.```

```The Load Balancer has a target group that directs traffic to the appropriate resources.```

### Private Subnet:

```The application servers (e.g., EC2 instances running the application) are placed in a private subnet, which does not have a direct route to the Internet Gateway.```

```The private subnet's route table directs traffic to and from the Load Balancer.```

### Routing Table

The VPC's routing tables determine how traffic flows between subnets and to the Internet Gateway. Typically, the private subnet's route table routes traffic to the public subnet where the Load Balancer resides.

### Security Groups

Security groups act as virtual firewalls for your resources. They control inbound and outbound traffic at the instance level. When a user attempts to access the application, the security groups associated with the Load Balancer and application servers validate the user's traffic based on the rules you've set.

### Example Workflow

1. User Request: A user makes a request to the application.
2. Internet Gateway: The request passes through the Internet Gateway into the public subnet.
3. Load Balancer: The request is received by the Load Balancer in the public subnet.
4. Routing to Private Subnet: The Load Balancer forwards the request to the application servers in the private subnet based on the target group configuration.
5. Security Validation: Security groups on the Load Balancer and application servers ensure only authorized traffic is allowed.
6. Application Response: The application processes the request and sends the response back through the same path in reverse.

By following this architecture, the VPC ensures that the application is secure, isolated, and scalable.