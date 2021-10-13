def call(){
    sh 'sudo zip build-$BUILD_NUMBER-on-docker-version-$DOCKER_VERSION.zip target/*.jar'
    archiveArtifacts artifacts: 'target/*.zip', fingerprint: true
    echo 'Archived successful'
}