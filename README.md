# Containerized SpringBoot Application Deployment on Kubernetes using Minikube

### minikube start --driver=docker 

### minikube status

### kubectl cluster-info

### kubectl get node

### minikube docker-env

### docker images

### docker build -t kubernetes-app:1.0 .

### docker images

### kubectl create deployment kubernetes-app-deployment --image=kubernetes-app:1.0 --port=8080

### kubectl get deployment

### kubectl describe deployment kubernetes-app-deployment

### kubectl get pods

### kubectl logs kubernetes-app-deployment-bbffb944c-z6zbp

### kubectl expose deployment kubernetes-app-deployment --type=NodePort

### kubectl get service

### minikube service kubernetes-app-deployment --url

### minikube dashboard

### kubectl delete service kubernetes-app-deployment

### kubectl delete deployment kubernetes-app-deployment

### minikube stop

### minikube delete 
