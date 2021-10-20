def call(){
    sh 'sudo zip -r target/build-${BUILD_NUMBER}-on-docker-version-$DOCKER_VERSION target/'
    archiveArtifacts artifacts: 'target/*.zip', fingerprint: true
    echo 'Archived successfully'
}