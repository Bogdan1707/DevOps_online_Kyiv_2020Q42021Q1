pipeline {
    agent { dockerfile true }

    stages {
        stage('Test') {
            steps {
                sh 'sudo docker build -t a44a735ccaddf56ccb1a5b39aa60ba43ef64c87e -f Dockerfile .'
            }
        }
    }
}