def call() {
    sh 'sudo docker build $BUILD_NUMBER-on-docker-version-$DOCKER_VERSION -f Dockerfile .'
}