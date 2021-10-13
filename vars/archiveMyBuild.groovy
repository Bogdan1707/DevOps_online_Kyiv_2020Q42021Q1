def call(){
    sh 'sudo zip target/build-$BUILD_NUMBER-on-docker-version-$DOCKER_VERSION.zip target/*.jar '
    archiveArtifacts artifacts: 'target/*.zip', fingerprint: true
    echo 'Archived successfully'
}