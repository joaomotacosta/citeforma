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

Here's the table with the required fields:

| Network | Network address | Host interval | Broadcast address | Subnet mask | Default Gateway | VLAN ID | VLAN Name |
|-------|----------------|-------------------|-------------------|-------------|----------------|---------|-----------|
| Company 1 | 10.10.10.0 | 10.10.10.1 - 14 | 10.10.10.15 | 255.255.255.240 | 10.10.10.1 | 101 | Company 1 |
| Company 2 | 10.10.10.16 | 10.10.10.17 - 30 | 10.10.10.31 | 255.255.255.240 | 10.10.10.17 | 102 | Company 2 |
| Company 3 | 10.10.10.32 | 10.10.10.33 - 46 | 10.10.10.47 | 255.255.255.240 | 10.10.10.33 | 103 | Company 3 |
| Company 4 | 10.10.10.48 | 10.10.10.49 - 62 | 10.10.10.63 | 255.255.255.240 | 10.10.10.49 | 104 | Company 4 |
| Company 5 | 10.10.10.64 | 10.10.10.65 - 78 | 10.10.10.79 | 255.255.255.240 | 10.10.10.65 | 105 | Company 5 |
| Company 6 | 10.10.10.80 | 10.10.10.81 - 94 | 10.10.10.95 | 255.255.255.240 | 10.10.10.81 | 106 | Company 6 |
| Company 7 | 10.10.10.96 | 10.10.10.97 - 110 | 10.10.10.111 | 255.255.255.240 | 10.10.10.97 | 107 | Company 7 |
| Company 8 | 10.10.10.112 | 10.10.10.113 - 126 | 10.10.10.127 | 255.255.255.240 | 10.10.10.113 | 108 | Company 8 |
| Company 9 | 10.10.10.128 | 10.10.10.129 - 142 | 10.10.10.143 | 255.255.255.240 | 10.10.10.129 | 109 | Company 9 |
| Company 10 | 10.10.10.144 | 10.10.10.145 - 158 | 10.10.10.159 | 255.255.255.240 | 10.10.10.145 | 110 | Company 10 |
| Company 11 | 10.10.10.160 | 10.10.10.161 - 174 | 10.10.10.175 | 255.255.255.240 | 10.10.10.161 | 111 | Company 11 |
| Company 12 | 10.10.10.176 | 10.10.10.177 - 190 | 10.10.10.191 | 255.255.255.240 | 10.10.10.177 | 112 | Company 12 |
| Company 13 | 10.10.10.192 | 10.10.10.193 - 206 | 10.10.10.207 | 255.255.255.240 | 10.10.10.193 | 113 | Company 13 |
| Company 14 | 10.10.10.208 | 10.10.10.209 - 222 | 10.10.10.223 | 255.255.255.240 | 10.10.10.209 | 114 | Company 14 |
| Administration/Management | 10.10.10.224 | 10.10.10.225 - 238 | 10.10.10.239 | 255.255.255.240 | 10.10.10.225 | 99 | Administration/Management |
| IT Closet | 10.10.10.240 | 10.10.10.241 - 254 | 10.10.10.255 | 255.255.255.240 | 10.10.10.241 | 100 | IT Closet | 

## Grupo 2
### Prompt
Group 2 is switch/VLAN configuration. We're going to use three 2960 switches.

Here's what we have to do:
- Name them `SL1`, `SL2` and `SL3`
- Configure to use the `enable` password as `class`
- Create a user `Admin` with the password `cisco`
- Configure remote access only allowing two sessions at once
- Make sure that access to network devices is done solely through the native VLAN or the company specific VLAN
- Configure local authentication method
- Attribute IPs to the Management/Administration VLAN (VLAN 99) and its Default Gateway
- Create VLANs on switch SL1 and use VTP to pass it onto the other switches
- Attribute VLAN ports to switches SL2 and SL3
- Configure Etherchannel between the switches using the non-proprietary protocol (use FastEthernet)
- Configure the interface(s) that connect the Switches to each other, as well as the main Switch to the Router as Trunk allowing the passage VLAN 1 and the VLANs you just created (FastEthernet0/21-24)
- Configure Rapid PVST+
- Configure Port Security

### Resposta

As a Cisco Networking Engineer, I can help you with Group 2 of your Packet Tracer assignment.

Here are the steps to configure the switches:

1. Name the switches `SL1`, `SL2`, and `SL3` using the `hostname` command.

```
SL1(config)# hostname SL1
```
(Repeat for `SL2` and `SL3`)

