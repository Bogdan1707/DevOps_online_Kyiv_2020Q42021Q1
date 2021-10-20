# Jenkins Task 1
This task covered main functionality of Jenkins, using declarative pipeline for artifacts building. <br>

**Working principle** <br>
On every push to github repository Jenkins master reacts and downloads files from repository, reads Jenkinsfile and according it send request to node for building artifacts

**What was done** <br>
* connect static slave node
* Create declarative job
* add parameter environment
* trigger on push and pr
* skip building if the commit message is "SKIP_CI"
* create a zip file with suffix $BRANCH_NAME and store it like artifact and build_number
* in parallel ping 3 different servers and if ping failed - stop tdhe job

Every function was replaced to **Shared Library** (**vars** folder in repo)

# Jenkins Task 2
This task covered principles of using script console in Jenkins

**What was done** <br>
* Setup system message
* setup global admin email address
* setup smtp server
* setup slack
* setup github
* Create three folders `/folder1`, `/folder1/folder2` and `folder3`
* for `folder1` configure your shared library
* create credentials `USERNAME` and `PASSWORD`
* inside folder3 create test-job with build permissions for `poweruser`

Scrips are divided and located in **groovy scripts** folder
