
# <p align=center> CET-8493 UFCD-5102 | Relatório Amazing Bytes
### <p align=center> João Rodrigo Mota da Costa
## Introdução
Neste relatório, irei apresentar e explicar as configurações para a empresa Amazing Bytes.

Foi-nos pedido pelo formador Manuel Ramos para apresentar um plano de configuração de rede, usando o Cisco Packet Tracer, para uma empresa imaginária (Amazing Bytes, ou abytes.com), composta por seis edifícios em Lisboa e no Porto, com capacidade para 350 formandos, 55 membros de staff, 9 servidores e 2 ISP (Internet Service Providers) diferentes.

Neste projeto, decidi começar pelo planeamento da empresa no Pólo de Lisboa e depois copiar as configurações para o Pólo do Porto, por questões de conveniência, visto que a configuração base dos mesmos é parecida. Para além disso, não havia vantagens em termos de segurança ao criar uma nova configuração para o Pólo do Porto, facilitando assim o trabalho de implementar a rede e também facilitar a formação de possíveis membros de staff para gerir a rede nos dois Pólos.

## Tabela de Redes
A melhor maneira para configurar as redes para este projeto foi utilizar as tabelas fornecidas pelo formador para ter uma base para trabalhar. Por questões de conveniência, marquei cada uma das sub-redes com uma cor diferente.

![Tabela de Redes Abytes](./Tabela_Projeto-5102_Rodrigo.png)

## Topologia da Rede
Após a organização das redes, passamos para a configuração dos mesmos. Utilizando o Packet Tracer, criei a topologia que achei mais adequada para o Pólo de Lisboa, colocando a parte administrativa e os servidores no primeiro edifício, seguido da sala de exames Pearson VUE no segundo edifício, e finalmente as salas de formação no terceiro edifício. Também coloquei no edifício 1 um switch separado com um Access Point, para dar rede Wi-fi aos três edifícios.

Depois de ter as configurações do Pólo de Lisboa completas, copiei então a topologia para o Pólo do Porto e fiz as alterações necessárias, retirando o servidor de MySQL e adicionando mais três salas de formação: duas teóricas no edifício 2 e uma sala prática no edifício 3.

![Topologia de Rede Abytes](./Topologia_Projeto-5102_Rodrigo.png)

## Configuração de rede
Para a configuração da rede, comecei em configurar o que eu chamei de "Triângulo das Roturas", um pequeno trocadilho no Triângulo das Bermudas, certificando que todos os routers podiam comunicar entre si e com o ISP para o servidor que alojava o abytes.com. Inicialmente tinha uma ideia de configuração diferente, criando três subredes diferentes onde tinha todos os routers, mas após consultar os apontamentos e ajuda dos meus colegas, alterei para a solução mais correta, que faz uma ligação ponto-a-ponto entre os routers de cada edifício para evitar perda de mais endereços IP.

Em seguida, configurei os servidores necessários e as salas para cada edifício, utilizando um switch e uma pool de DHCP de modo a separar as sub-redes.

Quando fiquei satisfeito com o número de dispositivos para cada departamento em cada edifício, comecei a configurar as redes para o *routing* OSPF e as regras de NAT para cada router, de modo a cada dispositivo poder comunicar com qualquer outro dispositivo na rede interna, e estabelecer ligação para o mundo exterior.

## Dificuldades
Pessoalmente, a configuração que gerou mais questões e dificuldade foi a ligação entre os dois Pólos, utilizando o protocolo de *routing* OSPF nos routers do ISPs ABC e XYZ. Por alguma razão, não consegui estabelecer a ligação entre os dois, tornando impossível a comunicação entre os dois Pólos e também a ligação do Pólo do Porto ao servidor onde estava alojado o website www.abytes.com.

Outro fator que me causou alguma confusão inicial foi as configurações de segurança porque não tinha prática suficiente com os mesmos, mas após as primeiras configurações, foi uma progressão para ter todos os equipamentos seguros.

## Conclusão
Este foi um projeto que puxou pela minha criatividade e pensamento critico de modo a conseguir configurar tudo da forma mais adequada. Sinto que ganhei ainda mais experiência nesta área e até vejo a minha rede de casa com um pouco mais de curiosidade. Talvez ainda consegue montar um servidor em casa...