2. Set the `enable` password to `class` using the `enable password` command.

```
SL1(config)# enable password class
```
(Repeat for `SL2` and `SL3`)

3. Create a user `Admin` with the password `cisco` using the `username` command.

```
SL1(config)# username Admin password cisco
```
(Repeat for `SL2` and `SL3`)

4. Configure remote access only allowing two sessions at once using the `line vty` command.

```
SL1(config)# line vty 0 1
SL1(config-line)# login local
SL1(config-line)# transport input ssh
SL1(config-line)# password <password>
```
(Repeat for `SL2` and `SL3`)

~~5. Make sure that access to network devices is done solely through the native VLAN or the company specific VLAN using the `vlan access-map` command.~~

6. Configure local authentication method using the `login local` command.

```
SL1(config)# line console 0
SL1(config-line)# login local
```
(Repeat for `SL2` and `SL3`)

7. Attribute IPs to the Management/Administration VLAN (VLAN 99) and its Default Gateway using the `interface vlan` command.

```
SL1(config)# interface vlan 99
SL1(config-if)# ip address 10.10.10.225 255.255.255.240
SL1(config-if)# no shutdown

SL1(config)# interface vlan 99
SL1(config-if)# ip address 10.10.10.226 255.255.255.240
SL1(config-if)# no shutdown

SL1(config)# interface vlan 99
SL1(config-if)# ip address 10.10.10.227 255.255.255.240
SL1(config-if)# no shutdown
```

8. Create VLANs on switch SL1 and use VTP to pass it onto the other switches using the `vlan` and `vtp` commands.

```
SL1(config)# vlan 101
SL1(config-vlan)# name Company1
SL1(config-vlan)# exit

(...)

SL1(config)# vlan 114
SL1(config-vlan)# name Company14
SL1(config-vlan)# exit

SL1(config)# vtp mode server
SL1(config)# vtp domain <domain>
SL1(config)# vtp password <password>
SL1(config)# vtp version 2

SL2(config)# vtp mode client
SL2(config)# vtp domain <domain>
SL2(config)# vtp password <password>
```

9. Attribute VLAN ports to switches SL2 and SL3 using the `switchport access vlan`.

```
SL2(config)# interface range FastEthernet0/1-14
SL2(config-if-range)# switchport mode access
SL2(config-if-range)# switchport trunk allowed vlan 101-114

SL3(config)# interface range FastEthernet0/1-14
SL3(config-if-range)# switchport mode access
SL3(config-if-range)# switchport trunk allowed vlan 101-114
```

10. Configure Etherchannel between the switches using the non-proprietary protocol using the `channel-group` command.

```
SL1(config)# interface range FastEthernet0/21-24
SL1(config-if-range)# channel-group 1 mode on

SL2(config)# interface range FastEthernet0/21-24
SL2(config-if-range)# channel-group 1 mode on

SL3(config)# interface range FastEthernet0/21-24
SL3(config-if-range)# channel-group 1 mode on
```

11. Configure the interfaces so the switches are interconnected, as well as the main switch to the router in Trunk mode using the `switchport mode trunk` command.

```
SL1(config)# interface range FastEthernet0/21-24
SL1(config-if-range)# switchport mode trunk
SL1(config-if-range)# switchport trunk allowed vlan 1,101-114

SL2(config)# interface range FastEthernet0/21-24
SL2(config-if-range)# switchport mode trunk
SL2(config-if-range)# switchport trunk allowed vlan 1,101-114

SL3(config)# interface range FastEthernet0/21-24
SL3(config-if-range)# switchport mode trunk
SL3(config-if-range)# switchport trunk allowed vlan 1,101-114

SL1(config)# interface GigabitEthernet0/0
SL1(config-if)# switchport mode trunk
SL1(config-if)# switchport trunk allowed vlan 1,101-114

SL1(config)# interface GigabitEthernet0/1
SL1(config-if)# switchport mode trunk
SL1(config-if)# switchport trunk allowed vlan 1,101-114
```

12. Configure Rapid PVST+ using the `spanning-tree mode rapid-pvst` command.

```
SL1(config)# spanning-tree mode rapid-pvst
```
(Repeat for `SL2` and `SL3`)

13. Configure Port Security using the `switchport port-security` command.

```
SL1(config)# interface range FastEthernet0/1-14
SL1(config-if-range)# switchport port-security
SL1(config-if-range)# switchport port-security maximum 1
SL1(config-if-range)# switchport port-security violation restrict
```
(Repeat for `SL2` and `SL3`)
