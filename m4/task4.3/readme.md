# EPAM University Programs
## DevOps external course
### Module - Networking Fundamentals TASK 4.3
#### Task 4.3
In this task I had to configure local network using RIP protocol for routing. <br>
Here is schema of network: <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.3/images/1.png?raw=true) <br>
I configured static IP addresses for hosts in every segment. Subnet mask: 255.255.255.0 <br>
Address table is below:
<table>
    <tr>
        <td rowspan = "6">Segment 1</td>
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
        <td>Server0</td>
        <td>192.168.0.7</td>
    </tr>
    <tr>
        <td>Segment 2</td>
        <td>Server1</td>
        <td>192.168.1.1</td>
    </tr>
</table>
Then I configured IP addresses on router ports depending on which segment every port is connected with.
<table>
<tr>
    <td>Segment 1</td>
    <td>192.168.0.6</td>
</tr>
<tr>
    <td>Segment 2</td>
    <td>192.168.1.2</td>
</tr>
</table>

Next I added in RIP Routing configuration network addresses, which should be connected. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.3/images/2.png?raw=true) <br>
And sent some ICMP requests between two segments of network. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.3/images/3.png?raw=true) <br>
