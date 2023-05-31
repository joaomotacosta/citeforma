# <p align=center> Configurações de Sistema e Funcionalidades
**<p align=center> CET 8493 | UFCD 5113 - Sistema Operativo Cliente | Formador: António Matias**
**<p align=center> Formando: João Rodrigo Mota da Costa**

## Introdução
Neste relatório vou falar sobre a parte teórica das diferentes versões e edições do Windows, explicar as razões para levar as pessoas a comprar uma chave para este sistema operativo e demonstrar em detalhe algumas funcionalidades como os _Virtual Desktops_ e explicar partes do processo de atualização e manutenção que o utilizador normal pode não conhecer.

Para manter com o tema de mostrar este relatório para pessoas que não sejam tão conhecidas na forma como os seus computadores funcionam, eu vou manter as coisas o mais KISS (_Keep It Simple Silly_) possível.

## Versões e Edições do Windows
### Versões do Windows
Em muitas situações os termos "versões" e "edições" são permutáveis. Mas para o caso do Windows, a conversa tem a tendência a alterar. Versões do Windows não é apenas um indicador da versão, como o Windows XP ou 10, mas sim um indicador da data de compilação do sistema operativo em si.

Em versões anteriores ao Windows, houve uma variedade de indicadores de versão do Windows. Em todas as versões do Windows baseadas no MS-DOS eram apenas marcadas com um número de versão, das quais as versões 1.01, 3.10, 4.00 e 4.10 (Windows 1, 3.10, 95 e 98, respectivamente) são as mais conhecidas. Em todas as versões baseadas no Windows NT até ao primeiro lançamento do Windows 10, a versão era designada por "NT", seguido do número da versão. Versões notáveis desta notação são NT 5.0, NT 5.2, NT 6.1 e NT 10.0 (Windows 2000, XP x64, 7 e Windows 10 1507, respectivamente).

Desde 2015, com o lançamento do Windows 10, a Microsoft transitou para os números de versão a que estamos habituados, normalmente descrito por um conjunto de quatro números. Os dois primeiros números indicam o ano de compilação, enquanto os últimos dois números indicam o mês ou o período do ano em que o sistema operativo foi compilado. Por exemplo, o primeiro lançamento público do Windows 10, denominado 1507, foi lançado a Julho de 2015. A partir de 2019, a Microsoft decidiu tirar o mês e passar para indicar o período em que foi compilado, lançando assim a versão 19H1 em Maio de 2019.

Para além do número de versão, há mais maneiras de se poder identificar a versão específica do Windows. Há _codenames_, um indicador interno da Microsoft para poder identificar os "projetos" no processo de desenvolvimento, tal como Chicago para o Windows 95, Longhorn para o Windows Vista ou Blue para Windows 8.1; E o número de compilação do sistema operativo, como é habitual para muitos outros programas informáticos.

### "Então, e o que são as edições do Windows?"
As edições do Windows são os pequenos "extras" que são postos a seguir à versão, como as edições Home ou Pro. Cada edição do Windows tem as suas vantagens e desvantagens e muitas vezes há edições dentro de edições, como as edições Home Premium do Windows Vista e Windows 7 ou as edições LTSB/LTSC do Windows 10.

Atualmente existem quatro edições "base" para o Windows 10 e 11: Home, Pro, Education e Enterprise, com todas as outras variantes baseadas nestas mesmas edições.

Pessoalmente, a mais notável para mim é a Windows 10 Enterprise LTSC (Long Term Servicing Channel), uma edição feita para empresas e profissionais que precisam de ter uma experiência completa do Windows para computadores que necessitam de estar ligados permanentemente, em que são retiradas as funcionalidades que a Microsoft implementou para apelar ao consumidor normal e para efeitos de telemetria, tal como as aplicações UWP (Universal Windows Platform), Cortana, OneDrive, entre outros. Nesta edição, as atualizações também são modificadas para apenas aceitar atualizações de segurança, tais como o Windows Defender e serviços críticos do Windows. É o que chamaria a "verdadeira experiência" do Windows 10, semelhante a uma edição LTS de uma distribuição Linux.

## Instalação
Durante o processo de instalação, há algumas escolhas que temos de tomar para ter a experiência mais adequada para o que vamos fazer no computador. Uma dessas decisões é se queremos ou não ativar a nossa cópia do Windows.

### "Ativar ou não ativar - Essa é a questão."
Desde as versões mais recentes do Windows 10 que não é necessário ter uma chave de produto para podermos fazer a instalação do Windows, permitindo ao utilizar usar o sistema operativo (quase) na sua totalidade sem ter de pagar por uma licença. Mas tal como em versões mais antigas do sistema operativo, ficamos limitados principalmente em termos de personalização e fica aquela "marca de água" no canto inferior direito.

