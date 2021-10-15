#!/usr/bin/env groovy
@Library('jenkins-library')_ 


pipeline {
    agent { label '34.139.216.16' }
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
                buildArt()
            }
        }
    }

    post{
        success {
            archiveMyBuild()
        }
        failure {
            echo 'Failed'
        }
        always {
            echo 'End of the job!'
            //cleanWs
        }
    }
}