## GCP Mentoring Program, CoreLogic 2021
### Bohdan Fedorov

#### 1. Creating nginx + tomcat service, using it as backends for external and internal LB
Next picture shows schemes of my service <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/GCP-Program/images/1.png) <br>
When users uses public IP of external LB on nginx he will reach "nginx welcome page". <br>
Using /img-bucket path it will redirect users to bucket with pictures. That will be described later. <br>
Tomcat will be not reachable from external sources by firewall rules <br>

Firstly, created 2 buckets - public11 and private11. Uploaded tomcat sample app and nginx config file private11 and cats pictures on private11 <br>
> gsutil mb -c standard -l us-east1 gs://private11 <br>
> gsutil mb -c standard -l us-east1 gs://public11 <br>
> cp default gs://private11 <br>
> cp sample gs://private11 <br>
> cp 1-cat gs://public11 <br>
> cp 2-cat gs://public11 <br>

Then set all user access to the public bucket, and created service account to access private bucket <br>
> gcloud iam service-accounts create tomcat-server --display-name=tomcat-server <br>
> gsutil iam ch serviceAccount:tomcat-server@composed-task-321415.iam.gserviceaccount.com:objectAdmin gs://private11 <br>
> gsutil iam ch allUsers:objectViewer gs://public11 <br>

Then I created firewall rules for tomcat <br>
> gcloud compute firewall-rules create tomcat-server-temp-rule \ <br>
--direction=ingress \ <br> --priority=1000 \ <br> --network=default \ <br> --action=ALLOW \ <br> --rules=tcp:8080 \ <br> --source-ranges=0.0.0.0/0 \ <br> --target-tags=tomcat<br>

Next step I created tamplate Managed Instance Group (next MIG) with tomcat sample app hosted on it. Created also startup script. <br>
Startup.sh
> nano startup.sh <br>
>#!/bin/bash <br>
>sudo apt update -y <br>
>sudo apt install tomcat8 -y <br>
>gsutil cp gs://private11/sample.war /var/lib/tomcat8/webapps/sample.war <br>

Template
>gcloud compute instance-templates create tomcat-template \ <br> --region=us-east1 \ <br> --network=default \ <br> --subnet=default \ <br> --tags=allow-health-check \ <br> --image=ubuntu-1604-xenial-v20210429 \ <br> --image-project=ubuntu-os-cloud \ <br> --metadata-from-file startup-script=startup.sh \ <br> --tags=tomcat \ <br> --service-account=tomcat-server@composed-task-321415.iam.gserviceaccount.com<br>

MIG
> gcloud compute instance-groups managed create tomcat-instance-group \ <br> --template=tomcat-template \ <br> --size=1 \ <br>--zone=us-east1-b

Then set autoscaling
> gcloud compute instance-groups managed set-autoscaling tomcat-instance-group --zone=us-east1-b --cool-down-period=60 --max-num-replicas=2 --min-num-replicas=1 --target-cpu-utilization=0.7 --mode=on

And created health-check
> gcloud compute health-checks create http hc-http-tomcat-8080 \ <br> --region=us-east1 \ <br> --port=8080
