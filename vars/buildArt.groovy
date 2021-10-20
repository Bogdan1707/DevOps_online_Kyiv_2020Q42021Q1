def call() {
    sh 'sudo docker build -t $BUILD_NUMBER-on-docker-version-$DOCKER_VERSION -f Dockerfile .'
}