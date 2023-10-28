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
<th colspan="2"><strong>Ficha 10: Exploit-DB – Google
Hacking</strong></th>
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
<td>05/05/2023</td>
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
<li><p>A utilização do <em>Google Hacking</em> para a obtenção de
informações que se encontram disponíveis na Internet, mas que não se
encontram indexadas no Google.</p></li>
<li><p>Compreender a importância do <em>Exploit-DB</em> e como pode ser
utilizado na cibersegurança.</p></li>
</ul></td>
</tr>
</tbody>
</table>

# Exercício 1: Exploit-DB: Google Hacking

No site Exploit-DB, na área dedicada ao Google *Hacking*
(<https://www.exploit-db.com/google-hacking-database>), **escolha um
“*Dorks*” de cada categoria** e faça capturas de ecrã das informações
obtidas com esses *dorks*.

De seguida, apresenta-se um exemplo do que se pretende que os formandos
realizem.

<span class="mark"></span>

### Categoria 1 – Footholds

- <https://www.exploit-db.com/google-hacking-database?category=1>

| **Google Hacking *- Query* 1**                                         |
|------------------------------------------------------------------------|
| inurl:/Dashboard.xhtml intitle:"Dashboard"                             |
| ***Print screens* das informações recolhidas com a *query* escolhida** |
| ![Alt text](<.media/Google Dorking (1).png>)![Alt text](<.media/Google Dorking (2).png>)![Alt text](<.media/Google Dorking (3).png>) |

### Categoria 2 - Files Containing Usernames

- <https://www.exploit-db.com/google-hacking-database?category=2>

| **Google Hacking *- Query* 1**                                         |
|------------------------------------------------------------------------|
| intext:"-----BEGIN CERTIFICATE-----" ext:txt                           |
| ***Print screens* das informações recolhidas com a *query* escolhida** |
|![Alt text](<.media/Google Dorking (4).png>) ![Alt text](<.media/Google Dorking (5).png>) ![Alt text](<.media/Google Dorking (6).png>)|

### Categoria 3 - Sensitive Directories

- <https://www.exploit-db.com/google-hacking-database?category=3>

| **Google Hacking *- Query* 1**                                         |
|------------------------------------------------------------------------|
| intitle:"index of /" "sqlite.db"                                       |
| ***Print screens* das informações recolhidas com a *query* escolhida** |
| ![Alt text](<.media/Google Dorking (7).png>) ![Alt text](<.media/Google Dorking (8).png>) ![Alt text](<.media/Google Dorking (9).png>) |

### Categoria 4 - Web Server Detection

- <https://www.exploit-db.com/google-hacking-database?category=4>

| **Google Hacking *- Query* 1**                                         |
|------------------------------------------------------------------------|
| inurl \*:8080/login.php                                                |
| ***Print screens* das informações recolhidas com a *query* escolhida** |
| ![Alt text](<.media/Google Dorking (10).png>) ![Alt text](<.media/Google Dorking (11).png>) ![Alt text](<.media/Google Dorking (12).png>)  |

### Categoria 5 - Vulnerable Files

- <https://www.exploit-db.com/google-hacking-database?category=5>

| **Google Hacking *- Query* 1**                                         |
|------------------------------------------------------------------------|
| allintext:wp-includes/rest-api                                         |
| ***Print screens* das informações recolhidas com a *query* escolhida** |
| ![Alt text](<.media/Google Dorking (13).png>) ![Alt text](<.media/Google Dorking (14).png>) ![Alt text](<.media/Google Dorking (15).png>)|

### Categoria 6 - Vulnerable Servers

- <https://www.exploit-db.com/google-hacking-database?category=6>

| **Google Hacking *- Query* 1**                                         |
|------------------------------------------------------------------------|
| intitle:"index of" "/views/auth/passwords"                             |
| ***Print screens* das informações recolhidas com a *query* escolhida** |
| ![Alt text](<.media/Google Dorking (16).png>) ![Alt text](<.media/Google Dorking (17).png>) ![Alt text](<.media/Google Dorking (18).png>) |

### Categoria 7 - Error Messages

- <https://www.exploit-db.com/google-hacking-database?category=7>

| **Google Hacking *- Query* 1**                                         |
|------------------------------------------------------------------------|
| intitle:"index of" errors.log                                          |
| ***Print screens* das informações recolhidas com a *query* escolhida** |
| ![Alt text](<.media/Google Dorking (19).png>) ![Alt text](<.media/Google Dorking (20).png>) ![Alt text](<.media/Google Dorking (21).png>) |

### Categoria 8 - Files Containing Juicy Info

- <https://www.exploit-db.com/google-hacking-database?category=8>

| **Google Hacking *- Query* 1**                                         |
|------------------------------------------------------------------------|
| inurl: "/wp-content/uploads"                                           |
| ***Print screens* das informações recolhidas com a *query* escolhida** |
| ![Alt text](<.media/Google Dorking (22).png>) ![Alt text](<.media/Google Dorking (23).png>) ![Alt text](<.media/Google Dorking (24).png>) |

### Categoria 9 - Files Containing Passwords

- <https://www.exploit-db.com/google-hacking-database?category=9>

| **Google Hacking *- Query* 1**                                         |
|------------------------------------------------------------------------|
| intitle:"Index of" pwd.db                                              |
| ***Print screens* das informações recolhidas com a *query* escolhida** |
| ![Alt text](<.media/Google Dorking (25).png>) ![Alt text](<.media/Google Dorking (26).png>) ![Alt text](<.media/Google Dorking (27).png>) |

### Categoria 10 - Sensitive Online Shopping Info

- <https://www.exploit-db.com/google-hacking-database?category=10>

| **Google Hacking *- Query* 1**                                         |
|------------------------------------------------------------------------|
| site:mail.\* intitle:Dashboard                                         |
| ***Print screens* das informações recolhidas com a *query* escolhida** |
| ![Alt text](<.media/Google Dorking (28).png>) ![Alt text](<.media/Google Dorking (29).png>) ![Alt text](<.media/Google Dorking (30).png>) |

### Categoria 11 - Network or Vulnerability Data

- <https://www.exploit-db.com/google-hacking-database?category=11>

| **Google Hacking *- Query* 1**                                                           |
|------------------------------------------------------------------------------------------|
| -site:"pentest-tools.com" intext:"Scan coverage information" AND "List of tests" ext:PDF |
| ***Print screens* das informações recolhidas com a *query* escolhida**                   |
| ![Alt text](<.media/Google Dorking (31).png>) ![Alt text](<.media/Google Dorking (32).png>) ![Alt text](<.media/Google Dorking (33).png>) |

### Categoria 12 - Pages Containing Login Portals

- <https://www.exploit-db.com/google-hacking-database?category=12>

| **Google Hacking *- Query* 1**                                         |
|------------------------------------------------------------------------|
| inurl: "/admin" intitle:"Admin Login"                                  |
| ***Print screens* das informações recolhidas com a *query* escolhida** |
| ![Alt text](<.media/Google Dorking (34).png>) ![Alt text](<.media/Google Dorking (35).png>) ![Alt text](<.media/Google Dorking (36).png>) |

### Categoria 13 - Various Online Devices

- <https://www.exploit-db.com/google-hacking-database?category=13>

| **Google Hacking *- Query* 1**                                         |
|------------------------------------------------------------------------|
| inurl:"device.rsp" -in                                                 |
| ***Print screens* das informações recolhidas com a *query* escolhida** |
| ![Alt text](<.media/Google Dorking (37).png>) ![Alt text](<.media/Google Dorking (38).png>) ![Alt text](<.media/Google Dorking (39).png>) |

### Categoria 14 - Advisories and Vulnerabilities

- <https://www.exploit-db.com/google-hacking-database?category=14>

| **Google Hacking *- Query* 1**                                         |
|------------------------------------------------------------------------|
| intext:"Powered by Virtual Airlines Manager \[v2.6.2\]"                |
| ***Print screens* das informações recolhidas com a *query* escolhida** |
| ![Alt text](<.media/Google Dorking (40).png>) ![Alt text](<.media/Google Dorking (41).png>) ![Alt text](<.media/Google Dorking (42).png>) |

Depois de realizada a ficha de trabalho, submeta este ficheiro na tarefa
criada para o efeito.

**Bom trabalho**
