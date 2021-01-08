# EPAM University
## Programs DevOps external course
### Module - Networking Fundamentals
#### TASK 4.2

##### Part 1

In the first part of task4.2 I had to design a corporate network for a company, that consists of 2 buildings with 2 floors in each. <br>
I've done it using VLAN technology. Here is schema of network. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.2/images/1.png?raw=true)<br>
Here is Address tables of network: <br>
1. Building 1
<table>
<tr>
    <td colspan = "2" align = "center">VLAN5</td>
    <td colspan = "2" align = "center">VLAN2</td>
    </tr>
    <tr>
        <td>PC1.1</td>
        <td>192.168.5.1</td>
        <td>PC2.1</td>
        <td>192.168.2.1</td>
    </tr>
    <tr>
        <td>PC1.2</td>
        <td>192.168.5.2</td>
        <td>PC2.2</td>
        <td>192.168.2.2</td>
    </tr>
    <tr>
        <td>PC1.3</td>
        <td>192.168.5.3</td>
        <td>PC2.3</td>
        <td>192.168.2.3</td>
    </tr>
    <tr>
        <td>PC1.4</td>
        <td>192.168.5.4</td>
        <td>PC2.4</td>
        <td>192.168.2.4</td>
    </tr>
    <tr>
        <td>PC1.5</td>
        <td>192.168.5.5</td>
        <td>PC2.5</td>
        <td>192.168.2.5</td>
    </tr>
    <tr >
        <td>Gateway</td>
        <td>192.168.5.6</td>
        <td>Gateway</td>
        <td>192.168.2.6</td>
    </tr>
    <tr>
        <td>Subnet mask</td>
        <td colspan = "3" align = "center" >255.255.255.240</td>
    </tr>
    </table>
2. Buliding 2 <br>
<table>
<tr>
    <td colspan = "2" align = "center">VLAN3</td>
    <td colspan = "2" align = "center">VLAN4</td>
    </tr>
    <tr>
        <td>PC3.1</td>
        <td>192.168.3.1</td>
        <td>PC4.1</td>
        <td>192.168.4.1</td>
    </tr>
    <tr>
        <td>PC3.2</td>
        <td>192.168.3.2</td>
        <td>PC4.2</td>
        <td>192.168.4.2</td>
    </tr>
    <tr>
        <td>PC3.3</td>
        <td>192.168.3.3</td>
        <td>PC4.3</td>
        <td>192.168.4.3</td>
    </tr>
    <tr>
        <td>PC3.4</td>
        <td>192.168.3.4</td>
        <td>PC4.4</td>
        <td>192.168.4.4</td>
    </tr>
    <tr>
        <td>PC3.5</td>
        <td>192.168.3.5</td>
        <td>PC4.5</td>
        <td>192.168.4.5</td>
    </tr>
    <tr >
        <td>Gateway</td>
        <td>192.168.3.6</td>
        <td>Gateway</td>
        <td>192.168.4.6</td>
    </tr>
    <tr>
        <td>Subnet mask</td>
        <td colspan = "3" align = "center" >255.255.255.240</td>
    </tr>
    </table>

I configured on each switch certain VLAN, depended on building, as mentioned in address tables. <br> There have been configured access ports for every host in VLANs and trunk ports for traffic transmission via switches. <br>
Then I created all VLANs on central switch, configured trunk ports and allowed them for certain network segments. <br>
Next I allowed trunk port, that connects central switch with router, for every existed VLAN. On router I configured sub interfaces for every VLAN in order to create rout table for all corporate network. <br>
Creating sub interface <br>

![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.2/images/2.png?raw=true)<br>

Route table: <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.2/images/3.png?raw=true)<br>
Then I pinged different devices from different VLANs to make certain that network is configured successfully.
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.2/images/4.png?raw=true)<br>

