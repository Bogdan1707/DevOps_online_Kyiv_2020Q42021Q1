# Task 2
* Connect to the cluster
* Deploy fortune deployment
* Deploy fortune service
* Deploy ingress controller
* Create namespace

#### Settings
1. Move ```config``` file to ```.kube/``` folder
2. Create namespace
```
kubectl create namespace bohdan
kubectl config set-context --current --namespace=bohdan
```
3. Deploy  app
```
kubectl apply -f fortune.yaml
kubectl apply -f fortune-service.yaml
kubectl apply -f ingress-with-cert-manager-cluster-issuer.yaml
```
4. Check results
```
kubectl get all
NAME                                      READY   STATUS    RESTARTS        AGE
pod/fortune-deployment-5498ff7c4d-g2qmp   1/1     Running   2 (6m11s ago)   5d16h
pod/fortune-deployment-5498ff7c4d-qhcbh   1/1     Running   2 (6m11s ago)   5d16h
NAME                      TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
service/fortune-lb2       LoadBalancer   10.100.23.238    <pending>     8080:30947/TCP   5d16h
service/fortune-service   NodePort       10.105.243.238   <none>        80:30001/TCP     5d16h
service/kubernetes        ClusterIP      10.96.0.1        <none>        443/TCP          6d20h
service/nginx             NodePort       10.110.23.27     <none>        8080:31531/TCP   6d
NAME                                 READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/fortune-deployment   2/2     2            2           5d16h
NAME                                            DESIRED   CURRENT   READY   AGE
replicaset.apps/fortune-deployment-5498ff7c4d   2         2         2       5d16h
```
5. Check ext DNS name, associated with fortune-service
```
curl fortune-bohdan.kubelab.spainip.es/cgi-bin/test.py
Text message
You display the wonderful traits of charm and courtesy.
```
And also, It's possible to check it in browser <br>
![](1.png) <br>
