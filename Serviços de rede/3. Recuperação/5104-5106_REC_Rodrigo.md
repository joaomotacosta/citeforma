# <p align=center> Principais serviços de rede em IPv6
**<p align=center> CET 8493 | UFCD 5104/5106 - Instalação de redes / Serviços de rede | Formador: Manuel Ramos**
**<p align=center> Formando: João Rodrigo Mota da Costa**

## Introdução
Neste documento, vou descrever os principais serviços de rede necessários para estabelecer uma infra-estrutura de rede com suporte para o protocolo IPv6. A transição para o IPv6 é essencial devido ao esgotamento do espaço de endereçamento IPv4. Vou destacar a importância de cada serviço, independentemente do tamanho da empresa, o seu "core business" ou a especificidade da mesma. Além disso, vamos abordar a configuração e funcionamento do serviço DNS para IPv6, bem como as opções de construção de endereços IPv6.

## Serviço DNSv6
### Descrição
O serviço DNS (Domain Name System) é fundamental para a resolução de nomes de domínio em endereços IP. Com o IPv6, é necessário garantir que o DNS suporte registos AAAA para mapear nomes de domínio em endereços IPv6.

### Funcionamento
O funcionamento do DNS para IPv6 é semelhante ao do DNS para IPv4. Os registos AAAA são adicionados às zonas DNS para mapear nomes de domínio em endereços IPv6 correspondentes. Os servidores DNS autoritários e recursivos precisam de ser configurados corretamente para responder a consultas de registos AAAA.

### Hierarquia
A hierarquia do DNS para IPv6 segue a mesma estrutura do DNS para IPv4. Existem os servidores raiz, os servidores TLD (*Top Level Domain*), os servidores autoritários de domínio e os servidores recursivos.

### Estrutura
A estrutura do DNS para IPv6 é baseada na árvore de domínio. Os domínios são organizados hierarquicamente, a começar pelos TLDs, seguidos dos domínios de segundo nível e assim em diante. Os registos AAAA são adicionados aos domínios correspondentes para fornecer mapeamento de nomes de domínio para endereços IPv6.

### Configuração
A configuração do DNS para IPv6 envolve a adição de registos AAAA às zonas DNS existentes. Os servidores DNS autoritários precisam de ser atualizados com registos AAAA correspondentes aos registos A existentes. Além disso, é necessário configurar corretamente os servidores recursivos para responder a consultas de registos AAAA.

## Construção de Endereços IPv6
### Descrição
A construção de endereços IPv6 envolve a criação de endereços únicos para dispositivos na rede. Existem várias opções para construir endereços IPv6, incluindo endereços estáticos, endereços EUI64, DHCPv6 Stateless e DHCPv6 Stateful.

### Funcionamento e configuração
O funcionamento e configuração de endereços IPv6 variam de acordo com a opção escolhida:

- Endereços Estáticos: Os endereços IPv6 estáticos são configurados manualmente em cada dispositivo da rede. Cada dispositivo recebe um endereço IPv6 único, garantindo a conectividade e identificação exclusiva na rede.

- Endereços EUI64: Os endereços EUI64 são construídos a partir do MAC Address do dispositivo. Os primeiros 64 bits do endereço são derivados do MAC Address, e os últimos 64 bits são adicionados para formar um endereço IPv6 completo.

- DHCPv6 Stateless: Neste método, os dispositivos obtêm o endereço IPv6 automaticamente por meio do autoconfiguração sem a necessidade de um servidor DHCP. Os prefixos de rede são anunciados na rede e os dispositivos constroem os seus endereços IPv6 com base nesses prefixos.

- DHCPv6 Stateful: Um servidor DHCPv6 atribui dinamicamente os endereços IPv6 para os dispositivos da rede. Os dispositivos enviam solicitações de endereços ao servidor DHCPv6, que responde com um endereço IPv6 disponível.

### Segurança
A construção de endereços IPv6 deve ter em consideração as práticas de segurança. Recomenda-se implementar mecanismos de filtragem de pacotes, como firewalls, e adotar boas práticas de segurança, como a configuração adequada dos dispositivos de rede.

## Conclusão
Neste documento, foi descrito os principais serviços de rede para o protocolo IPv6, incluindo o serviço DNS e a construção de endereços IPv6. O DNS para IPv6 é essencial para a resolução de nomes de domínio em endereços IPv6, enquanto a construção de endereços IPv6 fornece mecanismos para atribuir endereços exclusivos aos dispositivos. A configuração correta desses serviços é crucial para garantir a conectividade e o funcionamento adequado da rede IPv6.