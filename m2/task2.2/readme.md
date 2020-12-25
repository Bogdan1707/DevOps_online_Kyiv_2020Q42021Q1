# EPAM University Programs
# DevOps education program
## Module 2 Virtualization and Cloud Basic

### TASK 2.2
1. First of all, for processing all tasks I had to get root(admin) rights and rights for using Lightsail. For that I had to register in IAM user and there add roles for users.
2. Then I could already create Linux Virtual Machine with Amazon Lightsail and connect to it. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/1.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/2.png?raw=true)<br>
3. Then, using EC2 service I created Linux Virtual machine (AMI CentOS7), using t2.micro instance type and their default settings, with default network settings, default storage, with existing security group, provided by distributor of AMI. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/3.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/4.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/5.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/6.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/7.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/8.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/9.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/10.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/11.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/12.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/13.png?raw=true)<br>
4. Then I connected to that machine with Putty, but before I downloaded key pair, transformed it with Puttygen form .pem to .pkk format. And tested station. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/14.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/15.png?raw=true)<br>
5. Then I created snapshot of my instance. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/16.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/17.png?raw=true)<br>
6. Then proceeding following instructions I created new instance with two volumes: <br>
    * From snapshot I created AMI <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/18.png?raw=true)<br>
    * Then created second volume for future instance <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/19.png?raw=true)<br>
    * From AMI created instance <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/20.png?raw=true)<br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/21.png?raw=true)<br>
    * Then attached volume to instance <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/22.png?raw=true)<br>
    * With Putty connected to new instance (using discussed instructions)
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/23.png?raw=true)<br>
    * See disk <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/24.png?raw=true)<br>
    * With following instructions mounted disk D to instance for making them available to store files etc. <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/25.png?raw=true)<br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/26.png?raw=true)<br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/27.png?raw=true)<br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/28.png?raw=true)<br>
7. Then I launched one more (third) instance. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/29.png?raw=true)<br>
8.  Then I detached disk D from second instance and attached to third one. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/30.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/31.png?raw=true)<br>
9. Then configured a WordPress instance with Amazon Lightsail link and signed in with default username and password <br>
 ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/32.png?raw=true)<br>
 ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/33.png?raw=true)<br>
 ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/34.png?raw=true)<br>
 10. Then I created bucket in S3 service and store there file.<br>
 ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/35.png?raw=true)<br>
 ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/36.png?raw=true)<br>
 ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/37.png?raw=true)<br>
 Also tried to do it with CLI<br>
 ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/38.png?raw=true)<br>
 ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/39.png?raw=true)<br>
 ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/40.png?raw=true)<br>
11. Next I created Docker Containers on Amazon Elastic Container Service (Amazon ECS) and run sample App on it, using following instructions: <br>
    * Created Task definition with json script <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/41.png?raw=true)<br>
    * Then cluster with default settings <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/42.png?raw=true)<br>
    * In bucket I created service <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/43.png?raw=true)<br>
    * then using public IP we can connect to our WEB App <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/44.png?raw=true)<br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m2/task2.2/images/45.png?raw=true)<br>
12. Then I created my personal WEB Site. You can open it with following link <br>
