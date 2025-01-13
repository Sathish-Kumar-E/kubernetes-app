# Containerized SpringBoot Application Deployment on Kubernetes using Minikube

Containerized a SpringBoot REST API with Docker and orchestrated its deployment on Minikube Kubernetes cluster, implementing pod management, service creation, and deployment strategies for scalability.


## I have developed a Spring Boot project with a Dockerfile. From the project directory, run the commands below in the command prompt.

### minikube docker-env

This command shows the environment variables needed to connect your terminal to Minikube's Docker environment instead of your local Docker. This is important because Minikube runs in a virtual environment, and to build or use Docker images inside Minikube, you need to point your terminal to its Docker. After running the command, you can apply the settings it provides using eval $(minikube docker-env), which ensures that any Docker commands you run will interact with Minikube's Docker instead of your local Docker.

### docker build -t kubernetes-springboot-app-image:1.0.0 .

This command builds a Docker image for your Spring Boot application and tags it with the name kubernetes-springboot-app-image and version 1.0.0. Here's what each part does:
docker build: This is the Docker command used to build an image.
-t kubernetes-springboot-app-image:1.0.0: The -t flag tags the image with a name (kubernetes-springboot-app-image) and a version (1.0.0). This helps identify and manage the image, especially when pushing it to a registry like Docker Hub or when deploying it in Kubernetes.
.: The period represents the build context, meaning Docker will look for the Dockerfile and any other necessary files in the current directory to create the image.
In summary, this command creates a Docker image named kubernetes-springboot-app-image with the version tag 1.0.0 from the current directory. This image can then be used for deployment, for example, in a Kubernetes cluster.
