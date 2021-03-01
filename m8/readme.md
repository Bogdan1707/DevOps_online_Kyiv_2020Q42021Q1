# EPAM University Programs
## DevOps external course
### Module 8 - Jenkins
#### Task 8.1

Here I realized simple CI/CD job, using Jenkins on VM1, Apache server on VM2 and my GitHub as a source of code. <br>
Firstly I installed Jenkins and Apache on VMs, made Jenkins accessible for Apache without password (Publish over SSH plugin used) <br>
Then I created job in Jenkins, configured setting in order to make it check every 2 minutes for the new pushes on my GitHub. <br>
I case of new push, Jenkins downloads index.html file from GitHub, builds and deploys on Apache server. <br>
Here is an example:
* I make new change in index.html file and pushed it to GitHub <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m8/images/1.png?raw=true) <br>
* In 2 minutes Jenkins scanned GitHub for new pushes and crated new build <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m8/images/2.png?raw=true) <br>
* Let's check the result
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/m8/images/3.png?raw=true) <br>
Our job has correctly deployed new version of code
