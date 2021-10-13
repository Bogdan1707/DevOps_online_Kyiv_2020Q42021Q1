#!/usr/bin/env groovy
@library('jenkins-library')_ 


pipeline {
    agent { label '34.125.200.106' }
    environment {
        DOCKER_VERSION = sh(
            returnStdout: true,
            script: 'sudo docker version --format "{{.Server.Version}}"'
            )
    }
    
    stages {
        /*stage('Checkout') {
                steps {
                    scmSkip(deleteBuild: true, skipPattern: 'Hello')
                }
            }
        */stage('Build') {
            steps {
                build()
            }
        }
        /*stage('Delivery') {
            steps {
                sh 'sudo zip 'build_${BUILD_NUMBER}.zip''
                archiveArtifacts artifacts: 'target/*.zip', fingerprint: true
                echo 'Archived successful'
            }
        }
    */}
}