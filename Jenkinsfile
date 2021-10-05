pipeline {
    agent { label '34.125.200.106' }
    environment {
        DOCKER_VERSION = sh(script: 'docker version --format '{{.Server.Version}}'', , returnStdout: true).trim() 
    }
    stages {
        stage('Test') {
            steps {
                sh 'sudo docker build -t build-$BUILD_NUMBER-on-docker-version-$DOCKER_VERSION -f Dockerfile .'
            }
        }
    }
}