pipeline {
    agent any

    environment {
        IMAGE_NAME = 'parmilashams/shamscomp367-webapp'
        DOCKER_CMD = '"C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe"'
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Parmilashams/shamscomp367-webapp.git'
            }
        }

        stage('Build Maven') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    bat '%DOCKER_CMD% login -u %USER% --password %PASS%'
                }
            }
        }

        stage('Docker Build') {
            steps {
                bat '%DOCKER_CMD% build -t %IMAGE_NAME% .'
            }
        }

        stage('Docker Push') {
            steps {
                bat '%DOCKER_CMD% push %IMAGE_NAME%'
            }
        }
    }
}
