# Jenkins Task 1
This task covered main functionality of Jenkins, using declarative pipeline for artifacts building. <br>

**Working principle** <br>
On every push to github repository Jenkins master reacts and downloads files from repository, reads Jenkinsfile and according it send request to node for building artifacts

**What was done** <br>
* connected static slave node
* created declarative job
* added parameter environment
* trigger on push and pr
* skip building if the commit message is "SKIP_CI"
* created a zip file with suffix $BRANCH_NAME and store it like artifact and build_number
* in parallel pinged 3 different servers and if ping failed - stop tdhe job

Every function was replaced to **Shared Library** (**vars** folder in repo)

