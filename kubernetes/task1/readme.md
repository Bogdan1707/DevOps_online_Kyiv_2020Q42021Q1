# Task 1
* Create minikube cluster
* Create Dockerfile with fortune app
* Deploy image to Docker Hub
* Create deployment and service in K8s

#### Config files
* **default** - nginx config files that contains fcgiwrap module
* **Dockerfile** - docker image config file
* **fortune.yaml** - deployment config file
* **fortune-service.yaml** - service config file
* **test.py** - app with fortune output

#### Settings
1. Start minikube cluster
```
minikube start
```
2. Create docker image and push to Docker hub
```
docker build -t <docker_hub_account>/<image_name>:<tag> .
docker push <docker_hub_account>/<image_name>:<tag>
```
3. Create deployment and service
```
kubectl create deployment -f fortune.yaml
kubectl create service -f fortune-service.yaml
```
Here is checking
```
kubectl get deployment
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
fortune-deployment   2/2     2            2           5d16h
```
```
kubectl get pods
NAME                                  READY   STATUS    RESTARTS        AGE
fortune-deployment-5498ff7c4d-g2qmp   1/1     Running   1 (5m14s ago)   5d16h
fortune-deployment-5498ff7c4d-qhcbh   1/1     Running   1 (5m14s ago)   5d16h
```
```
kubectl get service
fortune-service   NodePort       10.105.243.238   <none>        80:30001/TCP     5d16h
kubernetes        ClusterIP      10.96.0.1        <none>        443/TCP          6d19h
```
4. Also we have to check whether minikube service works
```
minikube service fortune-service
|-----------|-----------------|-------------|---------------------------|
| NAMESPACE |      NAME       | TARGET PORT |            URL            |
|-----------|-----------------|-------------|---------------------------|
| default   | fortune-service |          80 | http://192.168.49.2:30001 |
|-----------|-----------------|-------------|---------------------------|
Opening service default/fortune-service in default browser...
  http://192.168.49.2:30001
```
5. Using url we can ping the service
```
curl http://192.168.49.2:30001/cgi-bin/test.py
Text message
Must I hold a candle to my shames?
                -- William Shakespeare, "The Merchant of Venice"
```
