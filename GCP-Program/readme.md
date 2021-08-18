## GCP Mentoring Program, CoreLogic 2021
### Bohdan Fedorov

#### 1. Creating nginx + tomcat service, using it as backends for external and internal LB
Next picture shows schemes of my service <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/GCP-Program/images/1.png) <br>
When users uses public IP of external LB on nginx he will reach "nginx welcome page". <br>
Using /img-bucket path it will redirect users to bucket with pictures.<br> Using /demo path it will redirect to tomcat app via configured DNS. <br> Also nginx will send logt to That will be described later. <br>

Firstly, created 2 buckets - public11 and private11. Uploaded tomcat sample app and nginx config file on private11 and cats pictures on public11 <br>
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

Next created internal DNS (in US-East1) for following usage it in forwarding rules for tomcat. It will redirect from external IP to tomcat app <br>
> gcloud dns managed-zones create backend-dns \ <br>--description="DNS for backends" \ <br> --dns-name="internal.host" \ <br> --visibility=private \ <br> --networks=default <br> <br>
gcloud dns record-sets transaction start --zone=backend-dns <br><br>
gcloud dns record-sets transaction add 10.180.0.1 \ <br> --name=backend-tomcat.internal.host \ <br> --ttl=300 \ <br> --type=A \ <br> --zone=backend-dns <br><br>
gcloud dns record-sets transaction execute --zone=backend-dns

Then created backend-service, route to tomcat MIG. Also added frontend (forwarding rules). <br>
> gcloud compute backend-services create tomcat-internal-ln \ <br>--load-balancing-scheme=INTERNAL \ <br> --protocol=tcp \ <br> --region=us-east1 \ <br>--health-checks=hc-http-tomcat-8080 <br><br>
gcloud compute backend-services add-backend tomcat-internal-ln \ <br>--region=us-east1 \ <br> --instance-group=tomcat-instance-group \ <br> --instance-group-zone=us-east1-b <br><br>
gcloud compute forwarding-rules create tomcat-internal-ln-fr \ <br>--region=us-east1 \ <br> --load-balancing-scheme=INTERNAL \ <br> --network=default \ <br>--subnet=default \ <br> --address=10.142.0.2 \ <br>--ip-protocol=TCP \ <br> --ports=8080,80,443,22 \ <br>--backend-service=tomcat-internal-ln \ <br> --backend-service-region=us-east1

Then created nginx template with startup script, MIG, health check, autoscaling. <br>
Startup script for nginx servers: <br>
> #!/bin/bash <br>
>#installing nginx <br>
sudo apt update <br>
sudo apt install nginx -y <br>
sudo service  nginx enable <br>
sudo gsutil cp gs://private11/default /etc/nginx/sites-enabled/ <br>
sudo service nginx restart  <br>
> #installing td-agent for logging <br>
curl -L https://toolbelt.treasuredata.com/sh/install-ubuntu-xenial-td-agent4.sh | sh <br>
sudo usermod -aG adm td-agent <br>
sudo /usr/sbin/td-agent-gem install fluent-plugin-bigquery <br>
>cat << EOF > /etc/td-agent/td-agent.conf <br>
<"source> <br>
  @type tail <br>
  @id input_tail <br>
  <parse"> <br>
    @type nginx <br>
  </parse"> <br>
  path /var/log/nginx/access.log <br>
  pos_file /var/log/td-agent/httpd-access.log.pos <br>
  tag nginx.access <br>
</source"> <br>
<match nginx.access>
  @type bigquery_insert <br>#Authenticate with BigQuery using the VM's service account.<br>
  auth_method compute_engine <br>
  project composed-task-321415<br>
  dataset fluentd <br>
  table nginx_access <br>
  fetch_schema true <br>
  <inject"> <br>#Convert fluentd timestamp into TIMESTAMP string <br>
  time_key time <br>
  time_type string <br>
  time_format %Y-%m-%dT%H:%M:%S.%NZ <br>
</inject"> <br>
</match"> <br>
EOF

Created nginx templates <br>
> gcloud compute instance-templates create nginx-frontend-template \ <br>--network=default \ <br>--metadata-from-file startup-script=startup2.sh \ <br>--service-account=tomcat-server@composed-task-321415.iam.gserviceaccount.com \ <br>--tags=http-server,https-server \ <br>--image=ubuntu-1604-xenial-v20210429 \ <br>--image-project=ubuntu-os-cloud

Created health-check <br>
> gcloud compute health-checks create tcp nginx-frontend-healthcheck \ <br>--timeout=5 \ <br>--check-interval=10 \ <br> --unhealthy-threshold=2 \ <br>--healthy-threshold=2 \ <br>--port=80

Created and set nginx instance group <br>
> gcloud compute health-checks create tcp nginx-frontend-healthcheck \ <br>--timeout=5 \ <br>--check-interval=10 \ <br>--unhealthy-threshold=2 \ <br>--healthy-threshold=2 \ <br>--port=80
