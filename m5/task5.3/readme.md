# EPAM University Programs
## DevOps external course
### Module 5 - Linux Essentials
#### Task 5.3
##### Part 1
1. **How many states could has a process in Linux?** <br>
There are two models of process states:
  * **3-states diagram:** <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/1.png?raw=true)<br>
    * **Ready** - In the ready state, the process is waiting to be assigned the processor by the short term scheduler, so it can run. <br >This state is immediately after the **Created** state for the process.
    * **Running** - The process is said to be in running state when the process instructions are being executed by the processor. <br> This is done once the process is assigned to the processor using the short-term scheduler.
    * **Waiting** or **Blocked** - The process is in blocked state if it is waiting for some event to occur. This event may be I/O as the I/O events are executed in the main memory and don't require the processor.<br> After the event is complete, the process again goes to ready state.

  * **5-States diagram** consist of previous 3 states and additionally has 2 states:<br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/2.png?raw=true)<br>

    * **Created** - This is the state when she process has just been created. It is the initial state in the process life cycle.
    * **Terminated** - The process is terminated once it finishes its execution. In the terminated state, the process is removed from main memory and its process control block is also deleted.

2. **Examine the pstree command. Make output (highlight) the chain (ancestors) of the current process.** <br>
So, the ancestors of current process pstree are bash (used shell), sshd (because of ssh connection to that VM), and systemd - process that has launched all system.<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/3.png?raw=true)<br>
3. **What is a proc file system?** <br>
User space programs have no	permission for directly accessing system kernel. So **proc** file system has been created in order to help any program or user to receive kernel or system info.
4. **Print information about the processor (its type, supported technologies, etc.).** <br>
lscpu command <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/4.png?raw=true)<br>
Or via **proc** file system see cpuinfo <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/5.png?raw=true)<br>

5. **Use the ps command to get information about the process. The information should be as follows: the owner of the process, the arguments with which the process was launched for execution, the group owner of this process, etc.** <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/6.png?raw=true)<br>
6. **How to define kernel processes and user processes?** <br>
Using ps command. <br>
When managing processes, it is easy to recognize the kernel processes because they have a name that is between square brackets. Like here: <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/7.png?raw=true)<br>

7. **Print the list of processes to the terminal. Briefly describe the statuses of the processes. What condition are they in, or can they be arriving in?** <br>
here is list of processes. Second column shows states of process: <br>
  * **D** - waiting for operation terminating
  * **R** - running
  * **S** - sleep
  * **T** - terminated
  * **t** - terminated by debugger
  * **Z** - zombie process

  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/8.png?raw=true)<br>

8. **Display only the processes of a specific user.** <br>
Processes of bohdan user <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/9.png?raw=true)<br>

9. **What utilities can be used to analyze existing running tasks (by analyzing the help for the ps command)?** <br>
  * ps -aux <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/10.png?raw=true)<br>
  * ps -A <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/11.png?raw=true)<br>
  * ps -axjf <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/12.png?raw=true)<br>

10. **What information does top command display?** <br>
The top command is used to discover resource-hungry processes. <br> This Linux command will sort the list by CPU usage, so the process which consumes the most resources will be placed at the top.
11. **Display the processes of the specific user using the top command.** <br>
Processes of bohdan user <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/13.png?raw=true)<br>
12. **What interactive commands can be used to control the top command? Give a couple of examples.** <br>
Here are some interactive commands that can be used during top command work:
  * h - see manual <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/14.png?raw=true)<br>
  * A - see group of process, Z - change color of info <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/15.png?raw=true)<br>
  * L - search process by command name <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/16.png?raw=true)<br>
  * Y - see additional info about process: opened files, logs, ports etc.<br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/17.png?raw=true)<br>
13. **Sort the contents of the processes window using various parameters (for example, the amount of processor time taken up, etc.)** <br>
Shift + M - sorting by memory usage <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/18.png?raw=true)<br>
Shift + T - by working time <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/19.png?raw=true)<br>
Shift + N - by PID <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/20.png?raw=true)<br>
14. **Concept of priority, what commands are used to set priority?** <br>
There is **nice** and **renice** command. The less priority number is, the bigger priority of process is. <br>
In order to define priority number less then 0 you need to be root user <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/21.png?raw=true)<br>

15. **Can I change the priority of a process using the top command? If so, how?** <br>
It's possible by **r** command <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/22.png?raw=true)<br>

16. **Examine the kill command. How to send with the kill command process control signal? Give an example of commonly used signals.** <br>

  **SIGTERM** - this signal asks for terminating process, process saves changes and terminates. This signal may be ignored by process<br>
  **SIGKILL** - this signal make process terminate immediately, previously unsaved changes don't save.  
  Here is list of signals<br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/23.png?raw=true)<br>

17. **Commands jobs, fg, bg, nohup. What are they for? Use the sleep, yes command to demonstrate the process control mechanism with fg, bg.** <br>
  **jobs** command shows background processes <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/24.png?raw=true)<br>
  **fg** - make process work in foreground. **bg** - in background <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/25.png?raw=true)<br>

##### Part2
1. **Check the implementability of the most frequently used OPENSSH commands in the MS Windows operating system. (Description of the expected result of the commands + screenshots: command – result should be presented)** <br>
  **ssh**.  I connected to Ubuntu VM. <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/26.png?raw=true)<br>
  **pscp** is same as **scp** command in Linux. That commands made copy of file on VM and copied it to host machine. <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/27.png?raw=true)<br>
2. **Implement basic SSH settings to increase the security of the client-server connection**<br>
I had two machines
  * VM1 <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/28.png?raw=true)<br>
  * VM2 <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/29.png?raw=true)<br>
  I can connected from M2 to M1 only with password <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/30.png?raw=true)<br>
  Then I generated on M2 RSA keys, copied public key to M1 and logged in M1 without password. <br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/31.png?raw=true)<br>
  ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/32.png?raw=true)<br>

3. **List the options for choosing keys for encryption in SSH. Implement 3 of them.** <br>
There are such keys for encryption in SSH: <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/33.png?raw=true)<br>
I've already tried keys with RSA encryption, also I tried ecdsa and ed25519 encryptions <br>
Here are steps for implementing SSH key with ed25519 encryption <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/34.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/35.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/36.png?raw=true)<br>
And here we can see authorized keys in VM2 system <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/37.png?raw=true)<br>

4. **Implement port forwarding for the SSH client from the host machine to the guest Linux virtual machine behind NAT.** <br>
Firstly, I had to choose NAT connection in VBox for VM1 and add port forwarding rule, using existed host port 2222, Guest IP 10.0.2.15 and port 22 <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/38.png?raw=true)<br>
Then I connected to localhost(127.0.0.1) via Putty SSH client, using 2222 port. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/39.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/40.png?raw=true)<br>
In new connection window I specified guest name and password and it forwarded me to guest VM. Here is an evidence. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m5/task5.3/images/41.png?raw=true)<br>
