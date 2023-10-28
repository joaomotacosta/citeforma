Citeforma CET 8493 - UFCD 9188

27 de dezembro de 2022

# LCinc: Orçamento de segurança do sistema informática

Neste documento, vamos apresentar uma proposta de orçamento
relativamente à segurança do sistema de informação da LCinc.
Consideramos que estas são as melhores opções para prevenir e reagir a
quaisquer quebras de segurança informática. Para este orçamento
necessitamos dos seguintes mecanismos: pfSense, Bitdefender e Linode

## Sistema de controlo de tráfego (Firewall)

Iremos usar o pfSense como Firewall visto que é um *software* compatível
com o servidor disponível (HP Proliant DL360) e também é gratuito. Com
todos os conhecimentos adquiridos ao longo deste CET, poderemos utilizar
os mesmos para configurar uma firewall segura, com bloqueio de sites e
controlo de tráfego. Tínhamos à nossa disposição outros *software* de
firewall, mas decidimos propor o pfSense visto que tem uma vasta
documentação disponível e o máximo de compatibilidade com todos os tipos
de dispositivos na empresa.

## Sistema de proteção contra *malware* (*Anti-malware*)

Como sistema de proteção contra *malware*, escolhemos o Bitdefender, na
sua configuração para 51 dispositivos (todos os postos de trabalho +
servidor Windows Server) no pacote de subscrição de 2 anos. Após análise
de várias opções, encontramos esta como a melhor em termos de
qualidade/preço, tendo em conta a segurança equivalente que apresenta. É
eficiente em termos de recursos, tem proteção completa contra todos os
tipos de *malware*, utiliza *machine learning* para monitorizar os
processos que estão a correr no posto de trabalho, envolvido numa
plataforma de fácil utilização.

## Sistema de acesso seguro (VPS/VPN)

Para o sistema de acesso seguro, decidimos optar na utilização do
Linode. É um serviço de configuração e lançamento de servidores baseados
em Linux, com preços acessíveis. Devido a ser necessário configuração,
permite ao utilizador configurar um servidor que seja feito à medida do
utilizador e escalável, caso seja necessário. A nossa configuração
recomendada seria um Linode baseado no CentOS, com 6 CPU e 16GB de
memória, o que daria uma experiência confortável tendo em conta as
necessidades da empresa.

## Conclusão

Incluindo todos os serviços e soluções de *software* aqui por nós
apresentadas, a quantia necessária seria de 3190€, dos quais 1390€ seria
para o *software* de proteção *anti-malware*, e os restantes 1800€ para
o sistema de acesso seguro. O *software* de firewall terá um custo de
0€. Em termos mensais, fica a custo total de aproximadamente 133€.
