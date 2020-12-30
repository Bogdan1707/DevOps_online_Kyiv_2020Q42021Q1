# EPAM University Programs
# DevOps external course
## Module 3 Database Administration
### Task 3.1

1. Firstly, I downloaded and installed MySQL server. <br>
Then I had to choose what subject area my database would consist in.
I have chosen it's E-Shop.
2. There is my database schema: надо сделать <br>
![](1.png)<br>
3. Then I created database "eshop" with four tables: "sales", "clients", "goods" and "offers". <br>
![](2.png)<br>
![](3.png)<br>
![](4.png)<br>
4. Next I filled in tables with some values. <br>
![](5.png)<br>
![](6.png)<br>
![](7.png)<br>
![](8.png)<br>
5. Some SQL queries below <br>
![](9.png)<br>
![](10.png)<br>
![](11.png)<br>
6. Next I created 2 new users with different privileges - 'Viewer' user, and 'creator DB' user. <br> Previously I had only 'root' user. <br>
I've done it in the following way: <br>
    * I created roles <br>
    ![](12.png)<br>
    * Then I added privileges to roles<br>
    ![](13.png)<br>
    ![](14.png)<br>
    * Then I created users <br>
    ![](15.png)<br>
    * Next, I applied roles to users <br>
    ![](16.png)<br>
    * We can see now details about both users <br>
    ![](17.png)<br>
    ![](18.png)<br>
    * Then I activated roles for users <br>
    ![](19.png)<br>
    * Changed password for users and login with new user, for instance 'bohdan_guest' <br>
    ![](20.png)<br>
    ![](21.png)<br>
    * Now we can see that 'bohdan_guest' can't create new DB, only see existed, and 'bohdan_creator' can only create new DB, but has no access to view existed DBs. <br>
    ![](22.png)<br>
    ![](23.png)<br>
7. Then I made backup of my DB with mysqldump tool <br>
![](24.png)<br>
8. Next I delete one table in DB <br>
![](25.png)<br>
9. Then I restored backup and saw, that deleted DB tables is still existing in backup version of my DB. <br>
![](26.png)<br>
![](27.png)<br>
10. Next step was to transfer my local DB to RDS AWS service. <br>
    * I created in RDS new DB and managed the public connection. <br>
    ![](28.png)<br>
    * Then I transferred local DB to RDS with mysqldump <br>
    ![](29.png)<br>
    * Next I connected to RDS DB with MySQL Workbench and executed some queries to get sure, that everything transferred successfully <br>
    ![](30.png)<br>
    ![](31.png)<br>
11. The last step I done was creating Amazon DynamoDB table, entering and executing some queries, using DynamoDB tools. <br>
![](32.png)<br>
![](33.png)<br>
![](34.png)<br>
