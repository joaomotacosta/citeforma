<div align="center">
<h3>

**NOTA - ISTO FOI CONVERTIDO DE UM FICHEIRO DOCX PARA MARKDOWN. CASO HAJA ALGUM BUG OU INFORMAÇÃO ERRADA, POR FAVOR CRIAR UM ISSUE E EU RESOLVO ASAP**

</h>
</div>
<table style="width:100%;">
<colgroup>
<col style="width: 15%" />
<col style="width: 50%" />
<col style="width: 16%" />
<col style="width: 17%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>MODALIDADE:</strong></th>
<th>Curso de Especialização Tecnológica (CET)</th>
<th colspan="2"><strong>Ficha 12: Matrix MITRE_ATT&amp;CK®</strong></th>
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
<td>16/05/2023</td>
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
<li><p>Desenvolver os procedimentos de segurança de informação de acordo
com o tipo de ameaças e incidentes.</p></li>
<li><p>Caracterizar os diferentes tipos de operações em redes de
computadores no contexto da cibersegurança e ciberdefesa.</p></li>
</ul></td>
</tr>
</tbody>
</table>

# Enquadramento

Os ataques cibernéticos são uma realidade e os riscos que as pessoas,
organizações e países correm são maiores do que nunca. Os atacantes
evoluíram, possuindo agora mais recursos, melhor formação e habilidades
para lançar campanhas de intrusão cuidadosamente planeadas, conhecidas
como Ameaças Persistentes Avançadas (APT). A segurança e a prosperidade
das nações dependem de um conjunto de infraestruturas críticas. Proteger
tais ativos implica compreender claramente os atacantes, as suas
motivações e estratégias.

O MITRE ATT&CK® é uma base de conhecimento globalmente acessível sobre
tácticas e técnicas de atacantes, baseada em observações do mundo real.

# Atividades propostas

1 - Considere o seguinte relatório de um incidente.