Neste caso, durante o processo de instalação, podemos escolher ativar logo ou não, ao carregar na opção "Não tenho uma chave de produto".

![Ativação](images/Windows%20Install%20-%20Activate.png)

### Qual edição é que eu escolho?
Outra decisão que vamos ter de tomar (caso estejamos a usar o ISO fornecido pela Microsoft) é a edição do Windows que vamos utilizar. Este passo é feito durante a instalação e não dá para ser alterado sem uma reinstalação completa do sistema operativo.

Recomendação pessoal: Caso o utilizador queira utilizar o computador para uso normal do dia-a-dia e ainda não tem chave de produto ou não vão comprar uma de todo, sugiro ir pelo Windows 10 ou 11 Education ao invés da edição Home. A vantagem desta edição é a exclusão de muitas coisas que não respeitam a privacidade do utilizador final, tal como a telemetria e grande parte das aplicações que muitos utilizadores acabam por remover, ou o que nós denominamos de "bloatware", tal como o Candy Crush ou a aplicação do Office. A única desvantagem desta edição é a falta de chaves disponiveis, ou quando disponíveis são normalmente de mercados menos legitimos. Caso a legitimidade do sistema operativo seja uma causa de preocupação para o utilizador ou para a empresa, sugiro ir pelas edições Home ou Pro.

![Edições](images/Windows%20Install%20-%20Editions.png)

### Opções de formatação
Após escolha da edição, vão aparecer algumas opções relativas ao método de instalação: Upgrade (Atualizar) ou Custom (Personalizado).

A opção Upgrade permite ao utilizador instalar uma versão mais recente do Windows sem apagar os dados do utilizador e as aplicações instaladas. Da minha experiência pessoal, esta opção pode ser útil para o utilizador que não tem possibilidade de guardar os seus dados noutro local, mas há uma tendência de algo não funcionar após o processo de atualização, o que resulta no utilizador acabar quase sempre por arranjar o tempo para reinstalar o sistema operativo por completo.

![Opções de formatação](images/Windows%20Install%20-%20Custom%20vs%20Upgrade.png)

É nesse caso que entra a segunda opção, que permite ao utilizador escolher de que forma o(s) disco(s) são formatados e onde o Windows é instalado. Isto é útil para utilizadores (tal como eu) que gostam de ter uma partição separada para a instalação do Windows e mais nada, o que permite fazer uma reinstalação completa do Windows sem perca de dados. Admitidamente é um processo mais trabalhoso para o utilizador normal, mas pode ser útil para guardar todos os ficheiros importantes numa partição separada para poder facilitar o processo em casos de emergência.

Caso o utilizador escolha essa segunda opção, será apresentado com o seguinte ecrã, onde pode personalizar os discos, partições e o local onde quer instalar o Windows. Neste passo da instalação também pode encontrar drivers para certos discos que não consegue encontrar (tais como controladores de RAID)

![Formatação](images/Windows%20Install%20-%20Formatting.png)

## Funcionalidades
### "Posso ter... mais que um ambiente de trabalho?"
Precisamente! A opção de ambientes de trabalho virtuais ou "virtual desktops" já existe há alguns anos para utilizadores de Linux ou Mac, mas esta funcionalidade do Windows só se tornou uma parte do sistema operativo com a introdução do Windows 10.

