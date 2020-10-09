# sdia
This is the integration of the SDIA services as docker conatiners. All components of this architecture are build as docker containers. 

## Run 

### Docker Stack

To run the engine using docker stack use [docker-compose.yaml](https://github.com/qcdis-sdia/sdia/blob/main/docker-compose.yml)
```
sudo docker stack deploy sdia -c docker-compose.yml
```

### Kubernetes 

To run the engine on a kubernetes cluster use the resouces at the [k8s folder](https://github.com/qcdis-sdia/sdia/tree/main/k8s)
To deploy go to the [k8s folder](https://github.com/qcdis-sdia/sdia/tree/main/k8s) and run the following:
Create the namespace 
```
kubectl create -f namespace/sdia-namespace.yaml
```

Create the databases
```
kubectl apply -f namespace/sdia-namespace.yaml
```

Create the sdia services 
```
kubectl apply -f .
```







