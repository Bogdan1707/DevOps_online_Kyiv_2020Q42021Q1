# EPAM University Programs
# DevOps external course
## Module 3 Database Administration
### Task 3.1

1. Firstly, I downloaded and installed MySQL server. <br>
Then I had to choose what subject area my database would consist in.
I have chosen it's E-Shop.
2. There is my database schema: <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/1.png?raw=true)<br>
3. Then I created database "eshop" with four tables: "sales", "clients", "goods" and "offers". <br>
![image2](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/2.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/3.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/4.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/5.png?raw=true)<br>
4. Next I filled in tables with some values. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/6.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/7.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/8.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/9.png?raw=true)<br>
5. Some SQL queries below <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/10.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/11.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/12.png?raw=true)<br>
6. Next I created 2 new users with different privileges - 'Viewer' user, and 'creator DB' user. <br> Previously I had only 'root' user. <br>
I've done it in the following way: <br>
    * I created roles <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/13.png?raw=true)<br>
    * Then I added privileges to roles<br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/14.png?raw=true)<br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/15.png?raw=true)<br>
    * Then I created users <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/16.png?raw=true)<br>
    * Next, I applied roles to users <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/17.png?raw=true)<br>
    * We can see now details about both users <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/18.png?raw=true)<br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/19.png?raw=true)<br>
    * Then I activated roles for users <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/20.png?raw=true)<br>
    * Changed password for users and login with new user, for instance 'bohdan_guest' <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/21.png?raw=true)<br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/22.png?raw=true)<br>
    * Now we can see that 'bohdan_guest' can't create new DB, only see existed, and 'bohdan_creator' can only create new DB, but has no access to view existed DBs. <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/23.png?raw=true)<br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/24.png?raw=true)<br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/25.png?raw=true)<br>
7. Then I made backup of my DB with mysqldump tool <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/26.png?raw=true)<br>
8. Next I deleted one table in DB <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/27.png?raw=true)<br>
9. Then I restored backup and saw, that deleted DB tables is still existing in backup version of my DB. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/28.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/29.png?raw=true)<br>
10. Next step was to transfer my local DB to RDS AWS service. <br>
    * I created in RDS new DB and managed the public connection. <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/30.png?raw=true)<br>
    * Then I transferred local DB to RDS with mysqldump <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/31.png?raw=true)<br>
    * Next I connected to RDS DB with MySQL Workbench and executed some queries to get sure, that everything transferred successfully <br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/32.png?raw=true)<br>
    ![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/33.png?raw=true)<br>
11. The last step I done was creating Amazon DynamoDB table, entering and executing some queries, using DynamoDB tools. <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/34.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/35.png?raw=true)<br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m3/task3.1/images/36.png?raw=true)<br>
