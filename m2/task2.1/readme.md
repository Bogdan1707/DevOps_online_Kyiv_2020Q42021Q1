# EPAM University Programs
# DevOps education program
## Module 2 Virtualization and Cloud Basic

### TASK 2.1

#### PART 1. HYPERVISORS
##### 1. What are the most popular hypervisors for infrastructure virtualization?
The most popular hypervisors are Hyper-V, VMware, Xen, KVM, ESXi and VirtualBox
##### 2. Briefly describe the main differences of the most popular hypervisors.
There are two types of hypervisors on the market today. The Type 1 (X) runs directly on the hardware platform and do not require an operating system. <br>

The Type 2 (V) runs on top of an operating system that interacts with the hardware. <br>

The first type of hypervisor is considered to be better because, manufacturing with the help of hardware, they provide higher performance. <br>

The first type of hypervisors includes solutions Hyper-V, KVM, ESXi.<br> Examples of solutions of the second type are VMware Workstation, Oracle Virtual Box, OpenVZ. <br>

#### PART 2. WORK WITH VIRTUALBOX

1. Firstly, I downloaded and installed the newest version of VirtualBox ( 6.1.16), then downloaded and installed Ubuntu desktop (version 20.10). Following photos shows some stages of Ubuntu installation. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/1.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/2.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/3.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/4.png?raw=true) <br>
2. Then I just observed the main possibilities of VM managing, like: start, stop, reboot, save state, use Host key and keyboard shortcuts, mouse capture. For instance, Save state of machine. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/5.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/6.png?raw=true) <br>
3. Then I cloned VM1 by creating a VM2 <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/7.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/8.png?raw=true) <br>
4. Then I created group of two VMs <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/9.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/10.png?raw=true) <br>
5. Next I took 4 snapshots in VM1 <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/11.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/12.png?raw=true) <br>
6. Then I exported and imported back .ova file of VM1. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/13.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/14.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/15.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/16.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/17.png?raw=true) <br>
7. Then I explored VM configuration options (general settings, system settings, display, storage, audio, network, etc.) <br>

8. Next I had to configured the USB Connection. Firstly, I downloaded and installed plugin "Oracle VMware Extension Pack" <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/18.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/19.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/20.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/21.png?raw=true) <br>
9. Then I created and configured shared folder "VirtualBoxFiles" <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/22.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/23.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/24.png?raw=true) <br>
10. Next part of my work was with different network modes, that can be configured in VM-->Settings-->Network. And also should be configured Host-Only Adapter for external work.<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/25.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/26.png?raw=true) <br>
Table of executed connections (possibilities to ping each other machines): <br>
<table>
    <tr>
        <td>Mode</td>
        <td>VM-->Host</td>
        <td>VM<--Host</td>
        <td>VM1<->VM2</td>
        <td>VM-->Net(google.com)</td>
    </tr>
    <tr>
        <td>Host-only</td>
        <td>+</td>
        <td>-</td>
        <td>+</td>
        <td>+</td>
    </tr>
    <tr>
        <td>NAT</td>
        <td>+</td>
        <td>+</td>
        <td>-</td>
        <td>+</td>
    </tr>
    <tr>
        <td>Bridged</td>
        <td>+</td>
        <td>+</td>
        <td>+</td>
        <td>+</td>
    </tr>
    <tr>
        <td>Internal</td>
        <td>-</td>
        <td>-</td>
        <td>+</td>
        <td>-</td>
    </tr>
</table> <br>

##### Host-only
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/27.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/28.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/29.png?raw=true) <br>
##### NAT
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/30.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/31.png?raw=true) <br>
##### Bridged
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/32.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/33.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/34.png?raw=true) <br>
##### Internal
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/35.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/36.png?raw=true) <br>
11. Then I worked with command line <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/37.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/38.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/39.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/40.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/41.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/42.png?raw=true) <br>
12. Then I downloaded, installed and initialized Vagrant Box. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/43.png?raw=true) <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.1/images/44.png?raw=true) <br>
