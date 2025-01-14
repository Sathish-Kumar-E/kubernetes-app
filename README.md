# Containerized SpringBoot Application Deployment on Kubernetes using Minikube

Containerized a SpringBoot REST API with Docker and orchestrated its deployment on Minikube Kubernetes cluster, implementing pod management, service creation, and deployment strategies for scalability.


From the project directory, run the commands below in the command prompt.

### minikube docker-env

This command shows the environment variables needed to connect your terminal to Minikube's Docker environment instead of your local Docker. This is important because Minikube runs in a virtual environment, and to build or use Docker images inside Minikube, you need to point your terminal to its Docker. After running the command, you can apply the settings it provides using eval $(minikube docker-env), which ensures that any Docker commands you run will interact with Minikube's Docker instead of your local Docker.

### docker build -t kubernetes-springboot-app-image:1.0.0 .

This command, docker build -t kubernetes-springboot-app-image:1.0.0 ., builds a Docker image for your Spring Boot application. The -t flag assigns the name kubernetes-springboot-app-image and version 1.0.0 to the image, making it easy to identify later. The . tells Docker to use the current directory as the location where it should look for the Dockerfile and other necessary files to create the image. After running this command, you’ll have a Docker image that can be used for deploying your application on Kubernetes.

### docker image ls

This command lists all the Docker images available on your local machine. When you run it, Docker will display a list of images along with details such as the image name, tag, image ID, creation date, and size. This is useful for checking which images you have built or pulled and managing them before running or pushing them to a registry.

### kubectl create deployment kubernetes-springboot-app-deployment --image=kubernetes-springboot-app-image:1.0.0 --port=8080

This command creates a new deployment in Kubernetes for your Spring Boot application. It uses the Docker image kubernetes-springboot-app-image:1.0.0 that you built earlier and runs the application on port 8080. The deployment is named kubernetes-springboot-app-deployment, which helps Kubernetes identify and manage it. This command ensures that your application is deployed and accessible within your Kubernetes cluster.

### kubectl get deployments

This command lists all the deployments currently running in your Kubernetes cluster. It shows details like the name of each deployment, the number of replicas (pods) desired versus the number available, and the deployment's current state. This command helps you verify that your deployment has been created successfully and is running as expected. It’s useful for monitoring and managing the deployments within your Kubernetes cluster.

### kubectl describe deployment kubernetes-springboot-app-deployment

This command provides detailed information about the specified deployment, kubernetes-springboot-app-deployment. It shows various details such as the number of replicas, the image used, the container ports, labels, and events related to the deployment. It also includes information about the current state of the deployment, any errors, and if any pods have been created or updated. This command is useful for troubleshooting and understanding the status and configuration of your deployment in Kubernetes.

### kubectl get pods

This command lists all the pods running in your Kubernetes cluster. A pod is the smallest unit in Kubernetes and can contain one or more containers. The command displays important details such as the pod name, its current status (e.g., Running, Pending), the number of restarts, and the age of the pod. This command helps you check the health and status of the pods that are part of your deployment, and it's useful for troubleshooting and monitoring the application.

### kubectl logs kubernetes-springboot-app-deployment-5b48577d89-psh8s

This command retrieves the logs for a specific pod in your Kubernetes cluster. In this case, it fetches the logs for the pod kubernetes-springboot-app-deployment-5b48577d89-psh8s, which is part of the deployment kubernetes-springboot-app-deployment. The logs provide real-time information about the pod’s activity, including error messages, application output, or debugging information. This command is useful for troubleshooting issues, monitoring the application’s behavior, or verifying that the application is functioning as expected inside the pod.

### kubectl expose deployment kubernetes-springboot-app-deployment --type=NodePort

This command exposes the kubernetes-springboot-app-deployment deployment as a service in your Kubernetes cluster using the NodePort type. By doing this, Kubernetes assigns a port on each node in the cluster (a random port, or one you can specify) to route traffic to the deployment. This makes the application accessible from outside the cluster by using the node's IP address and the assigned port. It's useful for testing and development, allowing external access to your application without needing an external load balancer or ingress controller.

### kubectl get service

This command lists all the services in your Kubernetes cluster. Services in Kubernetes are used to expose applications running on a set of pods, and they define how to access them. The command will show details like the service name, the type (e.g., ClusterIP, NodePort), the cluster IP, external IP (if available), the ports exposed, and the age of the service. It's helpful for verifying which services are running and checking their configuration, especially when troubleshooting network access to your application.

### minikube service kubernetes-springboot-app-deployment --url

This command retrieves the URL for accessing the service kubernetes-springboot-app-deployment running in your Minikube Kubernetes cluster. The --url flag provides the external address and port that you can use to access the application from your local machine. This is particularly useful when the service type is NodePort, as it allows you to quickly access your application in the browser or via API calls. The URL will typically be in the format http://<minikube-ip>:<port>.

### minikube dashboard

This command opens the Kubernetes Dashboard for your Minikube cluster in your default web browser. The Kubernetes Dashboard is a web-based UI that allows you to monitor and manage applications running in your cluster. It provides an easy way to view resources like pods, services, deployments, and namespaces, as well as to perform tasks like scaling deployments or troubleshooting issues. This command is useful for visualizing the state of your Kubernetes environment and managing resources without needing to use the command line.
