pipeline{
    environment {
        registry = "jananir2205/mywebapp"
        registryCredential = 'Docker-Cred'
        dockerImage = ' '
    }
    agent any 
    stages {
        stage('Cloning our Git'){
            steps {
                git 'https://github.com/JananiR2205/Project1-Docker-Jenkins-Pipeline.git'
            }
        }
        stage('Building our image'){
            steps {
                script{
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage('Deploy our image'){
            steps{
                script{
                docker.withRegistry('', registryCredential){
                    dockerImage.push() }
                }
            }
        }
        stage('Cleaning up') { 
            steps { 
                sh "docker rmi $registry:$BUILD_NUMBER"
            }
        } 
    }
}
