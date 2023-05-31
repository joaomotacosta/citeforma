# Instalação de Redes Locais / Serviços de Redes | Projeto Final
### João Rodrigo Mota da Costa | CET8493 Cibersegurança | Formador: Manuel Ramos

## Grupo 1
Para começar, decidi dividir a rede 10.10.10.0/24 em 14 subnets, uma para cada empresa. Considerando que precisamos de acomodar até 10 empregados, decidi usar a máscara 255.255.255.240 (ou /28), o que nos dá 14 hosts para cada subrede.

Tendo em conta estes critérios, está é a tabela do espaço do **Lumiar**:

| Rede | Endereço de rede | Intervalo de hosts | Endereço de broadcast | Máscara de subrede | Default Gateway | VLAN ID | Nome da VLAN |
|-------|----------------|-------------------|-------------------|-------------|----------------|---------|-----------|
| Empresa 1 | 10.10.10.0 | 10.10.10.1 - 14 | 10.10.10.15 | 255.255.255.240 | 10.10.10.1 | 101 | Empresa 1 |
| Empresa 2 | 10.10.10.16 | 10.10.10.17 - 30 | 10.10.10.31 | 255.255.255.240 | 10.10.10.17 | 102 | Empresa 2 |
| Empresa 3 | 10.10.10.32 | 10.10.10.33 - 46 | 10.10.10.47 | 255.255.255.240 | 10.10.10.33 | 103 | Empresa 3 |
| Empresa 4 | 10.10.10.48 | 10.10.10.49 - 62 | 10.10.10.63 | 255.255.255.240 | 10.10.10.49 | 104 | Empresa 4 |
| Empresa 5 | 10.10.10.64 | 10.10.10.65 - 78 | 10.10.10.79 | 255.255.255.240 | 10.10.10.65 | 105 | Empresa 5 |
| Empresa 6 | 10.10.10.80 | 10.10.10.81 - 94 | 10.10.10.95 | 255.255.255.240 | 10.10.10.81 | 106 | Empresa 6 |
| Empresa 7 | 10.10.10.96 | 10.10.10.97 - 110 | 10.10.10.111 | 255.255.255.240 | 10.10.10.97 | 107 | Empresa 7 |
| Empresa 8 | 10.10.10.112 | 10.10.10.113 - 126 | 10.10.10.127 | 255.255.255.240 | 10.10.10.113 | 108 | Empresa 8 |
| Empresa 9 | 10.10.10.128 | 10.10.10.129 - 142 | 10.10.10.143 | 255.255.255.240 | 10.10.10.129 | 109 | Empresa 9 |
| Empresa 10 | 10.10.10.144 | 10.10.10.145 - 158 | 10.10.10.159 | 255.255.255.240 | 10.10.10.145 | 110 | Empresa 10 |
| Empresa 11 | 10.10.10.160 | 10.10.10.161 - 174 | 10.10.10.175 | 255.255.255.240 | 10.10.10.161 | 111 | Empresa 11 |
| Empresa 12 | 10.10.10.176 | 10.10.10.177 - 190 | 10.10.10.191 | 255.255.255.240 | 10.10.10.177 | 112 | Empresa 12 |
| Empresa 13 | 10.10.10.192 | 10.10.10.193 - 206 | 10.10.10.207 | 255.255.255.240 | 10.10.10.193 | 113 | Empresa 13 |
| Empresa 14 | 10.10.10.208 | 10.10.10.209 - 222 | 10.10.10.223 | 255.255.255.240 | 10.10.10.209 | 114 | Empresa 14 |
| Gestão| 10.10.10.224 | 10.10.10.225 - 238 | 10.10.10.239 | 255.255.255.240 | 10.10.10.225 | 99 | Gestão |
| TI | 10.10.10.240 | 10.10.10.241 - 254 | 10.10.10.255 | 255.255.255.240 | 10.10.10.241 | 100 | TI | 

E esta é a tabela para o espaço de **Telheiras**:

| Rede | Endereço de rede | Intervalo de hosts | Endereço de broadcast | Máscara de subrede | Default Gateway | VLAN ID | Nome da VLAN |
|-------|----------------|-------------------|-------------------|-------------|----------------|---------|-----------|
| Empresa 1 | 172.16.10.0 | 172.16.10.1 - 14 | 172.16.10.15 | 255.255.255.240 | 172.16.10.1 | 101 | Empresa 1 |
| Empresa 2 | 172.16.10.16 | 172.16.10.17 - 30 | 172.16.10.31 | 255.255.255.240 | 172.16.10.17 | 102 | Empresa 2 |
| Empresa 3 | 172.16.10.32 | 172.16.10.33 - 46 | 172.16.10.47 | 255.255.255.240 | 172.16.10.33 | 103 | Empresa 3 |
| Empresa 4 | 172.16.10.48 | 172.16.10.49 - 62 | 172.16.10.63 | 255.255.255.240 | 172.16.10.49 | 104 | Empresa 4 |
| Empresa 5 | 172.16.10.64 | 172.16.10.65 - 78 | 172.16.10.79 | 255.255.255.240 | 172.16.10.65 | 105 | Empresa 5 |
| Empresa 6 | 172.16.10.80 | 172.16.10.81 - 94 | 172.16.10.95 | 255.255.255.240 | 172.16.10.81 | 106 | Empresa 6 |
| Gestão| 172.16.10.224 | 172.16.10.225 - 238 | 172.16.10.239 | 255.255.255.240 | 172.16.10.225 | 99 | Gestão |
| TI | 172.16.10.240 | 172.16.10.241 - 254 | 172.16.10.255 | 255.255.255.240 | 172.16.10.241 | 100 | TI | 