<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 67%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="2"><strong>Relatório do incidente</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Data do incidente:</strong></td>
<td>2023-05-09</td>
</tr>
<tr class="even">
<td><strong>Descrição do incidente:</strong></td>
<td><p>Comandos <strong>cmd.exe</strong> foram executados através de
<em>Remote Access Trojan</em> (RAT).</p>
<p>Os comandos foram recolhidos através do sistema de monitorização
<em><strong>Sysmon</strong></em>
(https://download.sysinternals.com/files/Sysmon.zip)</p></td>
</tr>
<tr class="odd">
<td><strong>Comandos executados:</strong></td>
<td><p>ipconfig /all</p>
<p>arp -a</p>
<p>echo %USERDOMAIN%\%USERNAME%</p>
<p>tasklist /v</p>
<p>sc query</p>
<p>systeminfo</p>
<p>net group "Domain Admins" /domain</p>
<p>net user /domain</p>
<p>net group "Domain Controllers" /domain</p>
<p>netsh advfirewall show allprofiles</p>
<p>netstat -ano</p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><strong><u>Informações sobre os comandos:</u></strong></p>
<ul>
<li><p><a
href="https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands">https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands</a></p></li>
<li><p><a
href="https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/cc754051(v=ws.11)">https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/cc754051(v=ws.11)</a></p></li>
</ul></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><strong><u>LINKS ÚTEIS:</u></strong></p>
<p>MITRE ATT&amp;CK®: <a
href="https://attack.mitre.org/">https://attack.mitre.org/</a></p>
<p>MITRE ATT&amp;CK® Navigator: <a
href="https://mitre-attack.github.io/attack-navigator/">https://mitre-attack.github.io/attack-navigator/</a></p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

1.1 - Utilizando a MITRE ATT&CK® - *Enterprise*, identifique para cada
comando do *log*, as **<u>tácticas</u>** e **<u>técnicas</u>** aplicadas
pelo atacante na fase de **Descoberta** de informação, conhecimento e
preencha a seguinte tabela.

| <u>Comando</u>: **ipconfig /all**                |                                                                       |
|--------------------------------------------------|-----------------------------------------------------------------------|
| **NOME DA TÁCTICA:**                             | Discovery                                                             |
| **ID DA TÁCTICA:**                               | TA0007                                                                |
| **NOME DA TÉCNICA:**                             | System Network Configuration Discovery: Internet Connection Discovery |
| **ID DA TÉCNICA:**                               | T1016                                                                 |
| **ID DA SUB-TÉCNICA:**                           | T1016.001                                                             |
| **PLATAFORMAS AFETADAS PELA TÉCNICA ANTERIOR:**  | Linux, Windows, macOS                                                 |
| **ID DO *SOFTWARE*:**                            | S0106                                                                 |
|                                                  |                                                                       |
| <u>Comando</u>: **arp -a**                       |                                                                       |
| **NOME DA TÁCTICA:**                             | Discovery                                                             |
| **ID DA TÁCTICA:**                               | TA0007                                                                |
| **NOME DA TÉCNICA:**                             | System Network Configuration Discovery: Internet Connection Discovery |
| **ID DA TÉCNICA:**                               | T1016                                                                 |
| **ID DA SUB-TÉCNICA:**                           | T1016.001                                                             |
| **PLATAFORMAS AFETADAS PELA TÉCNICA ANTERIOR:**  | Linux, Windows, macOS                                                 |
| **ID DO *SOFTWARE*:**                            | S0099                                                                 |
|                                                  |                                                                       |
| <u>Comando</u>: **echo %USERDOMAIN%\\USERNAME%** |                                                                       |
| **NOME DA TÁCTICA:**                             | Discovery                                                             |
| **ID DA TÁCTICA:**                               | TA0007                                                                |
| **NOME DA TÉCNICA:**                             | Account Discovery: Domain Account                                     |
| **ID DA TÉCNICA:**                               | T1087                                                                 |
| **ID DA SUB-TÉCNICA:**                           | T1087.002                                                             |
| **PLATAFORMAS AFETADAS PELA TÉCNICA ANTERIOR:**  | Linux, Windows, macOS                                                 |
| **ID DO *SOFTWARE*:**                            | S0106                                                                 |
|                                                  |                                                                       |

| <u>Comando</u>: **tasklist /v**                            |                                      |
|------------------------------------------------------------|--------------------------------------|
| **NOME DA TÁCTICA:**                                       | Discovery                            |
| **ID DA TÁCTICA:**                                         | TA0007                               |
| **NOME DA TÉCNICA:**                                       | Process Discovery                    |
| **ID DA TÉCNICA:**                                         | T1057                                |
| **ID DA SUB-TÉCNICA:**                                     | N/A                                  |
| **PLATAFORMAS AFETADAS PELA TÉCNICA ANTERIOR:**            | Linux, Network, Windows, macOS       |
| **ID DO *SOFTWARE*:**                                      | S0057                                |
|                                                            |                                      |
| <u>Comando</u>: **sc query**                               |                                      |
| **NOME DA TÁCTICA:**                                       | Discovery                            |
| **ID DA TÁCTICA:**                                         | TA0007                               |
| **NOME DA TÉCNICA:**                                       | System Service Discovery             |
| **ID DA TÉCNICA:**                                         | T1007                                |
| **ID DA SUB-TÉCNICA:**                                     | N/A                                  |
| **PLATAFORMAS AFETADAS PELA TÉCNICA ANTERIOR:**            | Linux, Windows, macOS                |
| **ID DO *SOFTWARE*:**                                      | S0106                                |
|                                                            |                                      |
| <u>Comando</u>: **systeminfo**                             |                                      |
| **NOME DA TÁCTICA:**                                       | Discovery                            |
| **ID DA TÁCTICA:**                                         | TA0007                               |
| **NOME DA TÉCNICA:**                                       | System Information Discovery         |
| **ID DA TÉCNICA:**                                         | T1082                                |
| **ID DA SUB-TÉCNICA:**                                     | N/A                                  |
| **PLATAFORMAS AFETADAS PELA TÉCNICA ANTERIOR:**            | IaaS, Linux, Network, Windows, macOS |
| **ID DO *SOFTWARE*:**                                      | S0096                                |
|                                                            |                                      |
| <u>Comando</u>: **net group "Domain Admins" /domain**      |                                      |
| **NOME DA TÁCTICA:**                                       | Discovery                            |
| **ID DA TÁCTICA:**                                         | TA0007                               |
| **NOME DA TÉCNICA:**                                       | Account Discovery: Domain Account    |
| **ID DA TÉCNICA:**                                         | T1087                                |
| **ID DA SUB-TÉCNICA:**                                     | T1087.002                            |
| **PLATAFORMAS AFETADAS PELA TÉCNICA ANTERIOR:**            | Linux, Windows, macOS                |
| **ID DO *SOFTWARE*:**                                      | S0106                                |
|                                                            |                                      |
| <u>Comando</u>: **net user /domain**                       |                                      |
| **NOME DA TÁCTICA:**                                       | Discovery                            |
| **ID DA TÁCTICA:**                                         | TA0007                               |
| **NOME DA TÉCNICA:**                                       | Account Discovery: Domain Account    |
| **ID DA TÉCNICA:**                                         | T1087                                |
| **ID DA SUB-TÉCNICA:**                                     | T1087.002                            |
| **PLATAFORMAS AFETADAS PELA TÉCNICA ANTERIOR:**            | Linux, Windows, macOS                |
| **ID DO *SOFTWARE*:**                                      | S0106                                |
|                                                            |                                      |
| <u>Comando</u>: **net group "Domain Controllers" /domain** |                                      |
| **NOME DA TÁCTICA:**                                       | Discovery                            |
| **ID DA TÁCTICA:**                                         | TA0007                               |
| **NOME DA TÉCNICA:**                                       | Account Discovery: Domain Account    |
| **ID DA TÉCNICA:**                                         | T1087                                |
| **ID DA SUB-TÉCNICA:**                                     | T1087.002                            |
| **PLATAFORMAS AFETADAS PELA TÉCNICA ANTERIOR:**            | Linux, Windows, macOS                |
| **ID DO *SOFTWARE*:**                                      | S0106                                |
|                                                            |                                      |
| <u>Comando</u>: **netsh advfirewall show allprofiles**     |                                      |
| **NOME DA TÁCTICA:**                                       |                                      |
| **ID DA TÁCTICA:**                                         |                                      |
| **NOME DA TÉCNICA:**                                       |                                      |
| **ID DA TÉCNICA:**                                         |                                      |
| **ID DA SUB-TÉCNICA:**                                     |                                      |
| **PLATAFORMAS AFETADAS PELA TÉCNICA ANTERIOR:**            |                                      |
| **ID DO *SOFTWARE*:**                                      |                                      |
|                                                            |                                      |
| <u>Comando</u>: **netstat -ano**                           |                                      |
| **NOME DA TÁCTICA:**                                       | Discovery                            |
| **ID DA TÁCTICA:**                                         | TA0007                               |
| **NOME DA TÉCNICA:**                                       | System Network Connections Discovery |
| **ID DA TÉCNICA:**                                         | T1049                                |
| **ID DA SUB-TÉCNICA:**                                     | N/A                                  |
| **PLATAFORMAS AFETADAS PELA TÉCNICA ANTERIOR:**            | IaaS, Linux, Network, Windows, macOS |
| **ID DO *SOFTWARE*:**                                      | S0106                                |

2 - A lista seguinte apresenta algumas das técnicas, tipicamente
utilizadas durante a cadeia de ataque.

- *Phishing: Spearphishing Attachment*

- *Phishing: Spearphishing Link*

- *Boot or Logon Autostart Execution: Registry Run Keys / Startup
  Folder*

- *System Network Configuration Discovery*

- *Abuse Elevation Control Mechanism: Bypass User Account Control*

2.1 - Para **mitigar** os riscos de cada uma das técnicas apresentadas
na lista anterior, que **medidas de** **defesa** podem ser utilizadas?

<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 67%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="2"><strong>Técnica:</strong> <em>Phishing: Spearphishing
Attachment</em></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>ID DA TÉCNICA:</strong></td>
<td>T1566.001</td>
</tr>
<tr class="even">
<td><p><strong>MEDIDAS DE DEFESA</strong></p>
<p><strong>OU DE</strong></p>
<p><strong>MITIGAÇÃO:</strong></p></td>
<td>Antivirus/Antimalware; Restrição para não correr certos tipos de
ficheiros (ex: .exe, .vbs, .cpl); Treino de utilizadores</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 67%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="2"><strong>Técnica:</strong> <em>Phishing: Spearphishing
Link</em></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>ID DA TÉCNICA:</strong></td>
<td>T1566.002</td>
</tr>
<tr class="even">
<td><p><strong>MEDIDAS DE DEFESA</strong></p>
<p><strong>OU DE</strong></p>
<p><strong>MITIGAÇÃO:</strong></p></td>
<td>Restrição de acesso a certos <em>websites</em> (ex: DMZ)</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 67%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="2"><strong>Técnica:</strong> <em>Boot or Logon Autostart
Execution: Registry Run Keys / Startup Folder</em></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>ID DA TÉCNICA:</strong></td>
<td>T1547.001</td>
</tr>
<tr class="even">
<td><p><strong>MEDIDAS DE DEFESA</strong></p>
<p><strong>OU DE</strong></p>
<p><strong>MITIGAÇÃO:</strong></p></td>
<td>Bloquear a linha de comandos</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 67%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="2"><strong>Técnica:</strong> <em>System Network
Configuration Discovery</em></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>ID DA TÉCNICA:</strong></td>
<td>T1016</td>
</tr>
<tr class="even">
<td><p><strong>MEDIDAS DE DEFESA</strong></p>
<p><strong>OU DE</strong></p>
<p><strong>MITIGAÇÃO:</strong></p></td>
<td>Bloquear a linha de comandos</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 67%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="2"><strong>Técnica:</strong> <em>Abuse Elevation Control
Mechanism: Bypass User Account Control</em></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>ID DA TÉCNICA:</strong></td>
<td>T1548.002</td>
</tr>
<tr class="even">
<td><p><strong>MEDIDAS DE DEFESA</strong></p>
<p><strong>OU DE</strong></p>
<p><strong>MITIGAÇÃO:</strong></p></td>
<td>Gestão de administradores locais no sistema; Gestão do controlo de
acesso de utilizadores (UAC)</td>
</tr>
</tbody>
</table>

3 – O grupo **APT38** efetuou um ataque a um casino e causou um dano
financeiro bastante considerável.

Obtenha informações sobre este grupo e preencha a tabela abaixo.

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 64%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>NOME DO GRUPO:</strong></th>
<th>NICKEL GLADSTONE, BeagleBoyz, Bluenoroff, Stardust Chollima</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>ID DO GRUPO (MITRE ATT&amp;CK):</strong></td>
<td>G0082</td>
</tr>
<tr class="even">
<td><strong>PAÍS QUE PATROCINA ESTE GRUPO:</strong></td>
<td>Coreia do Norte</td>
</tr>
<tr class="odd">
<td><strong>QUAL O ANO EM QUE FOI DETECTADO PELA PRIMEIRA
VEZ?</strong></td>
<td>2014</td>
</tr>
<tr class="even">
<td><strong>LISTA DE OUTROS GRUPOS ASSOCIADOS:</strong></td>
<td>NICKEL GLADSTONE, BeagleBoyz, Bluenoroff, Stardust Chollima</td>
</tr>
<tr class="odd">
<td><strong>INDIQUE <u>3 TÉCNICAS</u> UTILIZADAS POR ESTE
GRUPO:</strong></td>
<td><p>T1204.002 - User Execution: Malicious File</p>
<p>T1588.002 - Obtain Capabilities: Tool</p>
<p>T1027.002 - Obfuscated Files or Information: Software
Packing</p></td>
</tr>
<tr class="even">
<td><strong>INDIQUE <u>3 SOFTWARES</u> UTILIZADOS POR ESTE
GRUPO:</strong></td>
<td>S0334 – DarkComet; S0002 - Mimikatz; S0607 - KillDisk</td>
</tr>
</tbody>
</table>

Depois de realizada a ficha de trabalho, submeta este ficheiro na tarefa
criada para o efeito.

**Bom trabalho**
