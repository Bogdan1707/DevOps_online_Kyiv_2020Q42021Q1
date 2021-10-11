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
                    scmSkip(deleteBuild: true, skipPattern: 'SKIP_CI')
                }
            }
        stage('Build') {
            steps {
                sh 'sudo docker build -t build-$BUILD_NUMBER-on-docker-version-$DOCKER_VERSION -f Dockerfile .'
            }
        }
        stage('Delivery') {
            steps {
                sudo zip target/main-demo-app-${OWNER}-${BUILD_NUMBER}.zip target/*.jar
                archiveArtifacts artifacts: 'target/*.zip', fingerprint: true
                echo 'Archived successful'
            }
        }
    }
}