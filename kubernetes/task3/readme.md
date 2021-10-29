# Task 3
### Recommendations
* Find an app wich requires some type of persistance: Suggestions:Blog, Task Manager, Address database... Deploy this on the cluster using persisntant storage
* Specify the PV/PVC size to be 10 Gi or less

### Output Solution
Here I deployed a Wordpress service with MySQL database, that is stored on Persistent Volume. Cluster is on private DNS server. <br> Don't forget to set up cluster and ingress (**tls-ingress.yaml** is an example of ingress config).

### Steps
1. Copy deployment file

```
curl -LO https://k8s.io/examples/application/wordpress/mysql-deployment.yaml
curl -LO https://k8s.io/examples/application/wordpress/wordpress-deployment.yaml
```
Don't forget to add correct **namespace: your_project_ns** in all deployments

2. Create kustomization.yaml file. <br>

```
cat << EOF >./kustomization.yaml
secretGenerator:
- name: mysql-pass
  namespace: <your_project_ns>
  literals:
  - password=YOUR_PASSWORD
resources:
  - mysql-deployment.yaml
  - wordpress-deployment.yaml
EOF
```
Don't forget to replace YOUR_PASSWORD with your password value

3. Apply config
```
kubectl apply -k ./
```

4. Check secret
```
kubectl get secrets
NAME                    TYPE                                  DATA   AGE
default-token-lsr77     kubernetes.io/service-account-token   3      2d
mysql-pass-b828hcmmdd   Opaque                                1      23h
tls-fortune-ingress     kubernetes.io/tls                     2      2d
tls-wp-ingress          kubernetes.io/tls                     2      23h
```

5. Check Persistent Volume Claim
```
kubectl get pvc
NAME             STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS     AGE
mysql-pv-claim   Bound    pvc-8a790fc5-86af-4e53-87ee-6415f94d2289   10Gi       RWO            hcloud-volumes   23h
wp-pv-claim      Bound    pvc-d9b1b77d-b6bf-48b7-8160-0b4661725ee3   10Gi       RWO            hcloud-volumes   23h
```

6. Check pods
```
kubectl get pods
NAME                                  READY   STATUS    RESTARTS   AGE
fortune-deployment-5498ff7c4d-5cg8q   1/1     Running   0          2d
fortune-deployment-5498ff7c4d-b7d5x   1/1     Running   0          2d
wordpress-6cbd876bfb-8xc72            1/1     Running   0          23h
wordpress-mysql-65596f6fcd-svtsq      1/1     Running   0          23h
```

7. Check WordPress in Browser. <br>
<https://bohdan-wp.kubelab.spainip.es/wp-admin/> <br>
![](1.png) <br>
