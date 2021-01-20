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
![](1.png) <br>
Here are some my users:
  * root:x:0:0:root:/root:/bin/bashroot:x:0:0:root:/root:/bin/bash

  * daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
  * proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
  * hplip:x:124:7:HPLIP system user,,,:/run/hplip:/bin/false

2. <b> What are the uid ranges? What is UID? How to define it? <br> </b>
3. <b> What is GID? How to define it? <br></b>
4. <b> How to determine belonging of user to the specific group? <br></b>
5. What are the commands for adding a user to the system? What are the basic parameters required to create a user?
6. How do I change the name (account name) of an existing user?
7. What is skell_dir? What is its structure?
8. How to remove a user from the system (including his mailbox.?
9. What commands and keys should be used to lock and unlock a user account?
10. How to remove a user's password and provide him with a password-free login for subsequent password change?
11. Display the extended format of information about the directory, tell about the information columns displayed on the terminal.
12. What access rights exist and for whom (i. e., describe the main roles)? Briefly describe the acronym for access rights.
13. What is the sequence of defining the relationship between the file and the user?
14. What commands are used to change the owner of a file (directory), as well as the mode of access to the file? Give examples, demonstrate on the terminal.
15. What is an example of octal representation of access rights? Describe the umask command.
16. Give definitions of sticky bits and mechanism of identifier substitution. Give an example of files and directories with these attributes.
17. What file attributes should be present in the command script?