##### Part 2
In this part I had to design corporate network of the organization, which contains 1 house with four floors. The horizontal subsystem of the floor should consist of two working groups of 3 and 5 computers. <br>
I had to create logical structure of the network with 8 subnets (according to the number of working groups) and analyze the performance of the network and traffic.
<br>
I've done that task using VLAN technology like in previous part, but in this case I divided every floor switch on 2 VLANs and configured access ports for hosts according to their VLAN connection. Trunk ports on floor switches have been allowed for 2 VLANs in certain network segment. <br>
Here is schema of that network. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.2/images/5.png?raw=true)<br>
Address table of network is below <br>
<table>
    <tr>
        <td rowspan = "15">Floor1</td>
        <td rowspan = "5">VLAN2</td>
        <td>P1(1)</td>
        <td>192.168.2.1</td>
        <td rowspan = "15">Floor2</td>
        <td rowspan = "5">VLAN4</td>
        <td>P1(2)</td>
        <td>192.168.4.1</td>
    </tr>
    <tr>
        <td>P2(1)</td>
        <td>192.168.2.2</td>
        <td>P2(2)</td>
        <td>192.168.4.2</td>
    </tr>
    <tr>
        <td>P3(1)</td>
        <td>192.168.2.3</td>
        <td>P3(2)</td>
        <td>192.168.4.3</td>
    </tr>
    <tr>
        <td>Gateway</td>
        <td>192.168.2.4</td>
        <td>Gateway</td>
        <td>192.168.4.4</td>
    </tr>
    <tr>
        <td>Subnet mask</td>
        <td>255.255.255.248</td>
        <td>Subnet mask</td>
        <td>255.255.255.248</td>
    </tr>
    <tr>
        <td rowspan = "7">VLAN3</td>
        <td>P4(1)</td>
        <td>192.168.3.1</td>
        <td rowspan = "7">VLAN5</td>
        <td>P4(2)</td>
        <td>192.168.5.1</td>
    </tr>
    <tr>
        <td>P5(1)</td>
        <td>192.168.3.2</td>
        <td>P5(2)</td>
        <td>192.168.5.2</td>
    </tr>
    <tr>
        <td>P6(1)</td>
        <td>192.168.3.3</td>
        <td>P6(2)</td>
        <td>192.168.5.3</td>
    </tr>
    <tr>
        <td>P7(1)</td>
        <td>192.168.3.4</td>
        <td>P7(2)</td>
        <td>192.168.5.4</td>
    </tr>
    <tr>
        <td>P8(1)</td>
        <td>192.168.3.5</td>
        <td>P8(2)</td>
        <td>192.168.5.5</td>
    </tr>
    <tr>
        <td>Gateway</td>
        <td>192.168.3.6</td>
        <td>Gateway</td>
        <td>192.168.5.6</td>
    </tr>
    <tr>
        <td>Subnet mask</td>
        <td>255.255.255.240</td>
        <td>Subnet mask</td>
        <td>255.255.255.240</td>
    </tr>
</table>

<table>
    <tr>
        <td rowspan = "15">Floor3</td>
        <td rowspan = "5">VLAN6</td>
        <td>P1(3)</td>
        <td>192.168.6.1</td>
        <td rowspan = "15">Floor4</td>
        <td rowspan = "5">VLAN8</td>
        <td>P1(4)</td>
        <td>192.168.8.1</td>
    </tr>
    <tr>
        <td>P2(3)</td>
        <td>192.168.6.2</td>
        <td>P2(4)</td>
        <td>192.168.8.2</td>
    </tr>
    <tr>
        <td>P3(3)</td>
        <td>192.168.6.3</td>
        <td>P3(4)</td>
        <td>192.168.8.3</td>
    </tr>
    <tr>
        <td>Gateway</td>
        <td>192.168.6.4</td>
        <td>Gateway</td>
        <td>192.168.8.4</td>
    </tr>
    <tr>
        <td>Subnet mask</td>
        <td>255.255.255.248</td>
        <td>Subnet mask</td>
        <td>255.255.255.248</td>
    </tr>
    <tr>
        <td rowspan = "7">VLAN7</td>
        <td>P4(3)</td>
        <td>192.168.7.1</td>
        <td rowspan = "7">VLAN9</td>
        <td>P4(4)</td>
        <td>192.168.9.1</td>
    </tr>
    <tr>
        <td>P5(3)</td>
        <td>192.168.7.2</td>
        <td>P5(4)</td>
        <td>192.168.9.2</td>
    </tr>
    <tr>
        <td>P6(3)</td>
        <td>192.168.7.3</td>
        <td>P6(4)</td>
        <td>192.168.9.3</td>
    </tr>
    <tr>
        <td>P7(3)</td>
        <td>192.168.7.4</td>
        <td>P7(4)</td>
        <td>192.168.9.4</td>
    </tr>
    <tr>
        <td>P8(3)</td>
        <td>192.168.7.5</td>
        <td>P8(4)</td>
        <td>192.168.9.5</td>
    </tr>
    <tr>
        <td>Gateway</td>
        <td>192.168.7.6</td>
        <td>Gateway</td>
        <td>192.168.9.6</td>
    </tr>
    <tr>
        <td>Subnet mask</td>
        <td>255.255.255.240</td>
        <td>Subnet mask</td>
        <td>255.255.255.240</td>
    </tr>
