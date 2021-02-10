# EPAM University Programs
## DevOps external course
### Module 6 - Networking with Linux
#### Task 6.1

So, there was a task to configure machines connections according to following schema <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m6/task6.1/images/1.png?raw=true)<br>
My VM2 has 1 interface with following configurations <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m6/task6.1/images/2.png?raw=true)<br>
My VM1 has 2 interfaces with following configurations <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m6/task6.1/images/3.png?raw=true)<br>
After configuring VMs ports I configured on VM1 iptables in order to filter packets and let it go to host. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m6/task6.1/images/4.png?raw=true)<br>
Also I set up DNS for internal interface enp0s8 <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m6/task6.1/images/5.png?raw=true)<br>

**Then I checked the route from VM2 to Host** <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m6/task6.1/images/6.png?raw=true)<br>
**Also, I checked the access to the Internet from VM2** <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m6/task6.1/images/7.png?raw=true)<br>
Using **nslookup** and **host** commands **I determined the service by IP address of DNS server. It was google.com** <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m6/task6.1/images/8.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m6/task6.1/images/9.png?raw=true)<br>
Using **dig** command **I determined IP addresses that belong to epam.com** <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m6/task6.1/images/10.png?raw=true)<br>
**Using netstat I determined default gateway and displayed routing table** <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m6/task6.1/images/11.png?raw=true)<br>
And the last one, **I traced the route to google.com by ICMP request** <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m6/task6.1/images/12.png?raw=true)<br>
