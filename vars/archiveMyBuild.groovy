def call(){
    sh 'sudo zip pipeline2/master/build-${BUILD_NUMBER}-on-docker-version-$DOCKER_VERSION'
    archiveArtifacts artifacts: 'pipeline2/master/*.zip', fingerprint: true
    echo 'Archived successfully'
}