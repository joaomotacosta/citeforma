# Relatório - Hardware e redes de computadores

## Hardware:

- 3 Servidores (WEB, DHCP-DNS1, DHCP-DNS2)
- 2 Routers 2911 (ISP, AB) (com módulos HWIC-1GE-SFP e GLC-LH-SMD)
- 3 Switches 2960 (ADM, DEV, LOJA)
- 20 Computadores:
	- ADM: PC-A1
	- DEV: PC-D1 a PC-D13 + DEV-LAPTOP (com módulo PT-LAPTOP-NM-1W-AC)
	- LOJA: PC-L1 a PC-L5
- 1 Access Point (DEV-AP)

## Configurações:

- Servidor WEB:
	- Services > HTTP > index.html > Alteração para "Amazing Bytes - Venha a próxima!"
	- Services > DNS > Name "www.abytes.com" > Address 80.80.80.1
	- Desktop > IP Configuration > Static
		- IPv4 Address 80.80.80.1
		- Subnet 255.255.255.0
		- Gateway 80.80.80.254
		- DNS 80.80.80.1

- Servidor DHCP-DNS1
	- Services > DNS > Name "www.abytes.com" > Address 80.80.80.1
	- Desktop > IP Configuration > Static
		- IPv4 Address 172.31.10.2
		- Subnet 255.255.255.0
		- Gateway 172.31.10.1
		- DNS 172.31.10.2

- Servidor DHCP-DNS2
	- Services > DNS > Name "www.abytes.com" > Address 80.80.80.1
	- Desktop > IP Configuration > Static
		- IPv4 Address 172.31.10.3
		- Subnet 255.255.255.0
		- Gateway 172.31.10.1
		- DNS 172.31.10.2

- Router ISP
	- Config > Settings
		- Display Name "ISP"
		- Hostname "ISP"
	- Config > GigabitEthernet0/0
		- IPv4 Address 80.80.80.254
		- Subnet 255.255.255.0
	- Config > GigabitEthernet0/0/0
		- IPv4 Address 194.165.209.1
		- Subnet 255.255.255.0

- Router AB
	- Config > Settings
		- Display Name "AB"
		- Hostname "AB"
	- Config > GigabitEthernet0/0
		- IPv4 Address 172.31.10.1
		- Subnet 255.255.255.224
		- DHCP Pool ADM: 172.31.10.1/27
			- DHCP Exclusion 172.31.10.1-172.31.10.4
	- Config > GigabitEthernet0/1
		- IPv4 Address 172.31.10.33
		- Subnet 255.255.255.224
		- DHCP Pool DEV: 172.31.10.33/27
			- DHCP Exclusion 172.31.10.33
	- Config > GigabitEthernet0/2
		- IPv4 Address 172.31.10.65
		- Subnet 255.255.255.224
		- DHCP Pool LOJA: 172.31.10.65/28
			- DHCP Exclusion 172.31.10.65
	- Config > GigabitEthernet0/0/0
		- IPv4 Address 194.165.209.2
		- Subnet 255.255.255.252