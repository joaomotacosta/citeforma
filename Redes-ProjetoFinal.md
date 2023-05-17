# Instalação de Redes Locais / Serviços de Redes | Projeto Final
## Grupo 1
### Prompt

I have a Packet Tracer assignment coming up and my professor asked us to design and configure the network for two co-working spaces.

The co-working space features:
- 14 companies, each with its own VLAN
- A local network 10.10.10.0/24

Here are a few requirements:
- We have to use every IP in the 10.10.10.0 network
- Companies will be VLAN 101-114
- Administration/Management will be VLAN 99
- IT closet will be VLAN 100

The assignment is separated into different groups. I'll be giving you each group individually.

Group 1 is focused on the network assignment for each network, including all the VLANs. For this, we have to design a table with the following fields:
- Network
- Network address
- Host interval
- Broadcast address
- Subnet mask
- Default Gateway
- VLAN ID
- VLAN Name

### Resposta
To start, we need to divide the 10.10.10.0/24 network into 14 subnets, one for each company. We can do this by using a subnet mask of 255.255.255.240 (/28), which will give us 16 IP addresses per subnet. 
Here's a breakdown of the subnets for each company:

- Company 1: 10.10.10.0/28
- Company 2: 10.10.10.16/28
- Company 3: 10.10.10.32/28
- Company 4: 10.10.10.48/28
- Company 5: 10.10.10.64/28
- Company 6: 10.10.10.80/28
- Company 7: 10.10.10.96/28
- Company 8: 10.10.10.112/28
- Company 9: 10.10.10.128/28
- Company 10: 10.10.10.144/28
- Company 11: 10.10.10.160/28
- Company 12: 10.10.10.176/28
- Company 13: 10.10.10.192/28
- Company 14: 10.10.10.208/28

For the Administration/Management VLAN, we can use the 10.10.10.224/28 subnet, which will give us 14 IP addresses. The IT closet VLAN can use the 10.10.10.240/28 subnet, which will also give us 14 IP addresses.

Here's the table with the required fields:

| Network | Network address | Host interval | Broadcast address | Subnet mask | Default Gateway | VLAN ID | VLAN Name |
|---------|----------------|---------------|-------------------|-------------|----------------|---------|-----------|
| Company 1 | 10.10.10.0 | 10.10.10.1 - 10.10.10.14 | 10.10.10.15 | 255.255.255.240 | 10.10.10.1 | 101 | Company 1 |
| Company 2 | 10.10.10.16 | 10.10.10.17 - 10.10.10.30 | 10.10.10.31 | 255.255.255.240 | 10.10.10.17 | 102 | Company 2 |
| Company 3 | 10.10.10.32 | 10.10.10.33 - 10.10.10.46 | 10.10.10.47 | 255.255.255.240 | 10.10.10.33 | 103 | Company 3 |
| Company 4 | 10.10.10.48 | 10.10.10.49 - 10.10.10.62 | 10.10.10.63 | 255.255.255.240 | 10.10.10.49 | 104 | Company 4 |
| Company 5 | 10.10.10.64 | 10.10.10.65 - 10.10.10.78 | 10.10.10.79 | 255.255.255.240 | 10.10.10.65 | 105 | Company 5 |
| Company 6 | 10.10.10.80 | 10.10.10.81 - 10.10.10.94 | 10.10.10.95 | 255.255.255.240 | 10.10.10.81 | 106 | Company 6 |
| Company 7 | 10.10.10.96 | 10.10.10.97 - 10.10.10.110 | 10.10.10.111 | 255.255.255.240 | 10.10.10.97 | 107 | Company 7 |
| Company 8 | 10.10.10.112 | 10.10.10.113 - 10.10.10.126 | 10.10.10.127 | 255.255.255.240 | 10.10.10.113 | 108 | Company 8 |
| Company 9 | 10.10.10.128 | 10.10.10.129 - 10.10.10.142 | 10.10.10.143 | 255.255.255.240 | 10.10.10.129 | 109 | Company 9 |
| Company 10 | 10.10.10.144 | 10.10.10.145 - 10.10.10.158 | 10.10.10.159 | 255.255.255.240 | 10.10.10.145 | 110 | Company 10 |
| Company 11 | 10.10.10.160 | 10.10.10.161 - 10.10.10.174 | 10.10.10.175 | 255.255.255.240 | 10.10.10.161 | 111 | Company 11 |
| Company 12 | 10.10.10.176 | 10.10.10.177 - 10.10.10.190 | 10.10.10.191 | 255.255.255.240 | 10.10.10.177 | 112 | Company 12 |
| Company 13 | 10.10.10.192 | 10.10.10.193 - 10.10.10.206 | 10.10.10.207 | 255.255.255.240 | 10.10.10.193 | 113 | Company 13 |
| Company 14 | 10.10.10.208 | 10.10.10.209 - 10.10.10.222 | 10.10.10.223 | 255.255.255.240 | 10.10.10.209 | 114 | Company 14 |
| Administration/Management | 10.10.10.224 | 10.10.10.225 - 10.10.10.238 | 10.10.10.239 | 255.255.255.240 | 10.10.10.225 | 99 | Administration/Management |
| IT Closet | 10.10.10.240 | 10.10.10.241 - 10.10.10.254 | 10.10.10.255 | 255.255.255.240 | 10.10.10.241 | 100 | IT Closet | 
