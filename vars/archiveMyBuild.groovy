def call(){
    sh 'sudo zip -r /home/bbf236579/workspace/pipeline2_master/build-${BUILD_NUMBER}-on-docker-version-$DOCKER_VERSION /home/bbf236579/workspace/pipeline2_master/'
    archiveArtifacts artifacts: '/home/bbf236579/workspace/pipeline2_master/*.zip', fingerprint: true
    echo 'Archived successfully'
}