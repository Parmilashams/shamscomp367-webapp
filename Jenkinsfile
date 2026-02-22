pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                bat 'mvn -B clean package'
            }
        }

        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'target/*.war', fingerprint: true
            }
        }

    }
}