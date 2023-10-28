<div align="center">
<h3>

**NOTA - ISTO FOI CONVERTIDO DE UM FICHEIRO DOCX PARA MARKDOWN. CASO HAJA ALGUM BUG OU INFORMAÇÃO ERRADA, POR FAVOR CRIAR UM ISSUE E EU RESOLVO ASAP**

</h>
</div>

<table>
<colgroup>
<col style="width: 18%" />
<col style="width: 49%" />
<col style="width: 13%" />
<col style="width: 18%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>MODALIDADE:</strong></th>
<th>Curso de Especialização Tecnológica (CET)</th>
<th colspan="2"><p><strong>Ficha 4:</strong></p>
<p><em><strong>Honeypot – Open Canary</strong></em></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>CURSO:</strong></td>
<td colspan="3">Técnico especialista em cibersegurança</td>
</tr>
<tr class="even">
<td><strong>UFCD:</strong></td>
<td>Wargamming</td>
<td><strong>CÓDIGO UFCD:</strong></td>
<td>9197</td>
</tr>
<tr class="odd">
<td><strong>FORMADOR/A:</strong></td>
<td>Ricardo Lobo</td>
<td><strong>DATA:</strong></td>
<td>17/03/2023</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td colspan="4"><strong>OBJETIVOS</strong></td>
</tr>
<tr class="even">
<td colspan="4"><ul>
<li><p>Continuação da exploração do <em>OpenCanary.</em></p></li>
<li><p>Simulação de ataques ao <em>Honeypot</em>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

| **<span class="mark"><span class="smallcaps">A ficha de trabalho deverá ser realizada neste ficheiro</span></span>** |
|----------------------------------------------------------------------------------------------------------------------|

# Exercícios

1.  Na VM onde instalou o *OpenCanary*, aceda ao ficheiro de
    configurações e ative as opções abaixo:

![Alt text](<.media/Open Canary (11).png>)
![Alt text](<.media/Open Canary (12).png>)

Grave as alterações e reinicie o *OpenCanary*.

opencanaryd –restart

2.  Na VM do *OpenCanary*, **execute o comando abaixo**, para verificar
    quais as portas que se encontram abertas, **preencha a tabela**
    seguinte com as informações recolhidas, **faça um *print screen***
    do resultado e cole na área disponível para o efeito.

netstat -tuln

-t: portas TCP

-u: portas UDP

-l: *listenning* - apenas portas que se encontram “à escuta”

-n: número das portas abertas

| **<span class="smallcaps">NÚMERO DA PORTA</span>** | **<span class="smallcaps">DESCRIÇÃO DA PORTA \| SERVIÇO QUE SE ENCONTRA A CORRER</span>** |
|----------------------------------------------------|-------------------------------------------------------------------------------------------|
| 631                                                | IPP (Portscan)                                                                            |
| 23                                                 | telnet                                                                                    |
| 21                                                 | FTP                                                                                       |
| 80                                                 | HTTP                                                                                      |
| 53                                                 | DNS                                                                                       |
| 38603                                              | ???                                                                                       |
| 55849                                              | ???                                                                                       |
| 5353                                               | Multicast DNS                                                                             |

| **<span class="smallcaps">*PRINT SCREEN* COM O RESULTADO OBTIDO</span>** |
|--------------------------------------------------------------------------|
| ![Alt text](<.media/Open Canary (1).png>) |

3.  Interligue na mesma rede a VM onde instalou o *OpenCanary* e a VM do
    Kali Linux.

| **<span class="smallcaps">*PRINT SCREEN* COM O RESULTADO OBTIDO</span>** |
|--------------------------------------------------------------------------|
| ![Alt text](<.media/Open Canary (2).png>) |

1.  Na VM do *Kali Linux*, faça um *scan* às portas abertas na VM do
    *OpenCanary*.

**Execute o comando** abaixo ou outro que julgue mais pertinente,
**preencha a tabela** seguinte com as informações recolhidas, **faça um
*print screen*** do resultado e cole na área disponível para o efeito.

nmap -sSU \<IP\>

