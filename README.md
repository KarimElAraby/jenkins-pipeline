# Lab: Setting up Jenkins with Docker and GitHub Integration
In this lab, we will set up Jenkins as a Docker container, configure it, create a pipeline, and integrate it with GitHub.

## Lab Steps

### Step 1: Install and Run Jenkins as a Docker Container

1- Open your terminal or command prompt.

2- Run the following command to pull the Jenkins Docker image and start the container

![Screenshot from 2024-05-01 02-33-00](https://github.com/KarimElAraby/jenkins-pipeline/assets/137705973/27f05b82-fdcf-4009-9a6b-5dcd05c0b7c6)

This command starts the Jenkins container, maps the container port 8080 to the host port 8080, and creates a persistent volume named jenkins_data to store Jenkins data.

### Step 2: Access Jenkins and Configure

1- Open your browser and go to http://localhost:8080. You should see the Jenkins setup wizard.

2-Retrieve the Jenkins initial admin password by running the following command in your terminal or command prompt:

docker exec -it <container_id> cat /var/jenkins_home/secrets/initialAdminPassword

3- Replace <container_id> with the ID or name of your Jenkins container.

4- Copy the password and paste it into the Jenkins setup wizard.

5- Follow the on-screen instructions to complete the Jenkins setup, including creating an admin user and installing necessary plugins like Git.

![Screenshot from 2024-05-01 02-33-56](https://github.com/KarimElAraby/jenkins-pipeline/assets/137705973/9cf202d8-f745-46a2-a6f5-424463028041)

### Step 3: Create a Pipeline

1- Once the Jenkins setup is complete, click on "New Item" to create a new pipeline.

2- Give your pipeline a name and select the "Pipeline" type

![Screenshot from 2024-05-04 03-08-29](https://github.com/KarimElAraby/jenkins-pipeline/assets/137705973/736b2617-8c61-4fef-ab5d-cac91219e1cb)

3- Under "Build Triggers", select the "GitHub hook trigger for GITScm polling" option.
  This option enables Jenkins to automatically trigger the pipeline whenever there is a push to your GitHub repository.
 
  ![Screenshot from 2024-05-04 03-10-41](https://github.com/KarimElAraby/jenkins-pipeline/assets/137705973/8d705a5b-3bd9-421e-82a0-7a1fc911fbc5)


4- In the pipeline configuration, "Definition" choose 'pipeline script from SCM', "SCM" choose 'Git' , put your Repository URL & Credentials , text branch that project and Jenkinsfile in it 

![Screenshot from 2024-05-04 03-10-51](https://github.com/KarimElAraby/jenkins-pipeline/assets/137705973/623948ee-2a4a-40ee-b442-8d06296d07ea)


5- Save the pipeline configuration.

![Screenshot from 2024-05-04 03-10-58](https://github.com/KarimElAraby/jenkins-pipeline/assets/137705973/cd3d68bd-eda7-474b-b938-470fdcb1f581)
