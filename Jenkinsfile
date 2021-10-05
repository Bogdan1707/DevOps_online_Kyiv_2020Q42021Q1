pipeline {
    agent { label '34.125.200.106' }
    environment {
        DOCKER_VERSION = sh(
            returnStdout: true,
            script: 'sudo docker version --format "{{.Server.Version}}"'
            )
    }
    
    stages {
        stage('Checkout') {
                steps {
                    scmSkip(deleteBuild: true, skipPattern:'.*\\[ci skip\\].*')
                }
            }
        stage('Build') {
            steps {
                sh 'sudo docker build -t build-$BUILD_NUMBER-on-docker-version-$DOCKER_VERSION -f Dockerfile .'
            }
        }
        stage('Delivery') {
            steps {
                zip zipFile: '/home/bbf236579/workspace/pipeline1/builds/build_$BUILD_NUMBER.zip', archive: true, dir: '/home/bbf236579/workspace/pipeline1/'
            }
        }
    }
}