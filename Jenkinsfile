pipeline {
    agent { label '34.125.200.106' }

    stages {
        stage('Test') {
            steps {
                sh 'sudo docker build -t $BUILD_NUMBER -f Dockerfile .'
            }
        }
    }
}