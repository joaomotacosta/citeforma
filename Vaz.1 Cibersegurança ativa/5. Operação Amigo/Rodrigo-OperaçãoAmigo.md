# <p align=center> Caso 002: Operação Amigo
**<p align=center> CET 8493 | UFCD 9196 - Cibersegurança Ativa | Formador: Paulo Vaz**
**<p align=center> Formando: João Rodrigo Mota da Costa**

### Introdução
Neste documento, vou fazer a exposição de todas as provas e responder a algumas perguntas relacionadas com o caso 002, entitulado "Operação Amigo". A pedido do formandor Paulo Vaz, foi pedido para tentar fazer uma análise de uma *pen* de um político que foi apreendida durante uma operação de investigação. Uma cópia binária da mesma é o apresentado para análise.

O objectivo desta análise é confirmar se há ligações entre este políticos e outros políticos, tal como pagamentos ilícitos e ligações internacionais e a figuras da sociedade portuguesa.

### Criação do caso
Para esta análise, utilizamos o *software* Autopsy. Foi criado então um caso para podermos analisar o conteúdo da *pen*.

![OperaçãoAmigo-1](Provas/Rodrigo-Opera%C3%A7%C3%A3oAmigo_1.png)

![OperaçãoAmigo-2](Provas/Rodrigo-Opera%C3%A7%C3%A3oAmigo_2.png)

Em seguida, foi importado a nossa "fonte de dados", ou seja, a *pen* em si. Após o importe, vamos fazer uma primeira ingestão do conteúdo da nossa fonte.

![OperaçãoAmigo-3](Provas/Rodrigo-Opera%C3%A7%C3%A3oAmigo_3.png)

![OperaçãoAmigo-4](Provas/Rodrigo-Opera%C3%A7%C3%A3oAmigo_4.png)

### Prova 001 - `system.rar`
Escondida dentro da pasta "Pictures", encontramos uma pasta denominada "Notas", onde podemos encontrar fotografias de notas de escudo, a antiga moeda portuguesa utilizada antes de 2002. Mas entre as fotografias, encontramos o ficheiro `system.rar`. A extração do mesmo foi feito para análise mais aprofundada.

![OperaçãoAmigo-5](Provas/Rodrigo-Opera%C3%A7%C3%A3oAmigo_5.png)

Ao exportar este ficheiro `rar`, temos um ficheiro escondido de sistema chamado `system`. Utilizando outro *software* chamado VeraCrypt, conseguimos "montar" este ficheiro como um disco virtual na nossa máquina de análise. Mas esta necessita de uma palavra-passe. Após uma investigação mais profunda, foi encontrada uma fotografia do presidente do Futebol Clube do Porto, Jorge Nuno Pinto da Costa, na qual podemos ver no separador "Text" que no final temos um pedaço de texto que nos índica que há uma palavra-passe `secret0`.

![OperaçãoAmigo-6](Provas/Rodrigo-Opera%C3%A7%C3%A3oAmigo_6.png)

Ao utilizar esta palavra-passe no VeraCrypt, conseguimos montar o ficheiro `system` no sistema.

![OperaçãoAmigo-7](Provas/Rodrigo-Opera%C3%A7%C3%A3oAmigo_7.png)

### Provas 002 e 003 - Diário de Notícias, Sócrates e Costa

No novo disco que importamos com o VeraCrypt, conseguimos verficar que existem dois ficheiros `.pdf` e uma pasta com o nome `Investigacao`. Um dos ficheiros `.pdf` é uma capa do jornal Diário de Notícias, datado ao dia 25 de novembro de 2014. Nesta edição, a capa é focada no aprisionamento de ex-primeiro ministro, José Sócrates. Um pedaço importante de informação nesta capa é a linha que diz:

> **Reações.** Socialistas cumprem pedido de António Costa e mantêm-se em silêncio, tal como todos os partidos

![OperaçãoAmigo-8](Provas/Rodrigo-Opera%C3%A7%C3%A3oAmigo_8.png)

Com esta informação em mente, podemos começar a "ligar os pontos" entre os dois políticos e com a situação que temos entre mãos. Ao abrir a pasta `Investigacao`, podemos confirmar as nossas suspeitas ao ver um conjunto de fotografias de António Costa, algumas delas com José Socrates. Com estas provas, podemos confirmar a suspeita de alguma ligação entre o actual e antigo primeiros-ministros portugueses e o presidente do FC Porto (que pode envolver pagamentos ilícitos).

![OperaçãoAmigo-9](Provas/Rodrigo-Opera%C3%A7%C3%A3oAmigo_9.png)

### Prova 004 - Vladimir Putin

Voltando ao Autopsy, podemos avistar mais um ficheiro suspeito com o nome de `Info.txt`, que cita:

> Procura o grande lider

Ao procurar na mesma pasta onde o ficheiro estava guardado, podemos encontrar uma fotografia do presidente russo, Vladimir Putin. Com esta descoberta, podemos então confirmar as suspeitas de ligações internacionais e preparar a extração das provas para serem utilizadas na investigação da "Operação Amigo".

![OperaçãoAmigo-10](Provas/Rodrigo-Opera%C3%A7%C3%A3oAmigo_10.png)

![OperaçãoAmigo-11](Provas/Rodrigo-Opera%C3%A7%C3%A3oAmigo_11.png)

### Fecho do caso

Para sumariar os acontecimentos, temos confirmação de um conjunto de pagamentos ilícitos feitos entre:

- O político alvo da investigação
- Presidente do FC Porto, Jorge Nuno Pinto da Costa
- Ex-primeiro ministro, José Sócrates
- Actual primeiro ministro, António Costa
- E presidente russo, Vladimir Putin

Ao examinar a *pen* do político, temos algum tipo de confirmação das suspeitas levantadas, que podem ser úteis para o resto da investigação.

**Caso encerrado.**