Antes do lançamento do Windows 10, era possível ter ambientes de trabalho virtuais no Windows, mas com um programa da Microsoft chamado [PowerToys](https://learn.microsoft.com/en-us/windows/powertoys/), onde a equipa de desenvolvimento do Windows aproveita para testar novas funcionalidades que quer adicionar ao sistema operativo no futuro. O projeto é completamente Open Source e existe desde o Windows 95.

Para aceder a esta funcionalidade no Windows 10, pode carregar no botão "Task View" (Visualizador de Tarefas) ou então usar o atalho de teclado `Windows + Tab`.

![Task View](images/Windows%20-%20Task%20View.png)

A partir deste "menu", podemos criar mais ambientes de trabalho virtuais, alterar os nomes dos mesmos e alterar as opções de certas janelas ou programas para aparecerem em um ou todos os ambientes. Também podemos trocar ambientes de trabalho virtuais aqui, mas eu prefiro o atalho de teclado `Ctrl + Windows + (Setas)`. Isto é útil para quem não tem espaço suficiente para múltiplos ecrãs e precisa de mais espaço para trabalhar, ou então para criar "espaços" para separar certos programas que usamos no nosso dia-a-dia.

![Música](images/Windows%20-%20Task%20View%20Music.png)
![Trabalho](images/Windows%20-%20Task%20View%20Work.png)

### Gestor de tarefas, o "deus do Windows"
Desde a sua introdução há 26 anos que o Task Manager (ou Gestor de Tarefas) é a solução milagrosa para quando um programa deixa de funcionar ou quando o nosso computador começa a agir "fora do normal". Ao longo dos anos, a Microsoft foi implementando mais ferramentas no cinto do Gestor de Tarefas, dando a este "David" o poder para derrotar muitos "Golias" que tendem a atormentar o nosso computador.

Para abrir ao Gestor de Tarefas, podemos carregar na barra de tarefas com o botão direito do rato, ou então usar o atalho `Ctrl + Shift + Escape`. Muitos até hoje acreditam que a forma mais rápida é carregar `Ctrl + Alt + Delete`, mas tal como em Linux, este atalho de teclado é usado para efeitos de ligar, desligar ou trocar de utilizador.

![Taskbar Task Manager](images/Windows%20-%20Task%20Manager.png)

Após aberto, não vai aparecer muita coisa, apenas os programas que estão atualmente a correr. É ao carregar na opção "Mais detalhes" que vemos a verdadeira visão do Gestor de Tarefas. Temos alguns separadores que podemos usar para ver e diagnosticar qualquer problema que estejamos a ter, quer seja de _software_ (Processos, Detalhes e Serviços) ou de _hardware_ (Performance).

![Processos](images/Windows%20-%20Task%20Manager%20Processes.png)
![Performance](images/Windows%20-%20Task%20Manager%20Performance.png)
![Detalhes](images/Windows%20-%20Task%20Manager%20Details.png)
![Serviços](images/Windows%20-%20Task%20Manager%20Services.png)

### Gestor de dispositivos - "Porque é que a minha mesa digitalizadora não funciona?"
Outra ferramenta que era quase (senão mais útil) que o Gestor de Tarefas no inicio dos anos 2000 era o gestor de dispositivos. Nos dias que correm, grande parte dos dispositivos que temos funcionam numa versão recente do Windows (mesmo que não seja com 100% compatibilidade). Mas na altura em que patentes como USB, FireWire, Serial e PS/2 competiam para ter controlo do merdado de periféricos e armazenamento portátil com o máximo de velocidade possível, o Windows 95 e 2000 sofriam com a falta de compatibilidade com a maior parte dos dispositivos que estavam a sair no mercado.

Caso alguma coisa não funcione ou o Windows não consiga usar um driver básico de compatibilidade, abrir o Gestor de Dispositivos pode ser uma boa ferramenta para saber o que é necessário ou então instalar outro dispor ao nosso dispor. Para o abrir, podemos carregar no botão direito no botão Iniciar e ir a "Gestor de Dispositivos" ou então podemos abrir uma janela correr (`Windows + R`) e escrever `devmgmt.msc`

![Iniciar Gestor de Dispositivos](images/Windows%20-%20Start%20Device%20Manager.png)
![Correr Gestor de Dispositivos](images/Windows%20-%20Run%20Device%20Manager.png)

Quando aberto, somos apresentados com todos os tipos de dispositivos que estão ligados ao nosso computador, tal como os componentes principais (CPU, GPU), mas também controladores de USB, periféricos, impressoras, entre outros.

![Gestor de Dispositivos](images/Windows%20-%20Device%20Manager.png)

A partir daqui, podemos investigar dispositivos não são reconhecidos ou que estejam desligados, instalar drivers novos e utilizar as ferramentas do Windows ao nosso dispor para ter todos os dispositivos ligados.

A maior utilidade que eu encontrei para o Gestor de Dispositivos é para dispositivos Android que não conseguem arrancar para o sistema operativo (que necessitam de um driver da Google para trabalhar) e adaptadores WiFi em que podemos ultrapassar algumas restrições dos drivers do fabricante para ter mais velocidade ou estabilidade com certos adaptadores.

<div style="page-break-after: always"></div>

## Conclusão
O Windows tem imensas ferramentas para ajudar o utilizador a escolher a edição mais correta para o seu computador e o uso que vai ter, e tem ainda mais ferramentas para resolução de problemas, quer seja programas a não responder ou dispositivos que não têm compatibilidade fora da caixa. Ao longo da história deste sistema operativo, muitos destes problemas estão a deixar de existir ou ocorrem com muito menos frequência para o utilizador normal.

Mas quando eles acontecem, é sempre bom ter uma "caixa de ferramentas" para atacar qualquer problema que possa surgir no futuro. Ao fim do dia, nós sabemos que o Windows não é perfeito e nunca o vai ser.