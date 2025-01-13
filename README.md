# Containerized SpringBoot Application Deployment on Kubernetes using Minikube

Containerized a SpringBoot REST API with Docker and orchestrated its deployment on Minikube Kubernetes cluster, implementing pod management, service creation, and deployment strategies for scalability.


## I have developed a Spring Boot project with a Dockerfile. From the project directory, run the commands below in the command prompt.

### minikube docker-env

This command shows the environment variables needed to connect your terminal to Minikube's Docker environment instead of your local Docker. This is important because Minikube runs in a virtual environment, and to build or use Docker images inside Minikube, you need to point your terminal to its Docker. After running the command, you can apply the settings it provides using eval $(minikube docker-env), which ensures that any Docker commands you run will interact with Minikube's Docker instead of your local Docker.

### docker build -t kubernetes-springboot-app-image:1.0.0 .

This command, docker build -t kubernetes-springboot-app-image:1.0.0 ., builds a Docker image for your Spring Boot application. The -t flag assigns the name kubernetes-springboot-app-image and version 1.0.0 to the image, making it easy to identify later. The . tells Docker to use the current directory as the location where it should look for the Dockerfile and other necessary files to create the image. After running this command, you’ll have a Docker image that can be used for deploying your application, for example, on Kubernetes.
