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
![](2) <br>
![](3) <br>
![](4) <br>
2. Then I just observed the main possibilities of VM managing, like: start, stop, reboot, save state, use Host key and keyboard shortcuts, mouse capture. For instance, Save state of machine. <br>
![](5) <br>
![](6) <br>
3. Then I cloned VM1 by creating a VM2 <br>
![](7) <br>
![](8) <br>
4. Then I created group of two VMs <br>
![](9) <br>
![](10) <br>
5. Next I took 4 snapshots in VM1 <br>
![](11) <br>
![](12) <br>
6. Then I exported and imported back .ova file of VM1. <br>
![](13) <br>
![](14) <br>
![](15) <br>
![](16) <br>
![](17) <br>
7. Then I explored VM configuration options (general settings, system settings, display, storage, audio, network, etc.) <br>

8. Next I had to configured the USB Connection. Firstly, I downloaded and installed plugin "Oracle VMware Extension Pack" <br>
![](18) <br>
![](19) <br>
![](20) <br>
![](21) <br>
9. Then I created and configured shared folder "VirtualBoxFiles" <br>
![](22) <br>
![](23) <br>
![](24) <br>
10. Next part of my work was with different network modes, that can be configured in VM-->Settings-->Network. And also should be configured Host-Only Adapter for external work.<br>
![](25) <br>
![](26) <br>
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
![](27) <br>
![](28) <br>
![](29) <br>
##### NAT
![](30) <br>
![](31) <br>
##### Bridged
![](32) <br>
![](33) <br>
![](34) <br>
##### Internal
![](35) <br>
![](36) <br>
11. Then I worked with command line <br>
![](37) <br>
![](38) <br>
![](39) <br>
![](40) <br>
![](41) <br>
![](42) <br>
12. Then I downloaded, installed and initialized default Vgrant Box.
![](43) <br>
![](44) <br>
13. Than I tried to install my own Vagrant box
