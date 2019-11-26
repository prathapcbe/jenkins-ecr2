pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                script {
                       def build = docker.build("495877519973.dkr.ecr.us-west-1.amazonaws.com/jenkins-ecr:nifi-vim-git",".")
                    docker.withRegistry("https://495877519973.dkr.ecr.us-west-1.amazonaws.com/jenkins-ecr", "ecr:us-west-1:jenkins") {
                    docker.image("495877519973.dkr.ecr.us-west-1.amazonaws.com/jenkins-ecr:latest").push()
                        }
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}