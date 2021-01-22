# EPAM University Programs
## DevOps external course
### Module 5 - Linux Essentials
#### Task 5.1
##### Part 1
My Ubuntu system is installed in VirtualBox. <br>
1. <b> Analyze the structure of the /etc/passwd and /etc/group file, what fields are present in it, what users exist on the system? Specify several pseudo-users, how to define them? <br> </b>
File /etc/passwd contains information about existed in this system users, presented in following form: <br>
<b> username: pswd: uid: gid: uidcomments: directory: shell </b> <br> Where: <br>
<b>username</b> - name of user. The username must not contain a colon character.  <br>
<b> pswd </b>- password. The password field can be empty, indicating that no password is required to register a user. It can also contain not more than 13 characters of the encrypted version of the password. <br>
<b>uid </b>- unique identifier of the user within the system <br>
<b>gid</b>- unique identifier of the group within the system to which the user belongs <br>
<b>uid comments </b> - comment, extended user description, for example, full name. <br>
<b>directory </b>- user's home directory <br>
<b>shell</b> -  program name - the user's command interpreter.
<b>uidis</b> a simple numeric designation for an individual user. These number can be not more then 65535. Some identifiers are reserved for special use. These include 0 (root), 1-999(daemons, pseudo-users, system and reserved users), 1000+ (regular users). <br>
There is a part of my /etc/passwd file: <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/1.png?raw=true) <br>
Here are some my users:
  * root: x:0:0:root:/root:/bin/bashroot: x:0:0:root:/root:/bin/bash <br>
  This is root user, its UID is 0 (as reserved)
  * daemon: x:1:1:daemon:/usr/sbin:/usr/sbin/nologin <br>
  Services that need the ability to write files to disk are launched on behalf of this daemon user.
  * proxy: x:13:13:proxy:/bin:/usr/sbin/nologin <br>
  This user is being used by proxy servers.
  * hplip: x:124:7:HPLIP system user,,,:/run/hplip:/bin/false
  This user aims to ease Linux systems' ability to interact with HP's inkjet and laser printers with full printing, scanning, and faxing support.<br>
Here is my /etc/group file <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/2.png?raw=true) <br>
2. <b> What are the uid ranges? What is UID? How to define it?  </b>
3. <b> What is GID? How to define it?</b> <br>
<b>UID</b>- unique identifier of the user within the system <br>
<b>GID</b> - unique identifier of the group within the system to which the user belongs <br>
Here is "id" command, that can show info about specified user. There is info about UID, GID, etc. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/3.png?raw=true)
4. <b> How to determine belonging of user to the specific group? <br></b>
It could be done in following ways:
  * key --group in command "id" shows main group number in which user exists.
  * key --groups in command "id" shows all groups in which user exists.
  * key -Gn in command "id" and command "group" show groups names. <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/4.png?raw=true)<br>

5. <b>What are the commands for adding a user to the system? What are the basic parameters required to create a user? </b> <br>
There are two ways in which new user can be added to the system:
  * <b>useradd</b> - low-level utilty for creating user accounts. But even after password setting it requires creating home catalog for login. <br>
  Depending on other configuration, your Linux system may prevent a user from logging in without a valid home directory
  * <b>adduser</b> - high-level utility, by default not existed in some distributions. The low-level utility useradd is used as a backend.<br> It creates full user account including home catalog. The new user is ready to log in through your login manager or in text mode. <br>
  Here is example of creating new user by adduser command: <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/5.png?raw=true) <br>
6. <b>How do I change the name (account name) of an existing user? </b> <br>
* to change only username <br> **usermod -l new_username old_username**
* to change home catalog name username <br> **usermod -l new_username -m -d /new/home/dir old_usernam** <br>
Here is example of changing username in home catalog <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/6.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/7.png?raw=true)<br>
7. **What is skell_dir? What is its structure?** <br>
	The /etc/skel directory contains files and directories that are automatically copied over to a new user’s when it is created from **useradd** command.
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/8.png?raw=true)
8. **How to remove a user from the system (including his mailbox.)** <br>
Use key -r(-remove) in order to delete user home catalog and mail folder <br>
 **userdel -r username**
9. **What commands and keys should be used to lock and unlock a user account?** <br>
 **passwd key username** <br>
 **-l** - blocks the specified user (available only to the administrator). Blocking is performed by adding the ! Prefix to the password.stdin- accept new password from standard input. <br>
 **-u** -unblock user and remove prefix! (available only to the administrator). <br>
 Blocking user <br>
 ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/9.png?raw=true)<br>
 ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/10.png?raw=true)<br>
 Unblocking user <br>
 ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/11.png?raw=true)<br>
 ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/12.png?raw=true)<br>
10. **How to remove a user's password and provide him with a password-free login for subsequent password change?** <br>
  **-d** -cancel the password for
