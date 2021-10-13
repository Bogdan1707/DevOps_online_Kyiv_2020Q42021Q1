def call(){
    sh 'sudo zip build-$BUILD_NUMBER-on-docker-version-$DOCKER_VERSION'
    echo 'Archived successfully'
}