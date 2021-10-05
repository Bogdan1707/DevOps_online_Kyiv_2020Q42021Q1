pipeline {
    agent { dockerfile true }

    stages {
        stage('Test') {
            steps {
                sh 'sudo docker build -f Dockerfile .'
            }
        }
    }
}