## Grupo 2
Estes foram os passos utilizados para configurar os switches:

1. Nomear os switches `SL1`, `SL2` e `SL3`:
```
SL1(config)# hostname SL1
```
(Repetir para `SL2` e `SL3`)

2. Definir a palavra-passe de `enable` para `class`:
```
SL1(config)# enable password class
```
(Repetir para `SL2` e `SL3`)

3. Criar o utilizador `Admin` com a palavra-passe `cisco`:
```
SL1(config)# username Admin password cisco
```
(Repetir para `SL2` e `SL3`)

4. Configurar o acesso remoto permitindo apenas duas sessões em simultâneo:
```
SL1(config)# line vty 0 1
SL1(config-line)# login local
SL1(config-line)# transport input ssh
SL1(config-line)# password <password>
```
(Repetir para `SL2` e `SL3`)

5. Configurar a autênticação local:
```
SL1(config)# line console 0
SL1(config-line)# login local
```
(Repetir para `SL2` e `SL3`)

6. Atribuir IPs à VLAN de Gestão (VLAN 99) e a sua *Default Gateway*:
```
SL1(config)# interface vlan 99
SL1(config-if)# ip address 10.10.10.225 255.255.255.240
SL1(config-if)# no shutdown

SL2(config)# interface vlan 99
SL2(config-if)# ip address 10.10.10.226 255.255.255.240
SL2(config-if)# no shutdown

SL3(config)# interface vlan 99
SL3(config-if)# ip address 10.10.10.227 255.255.255.240
SL3(config-if)# no shutdown
```

7. Criar VLANs para o switch SL1 e usar o VTP para passar para os outros switches:
```
SL1(config)# vlan 101
SL1(config-vlan)# name Empresa1
SL1(config-vlan)# exit

(...)

SL1(config)# vlan 114
SL1(config-vlan)# name Empresa14
SL1(config-vlan)# exit

SL1(config)# vtp mode server
SL1(config)# vtp domain <domain>
SL1(config)# vtp password <password>
SL1(config)# vtp version 2

SL2(config)# vtp mode client
SL2(config)# vtp domain <domain>
SL2(config)# vtp password <password>
```

8. Atribuir as portas de VLAN aos switches `SL2` e `SL3`
```
SL2(config)# interface range FastEthernet0/1-14
SL2(config-if-range)# switchport mode access
SL2(config-if-range)# switchport trunk allowed vlan 101-114

SL3(config)# interface range FastEthernet0/1-14
SL3(config-if-range)# switchport mode access
SL3(config-if-range)# switchport trunk allowed vlan 101-114
```

9. Configurar o Etherchannel utilizando um protocolo não-proprietário.
```
SL1(config)# interface range FastEthernet0/21-24
SL1(config-if-range)# channel-group 1 mode on

SL2(config)# interface range FastEthernet0/21-24
SL2(config-if-range)# channel-group 1 mode on

SL3(config)# interface range FastEthernet0/21-24
SL3(config-if-range)# channel-group 1 mode on
```

10.  Configurar as interfaces para que os switches fiquem interligados, e o switch para o router em modo *Trunk*:
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

11. Configurar o Rapid PVST+:
```
SL1(config)# spanning-tree mode rapid-pvst
```
(Repetir para `SL2` e `SL3`)

12.  Configurar Port Security:
```
SL1(config)# interface range FastEthernet0/1-14
SL1(config-if-range)# switchport port-security
SL1(config-if-range)# switchport port-security maximum 1
SL1(config-if-range)# switchport port-security violation restrict
```
(Repetir para `SL2` e `SL3`)

## Grupo 3

1. Segurança básica do router:

```
! Palavra-passe enable
RL(config)# enable password class

! Utilizador
RL(config)#  username Admin password cisco

! Configurar acesso remoto
RL(config)# line vty 0 1
RL(config-line)# login local
RL(config-line)# transport input ssh
 ```

 2. Configurar VLAN Routing
```
! Configurar subinterfaces para VLANs
RL(config)# interface GigabitEthernet0/0.101
RL(config-subif)# encapsulation dot1Q 101
RL(config-subif)# ip address 10.10.10.1 255.255.255.240
RL(config-subif)# ip nat inside

! Repetir para as outras VLANs
```

3. Configurar DHCP para as VLANs:
```
! Configurar DHCP Pool
RL(dhcp-config)# ip dhcp pool Empresa1
RL(dhcp-config)# network 10.10.10.0 255.255.255.240
RL(dhcp-config)# default-router 10.10.10.1
RL(dhcp-config)# dns-server 40.40.40.1

! Repeat for other VLANs
```

4. Configurar DNS:
```
RL(config)# ip dns server
RL(config)# ip domain name www.srv_isp.pt
RL(config)# ip name-server 40.40.40.0
RL(config)# exit
```
###### [_](https://www.perplexity.ai/search/4777b43e-bb1b-42b0-befd-1a6accee5203?s=c)[_](https://chat.forefront.ai/share/79b0egphzuxpiaiy)