</table>

Here is route table <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.2/images/6.png?raw=true) <br>
And some pinged hosts <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.2/images/7.png?raw=true) <br>
##### Part 3
In this task I had to design corporate network company, that owns 5 buildings with 6 hosts in each. 1 Building = 1 VLAN. <br>
Here is schema of that network. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.2/images/8.png?raw=true)<br>
Address table of network is below <br>
<table>
<tr>
    <td colspan = "2" align = "center">Building1 (VLAN2)</td>
    <td colspan = "2" align = "center">Building2 (VLAN3)</td>
    <td colspan = "2" align = "center">Building3 (VLAN4)</td>
    </tr>
    <tr>
        <td>PC1(1)</td>
        <td>192.168.2.1</td>
        <td>PC1(2)</td>
        <td>192.168.3.1</td>
        <td>PC1(3)</td>
        <td>192.168.4.1</td>
    </tr>
    <tr>
        <td>PC2(1)</td>
        <td>192.168.2.2</td>
        <td>PC2(2)</td>
        <td>192.168.3.2</td>
        <td>PC2(3)</td>
        <td>192.168.4.2</td>
    </tr>
    <tr>
        <td>PC3(1)</td>
        <td>192.168.2.3</td>
        <td>PC3(2)</td>
        <td>192.168.3.3</td>
        <td>PC3(3)</td>
        <td>192.168.4.3</td>
    </tr>
    <tr>
        <td>PC4(1)</td>
        <td>192.168.2.4</td>
        <td>PC4(2)</td>
        <td>192.168.3.4</td>
        <td>PC4(3)</td>
        <td>192.168.4.4</td>
    </tr>
    <tr>
        <td>PC5(1)</td>
        <td>192.168.2.5</td>
        <td>PC5(2)</td>
        <td>192.168.3.5</td>
        <td>PC5(3)</td>
        <td>192.168.4.5</td>
    </tr>
    <tr>
        <td>PC6(1)</td>
        <td>192.168.2.6</td>
        <td>PC6(2)</td>
        <td>192.168.3.6</td>
        <td>PC6(4)</td>
        <td>192.168.4.6</td>
    </tr>
    <tr >
        <td>Gateway</td>
        <td>192.168.2.7</td>
        <td>Gateway</td>
        <td>192.168.3.7</td>
        <td>Gateway</td>
        <td>192.168.4.7</td>
    </tr>
    <tr>
        <td>Subnet mask</td>
        <td colspan = "5" align = "center" >255.255.255.240</td>
    </tr>
    </table>
    <table>
    <tr>
        <td colspan = "2" align = "center">Building4 (VLAN5)</td>
        <td colspan = "2" align = "center">Building5 (VLAN6)</td>
        </tr>
        <tr>
            <td>PC1(4)</td>
            <td>192.168.5.1</td>
            <td>PC1(5)</td>
            <td>192.168.6.1</td>
        </tr>
        <tr>
            <td>PC2(4)</td>
            <td>192.168.5.2</td>
            <td>PC2(5)</td>
            <td>192.168.6.2</td>
        </tr>
        <tr>
            <td>PC3(4)</td>
            <td>192.168.5.3</td>
            <td>PC3(5)</td>
            <td>192.168.6.3</td>
        </tr>
        <tr>
            <td>PC4(4)</td>
            <td>192.168.5.4</td>
            <td>PC4(5)</td>
            <td>192.168.6.4</td>
        </tr>
        <tr>
            <td>PC5(4)</td>
            <td>192.168.5.5</td>
            <td>PC5(5)</td>
            <td>192.168.6.5</td>
        </tr>
        <tr>
            <td>PC6(4)</td>
            <td>192.168.5.6</td>
            <td>PC6(5)</td>
            <td>192.168.6.6</td>
        </tr>
        <tr >
            <td>Gateway</td>
            <td>192.168.5.7</td>
            <td>Gateway</td>
            <td>192.168.6.7</td>
        </tr>
        <tr>
            <td>Subnet mask</td>
            <td colspan = "5" align = "center" >255.255.255.240</td>
        </tr>
        </table>

Here is route table <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.2/images/9.png?raw=true) <br>
And some pinged hosts <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m4/task4.2/images/10.png?raw=true) <br>
