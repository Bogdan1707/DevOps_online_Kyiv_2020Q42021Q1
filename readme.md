# Jenkins Task 1
This task covered main functionality of Jenkins, using declarative pipeline for artifacts building. <br>

**Working principle** <br>
On every push to github repository Jenkins master reacts and downloads files from repository, reads Jenkinsfile and according it send request to node for building artifacts

**What was done** <br>
* connect static slave node
* create declarative job
* add parameter environment
* trigger on push and pr
* skip building if the commit message is "SKIP_CI"
* create a zip file with suffix $BRANCH_NAME and store it like artifact and build_number
