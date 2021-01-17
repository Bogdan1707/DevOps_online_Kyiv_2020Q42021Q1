# EPAM University Programs
## DevOps external course
### Module 5 - Linux Essentials
#### Task 5.1
##### Part 1

1. Firstly I logged in to the system as a root via Putty and changed password for that user. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/1.png?raw=true) <br>
There I showed content of passwd file, which is located in /etc directory. <br> That file contains info about users, which can deal with different directories (following dirs) and files.<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/2.png?raw=true) <br>
2. Then I saw users registered in system. Command "w" or "last -a"<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/3.png?raw=true) <br>
3. Next I changed personal info about my user. Command "chfn" <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/4.png?raw=true) <br>
4. Some executed command to get know about help system in Linux <br>
man chfn <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/5.png?raw=true) <br>
passwd -h <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/6.png?raw=true) <br>
info w <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/7.png?raw=true) <br>
5. Then I explored more and less commands. They are used in cases reading files. <br>
more .bash_history <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/8.png?raw=true) <br>
less .bash_history <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/9.png?raw=true) <br>
6. Then I created plan for my user. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/10.png?raw=true) <br>
7. Next I listed the contents of my /home/bohdan directory, used flag -a for showing all data. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/11.png?raw=true) <br>

##### Part 2
1. In this part firstly I executed tree command to show different situation, in which it can be used. <br>
It shows all files that starts with "k" <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/12.png?raw=true) <br>
That shows all dirs tree with depth 2 <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/13.png?raw=true) <br>
2. Next command shows file data, for instance type of file <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/14.png?raw=true) <br>
3. Then were some practice with absolute and relative paths <br> By the way, command "cd ~" or "cd" can return user to home dir from anywhere <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/15.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/16.png?raw=true) <br>
4. Then I executed some ls commands, using -a and -l keys. <br>
ls -a command shows all files located in that dir/subdir, hidden as well <br>
ls -l shows a full list of files with info about owner, group, date of creation, size, access rights, etc. <br>
 --full-time key shows detailed info about files and detailed info about time <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/17.png?raw=true) <br>
5. Next I performed following sequence of operations
  * created a subdir "rootinfo" in home dir; <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/18.png?raw=true) <br>
  * In "rootinfo" dir I created file "info.txt" containing information about directories located in the root directory; <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/19.png?raw=true) <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/20.png?raw=true) <br>
  * then I copied "info.txt" to my home dir; <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/21.png?raw=true) <br>
  * finally I deleted file copied to the home dir. <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/22.png?raw=true) <br>
6. Then I performed Some operations with hard and soft links:
  * created a subdir "test" in home dir and copied there .bash_history file changing his name to "labwork2" <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/23.png?raw=true) <br>
  * then I created hard link using "ln" command and soft link using "ln" command with key "-s" <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/24.png?raw=true) <br>
  > Hard link is file name referred its inode. <br>
  Soft link is file referred not its inode, but its file name. <br>
  If we open and operate with symbolic link, nothing happens, because symbol link is just link to file name, but in Linux file registration is operating by inode.

  * Then I renamed hard and soft link <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/25.png?raw=true) <br>
  * Then I deleted file "labwork2". That was first hard link of file with own file name. After that we can operate with file using another hard link and another file name. <br>
  But soft link is already unuseful, because file name it referred is already deleted.
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/26.png?raw=true) <br>
7. Then I found files that contain the squid and traceroute sequence using "locate" utility <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/27.png?raw=true) <br>
8. Then I saw what partitions are mounted in system, using "lsblk" command. Mountpoint column shows where is it mounted <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/28.png?raw=true) <br>
9. Next I counted the number of lines containing traceroute sequence in a following file <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/29.png?raw=true) <br>
10. Then I found all files in the /etc directory containing the
host character sequence <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/30.png?raw=true) <br>
11. Next I listed all objects in /etc that contain the ss character sequence. It has been done using "find" command and "ls" command with "grep". <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/31.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/32.png?raw=true) <br>
12. Print of the contents of the /etc directory using ls + more command <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/33.png?raw=true) <br>
13. Next I showed different types of devices in system, using following commands:
  * lspci - shows devices connected to PCI bus. Besides processor and hard discs, everything on motherboard is connected to PCI bus <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/34.png?raw=true) <br>
  * lsusb - shows USB devices in system. Lspci shows controller of USB. <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/35.png?raw=true) <br>
  * lsscsi - shows hard disc and optical disc drives <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/36.png?raw=true) <br>
  * lscpu - shows CPU info <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/37.png?raw=true) <br>
  * lshw - shows detailed info about every device in system <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/38.png?raw=true) <br>
14. Next some commands to see info about files and its types.
  * lsblk -f - info about partitions of hard discs, optical disc drives, etc. <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/39.png?raw=true) <br>
  * df -h - info about mounted partitions and its file systems <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/40.png?raw=true) <br>
  * mount - as already said, shows mounted parts. Using parameters we can find it file systems <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/41.png?raw=true) <br>
  * file - info about files <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/42.png?raw=true) <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/43.png?raw=true) <br>

15. Finally I listed the first 5 directory files that were recently accessed in the /etc directory. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.1/images/44.png?raw=true) <br>