| **<span class="smallcaps">NÚMERO DA PORTA</span>** | **<span class="smallcaps">DESCRIÇÃO DA PORTA \| SERVIÇO QUE SE ENCONTRA A CORRER</span>** |
|----------------------------------------------------|-------------------------------------------------------------------------------------------|
| 21                                                 | FTP                                                                                       |
| 23                                                 | Telnet                                                                                    |
| 80                                                 | HTTP                                                                                      |
| 631                                                | IPP (Portscan)                                                                            |
| 5353                                               | Multicast DNS                                                                             |

| **<span class="smallcaps">*PRINT SCREEN* COM O RESULTADO OBTIDO</span>** |
|--------------------------------------------------------------------------|
| ![Alt text](<.media/Open Canary (3).png>)  |

1.  Na VM do *OpenCanary*, consulte o log produzido pelo *honeypot* e
    obtenha os **últimos 5 registos** do ficheiro.

tail -n 5 /var/tmp/opencanary.log

|                                                                         |
|-------------------------------------------------------------------------|
| *PRINT SCREEN* COM O RESULTADO OBTIDO                                   |
| ![Alt text](<.media/Open Canary (4).png>) |

1.  No Kali Linux, efetue um novo *scan* às portas disponíveis na VM do
    *OpenCanary*, mas utilizando a ferramenta **MASSCAN**.

sudo masscan -p1-65535 \<IP\>

-p1-65535: o scan será feito desde a porta 1 até à porta 65535.

\<IP\>: endereço IP da máquina testada.

|                                                                         |
|-------------------------------------------------------------------------|
| *PRINT SCREEN* COM O RESULTADO OBTIDO                                   |
| ![Alt text](<.media/Open Canary (5).png>) |

1.  Após terminado o *scan* às portas, consulte o log do *OpenCanary* e
    obtenha os **últimos 5 registos** do ficheiro.

tail -n 5 /var/tmp/opencanary.log

| **<span class="smallcaps">*PRINT SCREEN* COM O RESULTADO OBTIDO</span>** |
|--------------------------------------------------------------------------|
| ![Alt text](<.media/Open Canary (6).png>)  |

1.  No Kali Linux, aceda à pasta abaixo e obtenha as **primeiras 20
    linhas** do ficheiro “**rockyou-75.txt**”.

head -n 20 rockyou-75.txt

| **<span class="smallcaps">*PRINT SCREEN* COM O RESULTADO OBTIDO</span>**                                                                                                       |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ![Alt text](<.media/Open Canary (7).png>) |

1.  Obtenha o número de linhas do ficheiro “**rockyou-75.txt**”.

- **Dica:** Consulte a ajuda relativa ao comando **wc** (**wc --help**)

| **<span class="smallcaps">*PRINT SCREEN* COM O RESULTADO OBTIDO</span>**                                                                                                       |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ![Alt text](<.media/Open Canary (8).png>) |

10. Através do Kali Linux, execute o comando seguinte para simular um
    ataque ao FTP da VM do *OpenCanary*.

hydra -l admin -P
‘/pentest/password-recovery/dictionary/Passwords/Leaked-Databases/rockyou-75.txt’
ftp://\<IP\>

-l: *username* que vamos usar para a tentativa de ataque ao FTP.

-P: caminho para um ficheiro com *passwords* que serão utilizadas para o
ataque.

ftp://\<IP\>: serviço que vai ser atacado e respetivo endereço IP.

Ajuda: **hydra --help**

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><strong><span class="smallcaps"><em>PRINT SCREEN</em> COM O
RESULTADO OBTIDO</span></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><img src=".media/Open Canary (9).png"
style="width:5.74931in;height:1.57778in" /></p>
<p><mark></mark></p></td>
</tr>
</tbody>
</table>

11. Na VM do *OpenCanary*, obtenha o número de linhas do ficheiro de
    logs (/var/tmp/opencanary.log).

- **Dica:** Consulte a ajuda relativa ao comando wc (**wc --help**)

| **<span class="smallcaps">*PRINT SCREEN* COM O RESULTADO OBTIDO</span>** |
|--------------------------------------------------------------------------|
| ![Alt text](<.media/Open Canary (10).png>) |

Depois de terminada a realização da ficha de trabalho, submeta este
documento através da tarefa disponível no Moodle.

<span class="smallcaps">Bom trabalho.</span>