the user (available only to the administrator). Allows the user to log in without a password and change it themselves.<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/13.png?raw=true)<br>
11. **Display the extended format of information about the directory, tell about the information columns displayed on the terminal.** <br>
We can display extended info about dirs using "ls -l" or "ls -la" to display all content in following dir <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/14.png?raw=true)<br>
Columns: <br>
  *  **drwxr-xr-x**, etc. - that sequence of symbols displays access rights of different users to that file (extenden info about that is below)<br>
  * column with numeric symbol **(17, 3, etc.)** displays quantity of hard links on that file.
  * next two columns **(bohdan, bohdan or root, root )** display username and name of main group, to which user belongs
  * next column **(4096, etc.)** displays file size (in bytes)
  * next column **(січ 15, etc.)**displays file modification date  
  * the last column **(., .., .bash_history)** displays name of file or directory
12. **What access rights exist and for whom (i. e., describe the main roles)? Briefly describe the acronym for access rights.** <br>
Here is examples of different sequences <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/15.png?raw=true)<br>
  **d** means **directory**, **-** means **file**. <br>
The first group of three characters denotes the permissions of the owner of the file or directory **(u - user).** <br>
The second group of three characters denotes the file or directory permissions for the system group **(g - group).** <br>
The third group of three characters denotes the file or directory permissions for everyone else **(o - other).** <br>
There is the same sequence of symbols: <br>
  **rwx** <br>
That denotes those parameters:
| Parameters     | Meaning     |
| :------------- | :------------- |
| r      | **read**, that is read access to a file or directory       |
|w | **write**, that is change or delete access to a a file or directory |
|x| **eXecute**, that is execute access to file or enter to directory |

  If there is **-** instead of symbol, it means something is not permitted for someone. For example from previous screenshot: <br>
  **.profile -rw-r--r--** <br>
It means user **bohdan** can read and change file **.profile**, bat can't execute it. <br> User group **bohdan** can only read this file, as same as other users
13. **What is the sequence of defining the relationship between the file and the user?** <br>
I've already described the relation between users and file.
Here is sequence of rights: <br>
 * --- - no rights at all;
 * --x - only execution of the file is allowed as a program, but not modification or reading;
 * -w- - only writing and changing the file is allowed;
 * -wx - modification and execution are allowed, but in the case of a directory, you cannot see its contents;
 * r-- - read-only rights;
 * r-x - read only and execute, no write permission;
 * rw- - read and write permissions, but no execution;
 * rwx - all rights;
 * --s - SUID or SGID bit is set, the first is displayed in the field for the owner, the second for the group;
 * --t - sticky-bit is installed, which means users cannot delete this file.

14. **What commands are used to change the owner of a file (directory), as well as the mode of access to the file? Give examples, demonstrate on the terminal.** <br>
  **chown -R username:group path/to/file** - that is how we can change directory or file owner <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/16.png?raw=true)<br>
  **chmod** is command for changings access rights of file or directory by using **+** or **-** for giving or giving back rights, **ugo** - for defining with whom operate, and **rwx** for defining rights.
  Here is examples of defining rights, for example I forbade reading and changing of **test.txt file** <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/17.png?raw=true)<br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/18.png?raw=true)<br>

15. **What is an example of octal representation of access rights? Describe the umask command.** <br>
Previously I explained symbol representation of access rights, now is octal <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/19.png?raw=true)<br>
  **umask** command displays rights assigned to specified user. <br> Also the umask utility allows us to view and set the file mode mask, which determines the bit permissions for newly created files or directories.<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/20.png?raw=true)<br>
16. **Give definitions of sticky bits and mechanism of identifier substitution. Give an example of files and directories with these attributes.**
There are 3 types of sticky bit mechanisms definition:
  * **SUID** (Set User ID) is flags permissions on Unix, which allow users to run files with the rights of the owner of the executable files. Octal representation is **4000**
  Here is example how to set SUID <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/21.png?raw=true)<br>
  And how to search for file with set SUID <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/22.png?raw=true)<br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/23.png?raw=true)<br>
  * **SGUID** (Set Group ID) is flags permissions on Unix, which allow users to run files with the rights of group owner of the file. <br>
  Here is example how to set SUID <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/24.png?raw=true)<br>
  * **sticky bit** This permission is useful for protecting files from accidental deletion in an environment where multiple users have write access to the same directory. <br> If the sticky bit is set, the user can delete the file only if he is the user who owns the file or directory that contains the file. <br>
  Here is example how to set sticky bit <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.2/images/25.png?raw=true)<br>
17. **What file attributes should be present in the command script?** <br>
Command script should be executable for running command. In order to set it we should set execute access to file using chmod command: <br>
  **chmod ugo+x file.txt**
