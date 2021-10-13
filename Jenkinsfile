#!/usr/bin/env groovy
@Library('jenkins-library')_ 


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
                buildArt()
            }
        }
        stage('Delivery') {
            steps {
                archiveMyBuild()
                //cleanWS
            }
        }
    }
}