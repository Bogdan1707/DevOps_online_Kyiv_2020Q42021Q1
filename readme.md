# Module 1 DevOps Introduction
# Task 1.1
# Progress Report
### Executed by Bohdan Fedorov (bogdanfedorov410@gmail.com)
### Repository URL https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1
In that task I have made the following steps: <br>

1. I've updated existed GIT on my workstation. <br>
![GIT](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/master/imagesf/1.png)
2. Then I created on my GitHub account new Repository "DevOps_online_Kyiv_2020Q42021Q1". In that repo I created  structure with modules, that consists of different tasks, every module has their own tasks. This Module 1 has only Task 1.1, Module 2 will have Task 1.1 , 1.2, etc. <br>
![GIT](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/master/imagesf/2.png)
3. With command "git branch branch-name" I created 4 branches:
    * images
    * styles
    * master
    * develop <br>
![GIT](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/master/imagesf/3.png)
4. After creating branch "develop" and checkout on it I've created there index.html
empty file and committed it. <br>
![GIT](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/master/imagesf/4.png)
5. Next steps have been made in new "images" branch:
    * Created branch and checkout on it <br>
    ![GIT](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/master/imagesf/5.png)
    * Added "imagesf" folder with some images inside it (there are all images for readme.md file) and committed with "git add" --> "git commit" commands <br>
    ![GIT](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/master/imagesf/6.png) <br>
    ![GIT](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/master/imagesf/7.png)
    * Added some images1 and images2 sources inside it and committed in the same way. <br>
    ![GIT](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/master/imagesf/8.png)
6. Then I checkouted on "styles" branch and made following steps:
    * Created "stylesf" folder with style file inside it and committed changes <br>
    ![GIT](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/master/imagesf/9.png)
    * Changes with some info my index.html file and committed changes <br>
    ![GIT](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/master/imagesf/10.png)
6. Then I switched to develop branch and made following steps:
    * Firstly, I merged "images" branch into "develop" <br>
    ![GIT](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/master/imagesf/11.png)
    * Then I tried to merge "styles" branch "into develop" but I had there conflict in index.html. There were those symbols I must have deleted:
        * <<<<<<< HEAD
        * ======= <br>
        ![GIT](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/master/imagesf/12.png)
    * After resolving that conflict I successfully committed changes and merged "styles" branch "into develop" <br>
    ![GIT](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/master/imagesf/13.png)
7. Next I switched to master branch and merged "develop" into master <br>
![GIT](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/master/imagesf/14.png)
8. Then I used following commands to inspect my repository:
    * git log: I saw all my commits and merges <br>
    ![GIT](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/master/imagesf/15.png)
    * git log --no-merges: I saw only commits inside different branches, but without merges <br>
    ![GIT](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/master/imagesf/16.png)
9. Then I pushed all changes to my GitHub repository
![GIT](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/master/imagesf/17.png)

#### All my work you could see, joining me with invite link (except AndriiKostromytskyi, I've sent You invitation): https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/invitations <br> <br>

## What is DevOps? <br>
DevOps is work methodology, that combines Software development (DEV), Operation (Ops) and sometimes SW Testing. That methodology is intended for effective create and upgrade software. <br> Generally, DEvOps is created for better Development and Operation teams collaboration, for optimizing release time and upgrade process.<br>
The main goal of DevOps engineer is to achieve coherence in development and release processes with different tools, that help to organize that processes in general team.  
