# <p align=center>Capture the Flag | Bandit
**<p align=center>Citeforma | CET 8493 | UFCD 9197 Wargaming | Formador: Ricardo Lobo**
**<p align=center>João Rodrigo Mota da Costa**
### Bandit0
	C:\Users\->ssh bandit0@bandit.labs.overthewire.org -p 2220
![Bandit0](.media/Bandit%20(1).png)
### Bandit0 > Bandit1
	bandit0@bandit:~$ cat readme
![Bandit0 > Bandit1](.media/Bandit%20(2).png)
### Bandit1 > Bandit2
	bandit1@bandit:~$ cd /home
	bandit1@bandit:/home$ cat bandit1/-
![Bandit1 > Bandit2](.media/Bandit%20(3).png)
### Bandit2 > Bandit3
	bandit2@bandit:~$ cd /home
	bandit2@bandit:/home$ cat 'bandit2/spaces in this filename'
![Bandit2 > Bandit3](.media/Bandit%20(4).png)
### Bandit3 > Bandit4
	bandit3@bandit:~$ cat inhere/.hidden
![Bandit3 > Bandit4](.media/Bandit%20(5).png)
### Bandit4 > Bandit5
	bandit4@bandit:~$ cd inhere/
	bandit4@bandit:~/inhere$ find -type f | xargs file && cat ./-file07
![Bandit4 > Bandit5](.media/Bandit%20(6).png)
### Bandit5 > Bandit6
	bandit5@bandit:~$ find ./inhere -type f \! -executable -size 1033c
	bandit5@bandit:~$ cat ./inhere/maybehere07/.file2
![Bandit5 > Bandit6](.media/Bandit%20(7).png)
### Bandit6 > Bandit7
	bandit6@bandit:~$ cd /
	bandit6@bandit:/$ find -type f -group bandit6 -user bandit7 | grep bandit7.password
	bandit6@bandit:/$ cat ./var/lib/dpkg/info/bandit7.password
![Bandit6 > Bandit7 1](.media/Bandit%20(8).png)
![Bandit6 > Bandit7 2](.media/Bandit%20(9).png)
### Bandit7 > Bandit8
	bandit7@bandit:~$ cat data.txt | grep millionth
![Bandit7 > Bandit8](.media/Bandit%20(10).png)
### Bandit8 > Bandit9
	bandit8@bandit:~$ sort data.txt | uniq -c | grep "1 "
![Bandit8 > Bandit9](.media/Bandit%20(11).png)
### Bandit9 > Bandit10
	bandit9@bandit:~$ strings data.txt | grep ===
![Bandit9 > Bandit10](.media/Bandit%20(12).png)
### Bandit10 > Bandit11
	bandit10@bandit:~$ base64 -d data.txt
![Bandit10 > Bandit11](.media/Bandit%20(13).png)
### Bandit11 > Bandit12
	bandit11@bandit:~$ cat data.txt | tr a-zA-Z n-za-mN-ZA-M
![Bandit11 > Bandit12](.media/Bandit%20(14).png)
### Bandit12
![Bandit12](.media/Bandit%20(15).png)