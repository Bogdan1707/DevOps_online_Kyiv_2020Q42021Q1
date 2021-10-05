pipeline {
    agent { label '34.125.200.106' }
    enviroment {
        DOCKER_VERSION = sh 'docker version --format '{{.Server.Version}}''
    }
    stages {
        stage('Test') {
            steps {
                sh 'sudo docker build -t build-$BUILD_NUMBER-on-docker-version-$DOCKER_VERSION -f Dockerfile .'
            }
        }
    }
}