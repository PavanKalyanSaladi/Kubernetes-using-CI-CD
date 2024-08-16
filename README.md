# Kubernetes-Cluster-using-CI-CD

This a sample project to deploy an apllication into Kubernetes using CI-CD pipeline.

Pre-Requisites:
1. Cloud service (AWS/AZURE)
2. Installing the Jenkins, Ansible and Kubernetes in different servers.
3. An applcation jar file to deploy and test it.


Plan of Action:
1. In AWS, create an EC2 Instance server for each service.
2. Connect trough SSH, Install the service:
    - Jenkins - https://www.jenkins.io/doc/book/installing/linux/#debianubuntu
    - Ansible - Run the 'Installation/ansible.sh'
    - Docker - Run the 'docker.sh' and to change acces to $user 'run docker_user.sh'
3. Now create ssh-key and enable connectivity between serves.
4. After the Succeful creation of Jenkins using "jenkinsfile for reference"
	run the job by cahnging the ip's.
5. The pipeline deploys the app into pod using kubeadm and up the service.
