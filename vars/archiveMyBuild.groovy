def call(){
    sh 'sudo zip build-$BUILD_NUMBER-on-docker-version-$DOCKER_VERSION.zip'
    archiveArtifacts artifacts: 'build-$BUILD_NUMBER-on-docker-version-$DOCKER_VERSION.zip', fingerprint: true
    echo 'Archived successful'
}