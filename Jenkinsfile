pipeline {
    agent { label '34.125.200.106' }
    environment {
        DOCKER_VERSION = sh(
            returnStdout: true,
            script: 'date'
            )
    }
    stages {
        stage('Test') {
            steps {
                sh 'sudo docker build -t build-$BUILD_NUMBER-on-docker-version-$DOCKER_VERSION -f Dockerfile .'
            }
        }
    }
}