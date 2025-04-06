# Containerized SpringBoot Application Deployment on Kubernetes using Minikube

### minikube start --driver=docker 

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/79f6719f199f4bc9c27a89e765491225589effc8/pictures/Picture_01.jpg)

### minikube status

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_02.jpg)

### kubectl cluster-info

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_03.jpg)

### kubectl get node

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_04.jpg)

### minikube docker-env

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_05.jpg)

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_06.jpg)

### docker images

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_07.jpg)

### docker build -t kubernetes-app:1.0 .

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_08.jpg)

### docker images

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_09.jpg)

### kubectl create deployment kubernetes-app-deployment --image=kubernetes-app:1.0 --port=8080

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_10.jpg)

### kubectl get deployment

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_11.jpg)

### kubectl describe deployment kubernetes-app-deployment

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_12.jpg)

### kubectl get pods

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_13.jpg)

### kubectl logs kubernetes-app-deployment-bbffb944c-z6zbp

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_14.jpg)

### kubectl expose deployment kubernetes-app-deployment --type=NodePort

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_15.jpg)

### kubectl get service

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_16.jpg)

### minikube service kubernetes-app-deployment --url

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_17.jpg)

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_18.jpg)

### minikube dashboard

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_19.jpg)

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_20.jpg)

### kubectl delete service kubernetes-app-deployment

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_21.jpg)

### kubectl delete deployment kubernetes-app-deployment

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_22.jpg)

### minikube stop

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_23.jpg)

### minikube delete 

![image alt](https://github.com/Sathish-Kumar-E/kubernetes-app/blob/763cc5e5f22654c3e086fbf7f90bb94115f35f00/pictures/Picture_24.jpg)
