# EPAM University Programs
# DevOps external course
## Module 4 Networking Fundamentals
#### TASK 4.1

In this task I have analyzed the simplest topologies of local network.
1. First topology was following one. Four computers have been connected to one hub. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.1/images/1.png?raw=true) <br>
Each computer received IP-address. Subnet mask was 255.255.255.0. <br>
<table>
    <tr>
        <td>PC0</td>
        <td>192.168.0.1</td>
    </tr>
    <tr>
        <td>PC1</td>
        <td>192.168.0.2</td>
    </tr>
    <tr>
        <td>PC2</td>
        <td>192.168.0.3</td>
    </tr>
    <tr>
        <td>PC3</td>
        <td>192.168.0.4</td>
    </tr>
</table> <br>
2. Then I checked the connection inside that local network by making ICMP requests. <br> And checked information about requested packets and their OSI model conformity. <br>
Some of the the packets have been collided during checking, but that is common problem of hub usage. <br> Because of that it isn't useful in present network topologies. <br>
![](https://raw.githubusercontent.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/main/m4/task4.1/images/2.png?token=AICG7UADPUW6XHGGGPBGF6K76IH3M) <br>
![](https://raw.githubusercontent.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/main/m4/task4.1/images/3.png?token=AICG7UEURMBIYHNWBI7JNEK76IIEI) <br>
![](https://raw.githubusercontent.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/main/m4/task4.1/images/4.png?token=AICG7UBRFST3LF6HLEZFMFK76IIIS)
3. Then I deleted IP addresses on PCs and tried to ping they ones again but that action was unsuccessful, because PC without own unique IP address isn't part of local network. <br>
![](https://raw.githubusercontent.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/main/m4/task4.1/images/5.png?token=AICG7UAYUHCTSFOQNCOMEFK76IIJ6) <br>
![](https://raw.githubusercontent.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/main/m4/task4.1/images/6.png?token=AICG7UGYXYEXNNCBBS37LJC76IILI) <br>
4. Next I created another project with following topology. <br>
![](https://raw.githubusercontent.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/main/m4/task4.1/images/7.png?token=AICG7UCAJRFQHIEBCTQQCN276IINA) <br>
5. IP address table. Subnet mask 255.255.255.0
<table>
    <tr>
        <td>PC0</td>
        <td>192.168.0.1</td>
    </tr>
    <tr>
        <td>PC1</td>
        <td>192.168.0.2</td>
    </tr>
    <tr>
        <td>PC2</td>
        <td>192.168.0.3</td>
    </tr>
    <tr>
        <td>PC3</td>
        <td>192.168.0.4</td>
    </tr>
    <tr>
        <td>PC4</td>
        <td>192.168.0.6</td>
    </tr>
    <tr>
        <td>PC5</td>
        <td>192.168.0.7</td>
    </tr>
    <tr>
        <td>Server</td>
        <td>192.168.0.5</td>
    </tr>
</table>
6. And tried to create some ICMP requests. Requests have been proceeded successfully. <br> And I saw information about packets, their usage and what protocols from what OSI level were used. <br>
![](https://raw.githubusercontent.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/main/m4/task4.1/images/8.png?token=AICG7UBYCTEFBSJNHQRLJRS76IIOI) <br>
![](https://raw.githubusercontent.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/main/m4/task4.1/images/9.png?token=AICG7UEJJ2YAMUKTYAYTPMS76IIQA) <br>
7. Next topology was following one. 4 PCs and Switch-PT
![](https://raw.githubusercontent.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/main/m4/task4.1/images/10.png?token=AICG7UGZV4O44M4JNGZ4H7S76IIRQ) <br>
8. IP address table: <br>
<table>
<tr>
    <td>PC0</td>
    <td>192.168.0.1</td>
</tr>
<tr>
    <td>PC1</td>
    <td>192.168.0.2</td>
</tr>
<tr>
    <td>PC2</td>
    <td>192.168.0.3</td>
</tr>
<tr>
    <td>PC3</td>
    <td>192.168.0.4</td>
</tr>
</table> <br>
9. And the results of ICMP request. <br>
![](https://raw.githubusercontent.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/main/m4/task4.1/images/11.png?token=AICG7UEF6LJHUAIUN22SNRK76IITY) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.1/images/12.png?raw=true) <br>
Topology with hub and topology with switch are differentiating by packet routing. <br> Hub is network device of first OSI level, and his function is retransmitting signal from input port to others. <br> So, ICMP request are transmitting not to certain port, but to all other ports of device. In this way packets could be collided or losen. <br>
Switch is network device of second OSI level, so before data transmission it forms Commutation table of MAC addresses of connected devices and then transmit packets to certain port and device.
10. Next I extended previous project to following topology. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.1/images/13.png?raw=true) <br>
IP address table. Subnet mask 255.255.255.0 <br>
<table>
    <tr>
        <td>PC0</td>
        <td>192.168.0.1</td>
    </tr>
    <tr>
        <td>PC1</td>
        <td>192.168.0.2</td>
    </tr>
    <tr>
        <td>PC2</td>
        <td>192.168.0.3</td>
    </tr>
    <tr>
        <td>PC3</td>
        <td>192.168.0.4</td>
    </tr>
    <tr>
        <td>PC4</td>
        <td>192.168.0.5</td>
    </tr>
    <tr>
        <td>PC5</td>
        <td>192.168.0.6</td>
    </tr>
    <tr>
        <td>PC6</td>
        <td>192.168.0.7</td>
    </tr>
    <tr>
        <td>PC7</td>
        <td>192.168.0.8</td>
    </tr>
</table>
11. Results of requesting <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.1/images/14.png?raw=true) <br>
11. Then I extended the previous project by adding a router. The router divided this LAN into two subnets.<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.1/images/15.png?raw=true) <br>
12. IP address tables for two networks. <br>
<table>
<tr>
    <td>PC0</td>
    <td>192.168.0.1</td>
</tr>
<tr>
    <td>PC1</td>
    <td>192.168.0.2</td>
</tr>
<tr>
    <td>PC2</td>
    <td>192.168.0.3</td>
</tr>
<tr>
    <td>PC3</td>
    <td>192.168.0.4</td>
</tr>
</table>
<table>
<tr>
    <td>PC0</td>
    <td>192.168.1.1</td>
</tr>
<tr>
    <td>PC1</td>
    <td>192.168.1.2</td>
</tr>
<tr>
    <td>PC2</td>
    <td>192.168.1.3</td>
</tr>
<tr>
    <td>PC3</td>
    <td>192.168.1.4</td>
</tr>
</table>
13. Next I turned on ports on router, and added for ports certain IP addresses from Subnets. Then I added gateway for each PC, using IP address of certain router port. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.1/images/16.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.1/images/17.png?raw=true) <br>
14. Results of requesting <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.1/images/18.png?raw=true) <br>
15. Router is network device of thirds OSI level. Adding router can give opportunity of creating several subnets in one network or creating and connecting several networks. <br> Router creates routing tables, which contains information about net and subnet masks, device IP addresses, gateways etc.  <br> Using that table router decides what way will data transmit. <br> It makes network safer and data transmission faster and more stable. <br>
